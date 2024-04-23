/// This class adds logic to write records to ChangeLog.DB.ChangeLog for %Persistent classes
/// Extend from %Persistent before this class, like in:
///    Class ChangeLog.DB.NameValues Extends (%Persistent, ChangeLog.DB.ChangeLogWriter)
/// That way you avoid records with only an id column being created in the table ChangeLog.DB.ChangeLogWriter
Class ChangeLog.DB.ChangeLogWriter Extends %Persistent [ Abstract, PropertyClass = ChangeLog.DB.ChangeLogPropertyParameters ]
{

/// List Properties
/// If the class extends "%JSON.Adaptor", ue the json field name
ClassMethod ListProperties() As %Status [ CodeMode = objectgenerator ]
{
    for i = 1:1:%compiledclass.Properties.Count()
    {
        #dim prop as %Dictionary.CompiledProperty = %compiledclass.Properties.GetAt(i)

        if (prop.Name '[ "%") && 'prop.Transient && (prop.Type ? 1"%Library"0.E)
        {
            #; Is field explicitly excluded?
            if prop.Parameters.GetAt("ChangeLogExclude")
            {
                continue
            }

            #; Use json name as preference
            set propName = prop.Parameters.GetAt("%JSONFIELDNAME")

            if (propName = "")
            {
                set propName = prop.Name
            }

            do %code.WriteLine(" Write """ _ propName _ "=" _ prop.Type _ """,!")
        }
    }
    
    Do %code.WriteLine(" return $$$OK")
    return $$$OK
}

/// Write the DB changelog
Trigger LogUpdate [ CodeMode = objectgenerator, Event = INSERT/UPDATE, Foreach = row/object, Time = AFTER ]
{
    do %code.WriteLine(" new changelog")
    do %code.WriteLine(" set changelog = ##class(ChangeLog.DB.ChangeLog).%New()")
    do %code.WriteLine(" set changelog.ClassName = ..%ClassName()")
    do %code.WriteLine(" set changelog.DRecordId = {ID}")
    do %code.WriteLine(" set changelog.Action = (%oper = ""UPDATE"")")
    do %code.WriteLine(" set changelog.DUsername = $UserName")
    do %code.WriteLine(" set changelog.ETimestamp = $ZDATETIME($ZTIMESTAMP, 3, 7, 7)")
    do %code.WriteLine(" if (%oper = ""UPDATE"") {")
    do %code.WriteLine("     new data")
    do %code.WriteLine("     set data = {}")

    for i = 1:1:%compiledclass.Properties.Count()
    {
        set prop = %compiledclass.Properties.GetAt(i)

        #; Is field explicitly excluded?
        if prop.Parameters.GetAt("ChangeLogExclude")
        {
            continue
        }

        set propName = prop.Parameters.GetAt("%JSONFIELDNAME")

        if (propName = "")
        {
            set propName = prop.Name
        }

        if (prop.Name '[ "%") && 'prop.Transient && (prop.Type ? 1"%Library"0.E)
        {
            do %code.WriteLine("     do data.%Set(""" _ propName _ """, {"_ prop.Name _ "*O})")
        }
    }

    do %code.WriteLine("     set changelog.OldData = data.%ToJSON()")
    do %code.WriteLine(" }")
    do %code.WriteLine(" set data = {}")

    for i = 1:1:%compiledclass.Properties.Count()
    {
        set prop = %compiledclass.Properties.GetAt(i)

        #; Is field explicitly excluded?
        if prop.Parameters.GetAt("ChangeLogExclude")
        {
            continue
        }

        set propName = prop.Parameters.GetAt("%JSONFIELDNAME")

        if (propName = "")
        {
            set propName = prop.Name
        }

        if (prop.Name '[ "%") && 'prop.Transient && (prop.Type ? 1"%Library"0.E)
        {
            do %code.WriteLine(" if {"_ prop.Name _ "*C} && '$ISOBJECT({"_ prop.Name _ "*N}) {")
            do %code.WriteLine("     do data.%Set(""" _ propName _ """, {"_ prop.Name _ "*N})")
            do %code.WriteLine(" }")
        }
    }
    do %code.WriteLine(" set changelog.NewData = data.%ToJSON()")
    do %code.WriteLine(" do changelog.%Save()")
    return $$$OK
}

/// Write delete to changelog
Trigger LogDelete [ CodeMode = objectgenerator, Event = DELETE, Foreach = row/object ]
{
    do %code.WriteLine(" new changelog")
    do %code.WriteLine(" set changelog = ##class(ChangeLog.DB.ChangeLog).%New()")
    do %code.WriteLine(" set changelog.ClassName = ..%ClassName()")
    do %code.WriteLine(" set changelog.DRecordId = {ID}")
    do %code.WriteLine(" set changelog.Action = 2")
    do %code.WriteLine(" set changelog.DUsername = $UserName")
    do %code.WriteLine(" set changelog.ETimestamp = $ZDATETIME($ZTIMESTAMP, 3, 7, 7)")
    do %code.WriteLine(" new data")
    do %code.WriteLine(" set data = {}")

    for i = 1:1:%compiledclass.Properties.Count()
    {
        set prop = %compiledclass.Properties.GetAt(i)

        #; Is field explicitly excluded?
        if prop.Parameters.GetAt("ChangeLogExclude")
        {
            continue
        }

        set propName = prop.Parameters.GetAt("%JSONFIELDNAME")

        if (propName = "")
        {
            set propName = prop.Name
        }

        if (prop.Name '[ "%") && 'prop.Transient && (prop.Type ? 1"%Library"0.E)
        {
            do %code.WriteLine(" do data.%Set(""" _ propName _ """, {"_ prop.Name _ "*O})")
        }
    }

    do %code.WriteLine(" set changelog.OldData = data.%ToJSON()")
    do %code.WriteLine(" do changelog.%Save()")
    return $$$OK
}

Storage Default
{
<Data name="ChangeLogWriterDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
</Data>
<DataLocation>^ChangeLog.DB.ChangeLogWriterD</DataLocation>
<DefaultData>ChangeLogWriterDefaultData</DefaultData>
<IdLocation>^ChangeLog.DB.ChangeLogWriterD</IdLocation>
<IndexLocation>^ChangeLog.DB.ChangeLogWriterI</IndexLocation>
<StreamLocation>^ChangeLog.DB.ChangeLogWriterS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
