/// Test table with name values
/// Each change must be recorded in the ChangeLog Table
Class ChangeLog.DB.NameValues Extends (%Persistent, ChangeLog.DB.ChangeLogWriter)
{

/// Name
Property name As %String;

Index nameIndex On name [ Unique ];

/// Value
Property value As %String(MAXLEN = "");

/// CreateOrUpdate
ClassMethod CreateOrUpdate(name As %String, value As %String = "") As %Status
{
    if ..nameIndexExists(name)
    {
        if (value = "")
        {
            return ..nameIndexDelete(name)
        }

        set record = ..nameIndexOpen(name)
    }
    else
    {
        set record = ..%New()
        set record.name = name
    }

    if (value = "") // Do not store!
    {
        return $$$OK        
    }

    set record.value = value

    return record.%Save()
}

Storage Default
{
<Data name="NameValuesDefaultData">
<Subscript>"NameValues"</Subscript>
<Value name="1">
<Value>name</Value>
</Value>
<Value name="2">
<Value>value</Value>
</Value>
<Value name="3">
<Value>%%CLASSNAME</Value>
</Value>
</Data>
<DataLocation>^ChangeLog.DB.NameValuesD</DataLocation>
<DefaultData>NameValuesDefaultData</DefaultData>
<IdLocation>^ChangeLog.DB.NameValuesD</IdLocation>
<IndexLocation>^ChangeLog.DB.NameValuesI</IndexLocation>
<StreamLocation>^ChangeLog.DB.NameValuesS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
