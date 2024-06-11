Include Ensemble

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

/// Export to settingsfile
ClassMethod Export() As %Status
{
    return ##class(Ens.Config.DefaultSettings).%Export(##class(%SYSTEM.Util).ManagerDirectory() _ "/Ens.Config.DefaultSettings.esd", "CONNECTORSPKG.FoundationProduction")
}

/// Export from settingsfile
ClassMethod Import() As %Status
{
    set sc = ##class(Ens.Config.DefaultSettings).%Import("/home/irisowner/systemdefaults/Ens.Config.DefaultSettings.esd", .count, .idsimported)
    
    write "Imported ",count," settings",!

    return sc
}

/// Get settings from production helper
ClassMethod SettingsFromProduction(removeFromProduction As %Boolean = 0, updateSettings As %Boolean = 1) As %Status
{
    return ..GetSettingsFromProduction("CONNECTORSPKG.FoundationProduction", "*:HTTPServer,SSLConfig;GenericHTTPOperation.Operation:HttpMethod,AcceptHeader,ContentType,URL,AuthorizationType,Credentials,CustomAuthorizationHeader,AlertOnError,ReplyCodeActions", removeFromProduction, updateSettings)
}

/// Move settings into production helper
ClassMethod SettingsToProduction(removeDefaultsetting As %Boolean = 0, updateProduction As %Boolean = 1) As %Status
{
    return ..MergeSettingsIntoProduction("CONNECTORSPKG.FoundationProduction", removeDefaultsetting, updateProduction)
}

/// Validate Default settings for explicit productions and issue warnings for issues
/// Return the number of warnings found
ClassMethod Validate() As %Integer
{
    set nWarnings = 0
    // Get all System Default Settings
    set result = ##class(%SQL.Statement).%ExecDirect(, "SELECT ID FROM Ens_Config.DefaultSettings WHERE PRODUCTIONNAME <> '*'")

    if result.%SQLCODE < 0
    {
        throw ##class(%Exception.SQL).CreateFromSQLCODE(result.%SQLCODE, result.%Message)
    }

    while result.%Next() // For each row
    {
        set nWarnings = nWarnings + ..ValidateSetting(##class(Ens.Config.DefaultSettings).%OpenId(result.%Get("ID")))
    }

    write "Found ",nWarnings," warnings"
    return nWarnings
}

/// Description
ClassMethod ValidateSetting(defaultSetting As Ens.Config.DefaultSettings) As %Integer
{
    set tProduction = ##class(Ens.Config.Production).%OpenId(defaultSetting.ProductionName, , .sc)

    if $$$ISERR(sc)
    {
        write "Production '",defaultSetting.ProductionName,"' cannot be found",!
        return 1
    }

    set nWarnings = 0

    if defaultSetting.ItemName '= "*" // Voor settings met een expliciete ItemName
    {
        #dim configItem as Ens.Config.Item = tProduction.FindItemByConfigName(defaultSetting.ItemName, .sc) // Bestaat deze item?

        if $$$ISERR(sc)
        {
            write "No item found with name '",defaultSetting.ItemName,"' in production '",defaultSetting.ProductionName,"'",!
            return 1
        }

        #; Bestaat de SettingName in de betreffende Item Class?
        set target = ..DetermineTarget(configItem.ClassName, defaultSetting.SettingName) // search with current Item ClassName!

        if (target = "")
        {
            write "Setting '",defaultSetting.SettingName,"' for Item '",defaultSetting.ItemName,"' in production '",defaultSetting.ProductionName,"; No matching setting found in either Host or Adapter",!
            set nWarnings = nWarnings + 1
        }

        if (defaultSetting.HostClassName '= "*") && (defaultSetting.HostClassName '= configItem.ClassName) 
        {
            write "Host Class name '",defaultSetting.HostClassName,"' is incorrect for Item '",defaultSetting.ItemName,"' in production '",defaultSetting.ProductionName,"'; expected '",configItem.ClassName,"'",!
            set nWarnings = nWarnings + 1
        }
    }
    elseif defaultSetting.HostClassName '= "*" // Anders, indien  wel een expliciete Class:
    {
        #; Bestaat deze class?
        if '##class(%Dictionary.CompiledClass).%ExistsId(defaultSetting.HostClassName)
        {
            write "Invalid Host Class name '",defaultSetting.HostClassName,"' in production '",defaultSetting.ProductionName,"'",!
            return 1
        }

        #; Bestaat er een item met deze class in the production?
        if '..ItemWithHostClassNameExistsInProduction(tProduction, defaultSetting.HostClassName)
        {
            write "No matching Items exists for Host Class '",defaultSetting.HostClassName,"' in production '",defaultSetting.ProductionName,"'",!
            set nWarnings = nWarnings + 1
        }

        #; Bestaat de SettingName in de betreffende Class?
        set target = ..DetermineTarget(defaultSetting.HostClassName, defaultSetting.SettingName)

        if (target = "")
        {
            write "Setting '",defaultSetting.SettingName,"' for Class '",defaultSetting.HostClassName,"' in production '",defaultSetting.ProductionName,"': No matching setting found in either Host or Adapter",!
            set nWarnings = nWarnings + 1
        }
    }

    return nWarnings
}

/// Is there an Item with the specified Host Class Name in the production?
ClassMethod ItemWithHostClassNameExistsInProduction(pProduction As Ens.Config.Production, hostClassName As %String) As %Boolean
{
	for i = 1:1:pProduction.Items.Count()
    {
		#dim configItem as Ens.Config.Item = pProduction.Items.GetAt(i)

        if (configItem.ClassName = hostClassName)
        {
            return 1
        }
    }

    return 0
}

/// Get settings From Production
ClassMethod GetSettingsFromProduction(production As %String = {..ListProductions(0, $NAMESPACE)}, filter As %String = "", removeFromProduction As %Boolean = 0, updateSettings As %Boolean = 1) As %Status
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
            do ..HandleXDataSetting(textreader, tProduction, currentItemName, currentItemClass, filter, removeFromProduction, updateSettings, .tRemovedItemCount)
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
ClassMethod HandleXDataSetting(textreader As %XML.TextReader, tProduction As Ens.Config.Production, currentItemName As %String, currentItemClass As %String, filter As %String, removeFromProduction As %Boolean, updateSettings As %Boolean, ByRef tRemovedItemCount As %Integer)
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
        if updateSettings && $$$ISERR(..HandleSetting(tProduction.Name, currentItemName, currentItemClass, target, name, value))
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
	if ..FindSystemDefaulSetting(production, item, class, varName, .defaultSetting) 
	{
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
        set defaultSetting.HostClassName = "*"
        set defaultSetting.SettingName = varName
        set defaultSetting.Deployable = 1

        write "Creating '",item,":",varName," with value '",value,"'",!
    }

    set defaultSetting.SettingValue = value

	set sc =  defaultSetting.%Save()

    if $$$ISERR(sc)
    {
        write "Failed setting default setting named '",item,":",varName,"' to '",value,"': ",$SYSTEM.Status.GetErrorText(sc),!
    }

    return sc
}

