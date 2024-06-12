Include %syPrompt

/// Utility that helps find and fix defaults in a production
Class CONNECTORSPKG.Utility.Production
{

/// Find and Fix defaults helper
ClassMethod FixDefaults(fix As %String = "prompt", defaultAnswer As %String = "n") As %Integer
{
    return ..FindAndFixDefaults("CONNECTORSPKG.FoundationProduction", fix, defaultAnswer)
}

/// Find and Fix defaults for the specified production
ClassMethod FindAndFixDefaults(productionName As %String, fix As %String = "no", defaultAnswer As %String = "n") As %Integer
{
    set tProduction = ##class(Ens.Config.Production).%OpenId(productionName, , .sc)

    if $$$ISERR(sc)
    {
        write "Production '",productionName,"' cannot be found",!
        return 1
    }

    set nWarnings = 0
    set nFixes = 0

	for itemIndex = 1:1:tProduction.Items.Count()
    {
		#dim configItem as Ens.Config.Item = tProduction.Items.GetAt(itemIndex)

        write configItem.Name,":",!
        set toBeDeleted = ""

        for i = 1:1:configItem.Settings.Count()
        {
            #dim setting as Ens.Config.Setting = configItem.Settings.GetAt(i)

            // If value Hides a System Default item or redefines a class default, print

            if ..CheckHidesSystemDefaultSetting(tProduction, configItem, setting)
            {
                set nWarnings = nWarnings + 1

                if ..DoFix(fix, defaultAnswer)
                {
                    set toBeDeleted = toBeDeleted _ setting.Name _ ","
                    write ": Fixed",!
                    set nFixes = nFixes + 1
                }
                else
                {
                    write ": (not fixed)",!
                }
            }
            else
            {
                if ..CheckHidesClassDefaultValue(tProduction, configItem, setting)
                {
                    set nWarnings = nWarnings + 1

                    if ..DoFix(fix, defaultAnswer)
                    {
                        set toBeDeleted = toBeDeleted _ setting.Name _ ","
                        write ": Fixed",!
                        set nFixes = nFixes + 1
                    }
                    else
                    {
                        write ": (not fixed)",!
                    }
                }
            }
        }

        if toBeDeleted '= ""
        {
            do ..RemoveSettingsFromProduction(tProduction, configItem.Name, $EXTRACT(toBeDeleted, 1, *-1))
        }
    }

    write "Found ",nWarnings," warnings",!

    if nFixes > 0
    {
        write "Saving production with ",nFixes," removed settings: "
        do ##class(CONNECTORSPKG.Utility.DefaultSettings).SaveProduction(tProduction)
    }

    return nWarnings
}

/// Ask if the change must be fixed
ClassMethod DoFix(fix As %String, defaultAnswer As %String) As %Status
{
    set fix = $ZCONVERT($EXTRACT(fix), "l")
    if fix = "n"
    {
        return 0
    }

    if fix = "y"
    {
        return 1
    }

    // Ask if this needs to be fixed:
    set tValue = ($ZCONVERT($EXTRACT(defaultAnswer), "l") = "y")
    do ##class(%Library.Prompt).GetYesNo("Fix?", .tValue, ,$$$DisableHelpCharMask + $$$DisableBackupCharMask)

    return tValue
}

/// Remove Setting from production
ClassMethod RemoveSettingsFromProduction(tProduction As Ens.Config.Production, itemName As %String, varNames As %String)
{
    #dim configItem as Ens.Config.Item = tProduction.FindItemByConfigName(itemName, .sc, 1)

    for varIndex = 1:1:$LENGTH(varNames, ",")
    {
        set varName = $PIECE(varNames, ",", varIndex)

        for i = 1:1:configItem.Settings.Count()
        {
            #dim tSetting As Ens.Config.Setting = configItem.Settings.GetAt(i)

            if (tSetting.Name = varName)
            {
                do configItem.Settings.RemoveAt(i, .success)
                quit
            }
        }
    }
}

/// Is there a System Default Setting that this setting hides?
ClassMethod CheckHidesSystemDefaultSetting(tProduction As Ens.Config.Production, configItem As Ens.Config.Item, setting As Ens.Config.Setting) As %Boolean
{
    if setting.Target = "Host"
    {
        set class = configItem.ClassName
    }
    else
    {
        set class = $parameter(configItem.ClassName, "ADAPTER")
    }

    if '##class(Ens.Config.DefaultSettings).%GetSetting(tProduction.Name, configItem.Name, class, setting.Target, setting.Name, .value)
    {
        return 0
    }

    if (value = setting.Value)
    {
        write "Setting '",setting.Name,"'='",setting.Value,"' hides System Default Setting with the same value"
    }
    else
    {
        write "Setting '",setting.Name,"'='",setting.Value,"' hides System Default Setting with value '",value,"'"
    }

    return 1
}

/// Is there a Class default that  this setting hides?
ClassMethod CheckHidesClassDefaultValue(tProduction As Ens.Config.Production, configItem As Ens.Config.Item, setting As Ens.Config.Setting) As %Boolean
{
    if setting.Target = "Host"
    {
        set class = configItem.ClassName
    }
    else
    {
        set class = $parameter(configItem.ClassName, "ADAPTER")
    }

    set value = $classmethod(class, "EvalInitialExpression", setting.Name)

    if (value = setting.Value)
    {
        write "Setting '",setting.Name,"'='",setting.Value,"' hides Class default with the same value"
        return 1
    }

    // Hiding a Class default value is normal :)
    return 0
}

}
