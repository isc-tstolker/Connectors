/// API Log
Class CONNECTORSPKG.DB.ApiLog Extends (%Persistent, %JSON.Adaptor)
{

/// Moment of attempted access
/// ISO 8601 formatted with UTC tijdstip e.g 2023-03-20T15:14:45.7384083Z
Property DateTime As %String(%JSONFIELDNAME = "date-time", MAXLEN = 28);

/// Method Used
Property ApiMethod As %String(%JSONFIELDNAME = "method");

/// API Endpoint that was accessed
Property ApiEndpoint As %String(%JSONFIELDNAME = "endpoint", MAXLEN = "");

/// RequestBody
Property RequestBody As %String(%JSONINCLUDE = "NONE", MAXLEN = "");

/// Log and optionally check access attempt
ClassMethod LogApiCall(method As %String, endpoint As %String, json As %DynamicObject = "")
{
    set record = ..%New()
    set record.DateTime = $ZDATETIME($ZTIMESTAMP, 3, 7, 7) // 2023-08-21T07:56:45.4661265Z
    set record.ApiMethod = method
    set record.ApiEndpoint = endpoint

    if $ISOBJECT(json)
    {
        set record.RequestBody = json.%ToJSON()
    }

    set sc = record.%Save()

    if $$$ISERR(sc)
    {
        write "Error during save of AccessLog record: ",$SYSTEM.Status.GetErrorText(sc)
    }
}

/// Get a Page of ApiLog records
ClassMethod GetPage(endpoint As %String, from As %String, to As %String, count As %Integer, Output next As %String) As %DynamicArray
{
    set (tSQL, tParams) = 0
    set tSQL = 0
    set tSQL($INCREMENT(tSQL)) = "SELECT ID, DateTime FROM CONNECTORSPKG_DB.ApiLog"
    set tSQL($INCREMENT(tSQL)) = " WHERE DateTime >= ?"
    set tParams($INCREMENT(tParams)) = from
    set tSQL($INCREMENT(tSQL)) = "   AND DateTime < ?"
    set tParams($INCREMENT(tParams)) = to

	if ($GET(endpoint) '= "")
	{
	    set tSQL($INCREMENT(tSQL)) = "   AND ApiEndpoint = ?"
        set tParams($INCREMENT(tParams)) = endpoint
	}

    set tSQL($INCREMENT(tSQL)) = " ORDER BY DateTime DESC"

    zw tSQL
    zw tParams

    set rs = ##class(%SQL.Statement).%ExecDirect(, .tSQL, tParams...)

    #dim logregels as %DynamicArray = []
    set last = ""
	set next = ""

    while rs.%Next()
    {
        w rs.%Get("ID"),!
        set next = rs.%Get("DateTime")

        // keep adding if records have the same value for AangepastOp
        if (logregels.%Size() >= count) && (next '= last)
        {
            set next = last
            quit
        }

        set last = next
		set next = ""

        #dim record as CONNECTORSPKG.DB.ApiLog = ..%OpenId(rs.%Get("ID"))

        $$$ThrowOnError(record.%JSONExportToString(.json))

        #dim logregel as %DynamicObject = ##class(%DynamicObject).%FromJSON(json)

        if record.RequestBody '= ""
        {
            set logregel."request-body" = ##class(%DynamicObject).%FromJSON(record.RequestBody)
        }

        do logregels.%Push(logregel)
    }

	return logregels
}

Storage Default
{
<Data name="ApiLogDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>DateTime</Value>
</Value>
<Value name="3">
<Value>ApiMethod</Value>
</Value>
<Value name="4">
<Value>ApiEndpoint</Value>
</Value>
<Value name="5">
<Value>RequestBody</Value>
</Value>
</Data>
<DataLocation>^CONNECTORSPKG.DB.ApiLogD</DataLocation>
<DefaultData>ApiLogDefaultData</DefaultData>
<IdLocation>^CONNECTORSPKG.DB.ApiLogD</IdLocation>
<IndexLocation>^CONNECTORSPKG.DB.ApiLogI</IndexLocation>
<StreamLocation>^CONNECTORSPKG.DB.ApiLogS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