/// Find System Default setting for Production, Item and Setting name
ClassMethod FindSystemDefaulSetting(productionName As %String, itemName As %String, className As %String, settingName As %String, Output defaultSetting As Ens.Config.DefaultSettings) As %Boolean
{
    set result = ##class(%SQL.Statement).%ExecDirect(, "SELECT ID FROM Ens_Config.DefaultSettings WHERE (PRODUCTIONNAME = ?) AND (ItemName = ?) AND (SettingName = ?)",
                                                         productionName, itemName, settingName)
    #dim tempSetting as Ens.Config.DefaultSettings = ""
    set defaultSetting = ""

    while result.%Next()
    {
        set id = result.%Get("ID")
        set tempSetting = ##class(Ens.Config.DefaultSettings).%OpenId(id)

        if ((tempSetting.HostClassName = "*") || (tempSetting.HostClassName = className))
        {
            set defaultSetting = tempSetting
            continue
        }

        write "Found setting with mismatching class name '",tempSetting.HostClassName,"', please fix the Host Class Name if you want to use it",!
    }

    return $ISOBJECT(defaultSetting)
}

/// Remove Setting from production
ClassMethod RemoveSettingFromProduction(tProduction As Ens.Config.Production, item As %String, target As %String, varName As %String) As %Boolean
{
    #dim configItem as Ens.Config.Item = tProduction.FindItemByConfigName(item, .sc, 1)

    if '$IsObject(configItem)
    {
        write "Failed to get item '",item,"': ",$SYSTEM.Status.GetErrorText(sc),!
        return 0
    }

	for i = 1:1:configItem.Settings.Count()
    {
		#dim tSetting As Ens.Config.Setting = configItem.Settings.GetAt(i)

		if (tSetting.Name = varName) && (tSetting.Target = target)
        {
            do configItem.Settings.RemoveAt(i, .success)
            return success
		}
	}

    return 0
}

