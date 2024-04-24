/// Generic Response Class
Class CONNECTORSPKG.BO.GenericHTTP.Msg.Response Extends Ens.Response [ Inheritance = left, ProcedureBlock ]
{

Property Body As %Stream.GlobalCharacter;

Property Headers As array Of %String(MAXLEN = "");

Property HttpStatusCode As %Integer;

/// Status for parts of the response handling like JSON Parsing. 
/// This allows for returning the response body that will not be returned if the request fails.
Property Status As %Status;

/// Load properties from response
Method LoadFromResponse(httpResponse As %Net.HttpResponse) As %Status
{
	set sc = ..Body.CopyFrom(httpResponse.Data)
	set ..HttpStatusCode = httpResponse.StatusCode
	set key = ""

	for
	{
		set key = $Order(httpResponse.Headers(key), 1, headerValue)
		if key = ""
		{
			quit
		}

		do ..Headers.SetAt(headerValue, key)
	}

	return sc
}

Storage Default
{
<Data name="GenericResponseDefaultData">
<Subscript>"GenericResponse"</Subscript>
<Value name="1">
<Value>Body</Value>
</Value>
<Value name="2">
<Value>HttpStatusCode</Value>
</Value>
<Value name="3">
<Value>status</Value>
</Value>
<Value name="4">
<Value>Status</Value>
</Value>
</Data>
<Data name="Headers">
<Attribute>Headers</Attribute>
<Structure>subnode</Structure>
<Subscript>"CONNECTORSPKG.BO.GenericHTTP.Msg.Response.Headers"</Subscript>
</Data>
<DefaultData>GenericResponseDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
