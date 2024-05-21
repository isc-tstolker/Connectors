Include EnsConstants

/// Get Settings from Production and Create DefaultSettings
Class CONNECTORSPKG.Utility.DefaultSettings
{

/// List productions
ClassMethod ListProductions(print As %Boolean = 1, namespace As %String = {$NAMESPACE}) As %String
{
    new $NAMESPACE
    set $NAMESPACE = namespace
    set production = ""

    if print
    {
        write "Productions in namespace " _ namespace _ ":",!
    }

    set prdRS = ##class(%ResultSet).%New("Ens.Config.Production:ProductionStatus")
    do prdRS.Execute()

    while (prdRS.Next())
    {
        set status = prdRS.Data("Status")

        if status = "Running"
        {
            set production = prdRS.Data("Production")
        }

        if print
        {
            write prdRS.Data("Production")," (",status,")",!
        }
    }

    return production
}

/// Connectors action
ClassMethod SettingsFromProduction(removeFromProduction As %Boolean = 0) As %Status
{
    return ..GetSettingsFromProduction("CONNECTORSPKG.FoundationProduction", "*:HTTPServer,SSLConfig;CONNECTORSPKG.BO.GenericHTTP.Operation:HttpMethod,AcceptHeader,ContentType,URL,AuthorizationType,Credentials,CustomAuthorizationHeader,AlertOnError,ReplyCodeActions", removeFromProduction)
}

/// Get settings From Production
ClassMethod GetSettingsFromProduction(production As %String = {..ListProductions(0, $NAMESPACE)}, filter As %String = "", removeFromProduction As %Boolean = 0) As %Status
{
    write "Settings in production '",production _ "':",!
    set xdataId = production _ "||ProductionDefinition"
	set xdata = ##class(%Dictionary.XDataDefinition).%OpenId(xdataId, , .sc)

   	if $$$ISERR(sc)
	{
        write "Failed to open XData block '" _ xdataId,"': ",$SYSTEM.Status.GetErrorText(sc),!
		return sc
	}

    set tProduction = ##class(Ens.Config.Production).%OpenId(production,,.sc)

    if $$$ISERR(sc)
    {
        write "Failed to open production '",production,"': ",$SYSTEM.Status.GetErrorText(sc),"; settings will not be removed from the production",!
        set removeFromProduction = 0
    }

	set sc = ##class(%XML.TextReader).ParseStream(xdata.Data, .textreader)
    #dim textreader as %XML.TextReader

   	if $$$ISERR(sc)
	{
        write "Failed to parse XData block '" _xdataId,"': ",$SYSTEM.Status.GetErrorText(sc),!
		return sc
	}

    set currentItemName = ""
    set currentItemClass = ""
    #dim tRemovedItemCount as %Integer = 0
	while textreader.Read()
	{
		if (textreader.NodeType '= "element")
		{
			continue
		}

		if (textreader.LocalName = "Item")
		{
            if (textreader.MoveToAttributeName("Name"))
            {
                set currentItemName = textreader.Value
            }

            if (textreader.MoveToAttributeName("ClassName"))
            {
                set currentItemClass = textreader.Value
            }
            #; write "Found Item with Name='" _ currentItemName _ "' of class '" _ currentItemClass _ "':",!
			continue
		}

		if (textreader.LocalName = "Setting")
		{
            do ..HandleXDataSetting(textreader, tProduction, currentItemName, currentItemClass, filter, removeFromProduction, .tRemovedItemCount)
        }
	}

    if tRemovedItemCount > 0
    {
        write "Removed ",tRemovedItemCount," settings; now saving Production '",production,"':"
        return ..SaveProduction(tProduction)
    }

    return $$$OK
}

/// Hanlde setting found in the XData 
ClassMethod HandleXDataSetting(textreader As %XML.TextReader, tProduction As Ens.Config.Production, currentItemName As %String, currentItemClass As %String, filter As %String, removeFromProduction, ByRef tRemovedItemCount As %Integer)
{
    if (textreader.MoveToAttributeName("Target"))
    {
        set target = textreader.Value
    }
    if (textreader.MoveToAttributeName("Name"))
    {
        set name = textreader.Value
    }

    do textreader.Read() // Read value
    set value = textreader.Value

    #; write "Found Setting Target=",target,", name=",name,", Value=",value,!
    if ..InFilter(filter, currentItemName, currentItemClass, target, name, value)
    {
        if $$$ISERR(..HandleSetting(tProduction.Name, currentItemName, currentItemClass, target, name, value))
        {
            return
        }

        if removeFromProduction && ..RemoveSettingFromProduction(tProduction, currentItemName, target, name)
        {
            set tRemovedItemCount = tRemovedItemCount + 1
        }
    }
}

/// SaveProduction
ClassMethod SaveProduction(tProduction As Ens.Config.Production) As %Status
{
    // Save the changes we made to the production
    set sc = tProduction.%Save(1)

    if $$$ISERR(sc)
    {
        write " failed: ",$SYSTEM.Status.GetErrorText(sc),!
        return sc
    }
    write !

    // Regenerate the XData in the corresponding class
    write "Save Production XData: "
    Set sc = tProduction.SaveToClass()

    if $$$ISERR(sc)
    {
        write " failed: ",$SYSTEM.Status.GetErrorText(sc),!
        return sc
    }
    write !

    // Grab the state of the production
    set sc = ##class(Ens.Director).GetProductionStatus(.tRunningProduction, .tState)

    if $$$ISERR(sc)
    {
        write "Failed to get Production status: ",$SYSTEM.Status.GetErrorText(sc),!
        return sc
    }

    // Finally, does the production need updating?
    if (tRunningProduction = tProduction.Name) && (tState = $$$eProductionStateRunning)
    {
        // Update the running production with the new settings
        write "Update running production: "
        set sc = ##class(Ens.Director).UpdateProduction(##class(Ens.Director).GetRunningProductionUpdateTimeout())

        if $$$ISERR(sc)
        {
            write " failed: ",$SYSTEM.Status.GetErrorText(sc),!
            return sc
        }
    }

	return $$$OK
}

/// Determine if the setting is in the Filter 
ClassMethod InFilter(filter As %String, itemName As %String, class As %String, target As %String, varName As %String, value As %String) As %Boolean
{
    if filter = ""
    {
        return 1
    }

    for classIndex = 1:1:$LENGTH(filter, ";")
    {
        set classPart = $PIECE(filter, ";", classIndex)
        set configClass = $PIECE(classPart, ":", 1)

        if (configClass '= "*") && (configClass '= class)
        {
            continue
        }

        set vars = $PIECE(classPart, ":", 2)

        for varIndex = 1:1:$LENGTH(vars, ",")
        {
            if $PIECE(vars, ",", varIndex) = varName
            {
                return 1
            }
        }
    }

    return 0
}

/// Handle Setting
ClassMethod HandleSetting(production As %String, item As %String, class As %String, target As %String, varName As %String, value As %String) As %Status
{
	if ##class(Ens.Config.DefaultSettings).IdKeyExists(production, item, class, varName, .id)
	{
		set defaultSetting = ##class(Ens.Config.DefaultSettings).%OpenId(id, , .sc)

		if $$$ISERR(sc)
		{
            write "Failed to get default setting named '",item,":",varName,"': ",$SYSTEM.Status.GetErrorText(sc),!
			return sc
		}

        if defaultSetting.SettingValue = value
        {            
            write "Skipping '",item,":",varName,"' as it already exists with the same value",!
            return $$$OK
        }

        write "Updating '",item,":",varName,"' from '",defaultSetting.SettingValue,"' to '",value,"'",!
	}
    else
    {
        set defaultSetting = ##class(Ens.Config.DefaultSettings).%New()
        set defaultSetting.ProductionName = production
        set defaultSetting.ItemName = item
        set defaultSetting.HostClassName = class
        set defaultSetting.SettingName = varName
        set defaultSetting.Deployable = 1

        write "Creating '",item,":",varName,"' from '",defaultSetting.SettingValue,"' with value '",value,"'",!
    }

    set defaultSetting.SettingValue = value

	set sc =  defaultSetting.%Save()

    if $$$ISERR(sc)
    {
        write "Failed setting default setting named '",item,":",varName,"' to '",value,"': ",$SYSTEM.Status.GetErrorText(sc),!
    }

    return sc
}

/// Rmove Setting from production
ClassMethod RemoveSettingFromProduction(tProduction As Ens.Config.Production, item As %String, target As %String, varName As %String) As %Boolean
{
    #dim tItemObj as Ens.Config.Item = tProduction.FindItemByConfigName(item, .sc, 1)

    if '$IsObject(tItemObj)
    {
        write "Failed to get item '",item,"': ",$SYSTEM.Status.GetErrorText(sc),!
        return 0
    }

	for i = 1:1:tItemObj.Settings.Count()
    {
		#dim tSetting As Ens.Config.Setting = tItemObj.Settings.GetAt(i)

		if (tSetting.Name = varName) && (tSetting.Target = target)
        {
            do tItemObj.Settings.RemoveAt(i, .success)
            return success
		}
	}

    return 0
}

}