/// Get settings From Production
ClassMethod MergeSettingsIntoProduction(production As %String = {..ListProductions(0, $NAMESPACE)}, removeDefaultsetting As %Boolean = 0, updateProduction As %Boolean = 1) As %Status
{
    write "Merge settings into production '",production _ "':",!
	set tSC = $$$OK
    set tProduction = ##class(Ens.Config.Production).%OpenId(production,,.sc)

    if $$$ISERR(sc)
    {
        write "Failed to open production '",production,"': ",$SYSTEM.Status.GetErrorText(sc),"; settings will not merged into the production",!
        return sc
    }

    // Find the current Default settings (for this / all productions)
    set result = ##class(%SQL.Statement).%ExecDirect(, "SELECT ID FROM Ens_Config.DefaultSettings WHERE (PRODUCTIONNAME IS NULL) OR (PRODUCTIONNAME = ?)", production)
    set tUpdatedItemCount = 0
    set tDeletedItemCount = 0

    while result.%Next()
    {
        #dim defaultSetting as Ens.Config.DefaultSettings = ##class(Ens.Config.DefaultSettings).%OpenId(result.%Get("ID"))

        if '$IsObject(defaultSetting)
        {
            continue
        }

        #; write "Production=",defaultSetting.ProductionName,"; Item=",defaultSetting.ItemName,"; defaultSetting.SettingName,"=",defaultSetting.SettingValue,!

        if updateProduction
        {
            if ..UpdateSettingInProduction(tProduction, defaultSetting)
            {
                set tUpdatedItemCount = tUpdatedItemCount + 1
            }
        }

        if removeDefaultsetting
        {
            set sc = ##class(Ens.Config.DefaultSettings).%DeleteId(result.%Get("ID"))        

            if $$$ISERR(sc)
            {
                write "Failed to delete System Default setting for Item ",defaultSetting.ItemName," named ",defaultSetting.SettingName,": ",$SYSTEM.Status.GetErrorText(sc),"; settings will not merged into the production",!
            }
            else
            {
                set tDeletedItemCount = tDeletedItemCount + 1
            }
        }
    }

    if tDeletedItemCount > 0
    {
        write "Deleted ",tDeletedItemCount," settings",!
    }

    if tUpdatedItemCount > 0
    {
        write "Updated ",tUpdatedItemCount," settings; now saving Production '",production,"':"
        return ..SaveProduction(tProduction)
    }

    return tSC
}

/// Create or Update setting in production
ClassMethod UpdateSettingInProduction(tProduction As Ens.Config.Production, defaultSetting As Ens.Config.DefaultSettings) As %Boolean
{
    #dim configItem as Ens.Config.Item = tProduction.FindItemByConfigName(defaultSetting.ItemName, .sc, 1)

    if '$IsObject(configItem)
    {
        write "No Production Item named '",defaultSetting.ItemName,"' found: ",$SYSTEM.Status.GetErrorText(sc),!
        return 0
    }

    set target = ..DetermineTarget(configItem.ClassName, defaultSetting.SettingName) // search with current Item ClassName!

    if (target = "")
    {
        write "Production Setting for Item=",defaultSetting.ItemName,"Setting=",defaultSetting.SettingName,": No matching setting found in either Host or Adapter",!
        return 0
    }

    #dim tSetting As Ens.Config.Setting = configItem.FindSettingByName(defaultSetting.SettingName)

    if '$ISOBJECT(tSetting)
    {
        set tSetting = ##CLASS(Ens.Config.Setting).%New()
        set tSetting.Name = defaultSetting.SettingName
        do configItem.Settings.Insert(tSetting)
        write "Created Production Setting for Item=",defaultSetting.ItemName,"; Target=",tSetting.Target,"; ",defaultSetting.SettingName,"=",defaultSetting.SettingValue,!
    }
    elseif (tSetting.Value '= defaultSetting.SettingValue) || (tSetting.Target '= target)
    {
        write "Updated Production Setting for Item=",defaultSetting.ItemName,"; Target=",tSetting.Target,"; ",defaultSetting.SettingName,"=",defaultSetting.SettingValue,!
    }
    else
    {
        write "Skipped Production Setting for Item=",defaultSetting.ItemName,"; Target=",tSetting.Target,"; Setting ",defaultSetting.SettingName," as it already exists with the same value",!
    }
    
    // We can finally set the setting
    set tSetting.Target = target
    set tSetting.Value = defaultSetting.SettingValue

    return 1
}

/// Determine Target for setting
ClassMethod DetermineTarget(className As %String, settingName As %String) As %String
{
    set target = ""

    if (className '= "*") && (className '= "")
    {
        if ..IsSettingInClass(className, settingName)
        {
            set target = "Host"
        }
        else
        {
            set adapterClass = $parameter(className, "ADAPTER")

            if (adapterClass '= "") && ..IsSettingInClass(adapterClass, settingName)
            {
                set target = "Adapter"
            }
        }
    }

    return target
}

/// Is this setting in the specified class?
ClassMethod IsSettingInClass(pClassname As %String, pSettingName As %String) As %Boolean
{
	#dim rs as %ResultSet = ##class(%ResultSet).%New()
	set rs.ClassName = pClassname
	set rs.QueryName = "EnumerateSettings"

	if rs.QueryIsValid() && $$$ISOK(rs.Execute())
    {
        while rs.Next()
        {
            if rs.Data("Name")=pSettingName
            {
                return 1
            }
        }
    }

	return 0
}

}
