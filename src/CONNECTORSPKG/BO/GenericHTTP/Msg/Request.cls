/// Generic HTTP Request 
Class CONNECTORSPKG.BO.GenericHTTP.Msg.Request Extends Ens.Request [ ProcedureBlock ]
{

/// Configure the number of parameters to process
Parameter URLParamCount = 3;

/// Url Parameter
Property UrlParam1 As %String(MAXLEN = "");

/// Url Parameter
Property UrlParam2 As %String(MAXLEN = "");

/// Url Parameter
Property UrlParam3 As %String(MAXLEN = "");

/// Configure the number of headers to process
Parameter HeaderCount = 3;

/// Additional header name 1
Property HeaderName1 As %String;

/// Additional header value
Property HeaderValue1 As %String(MAXLEN = "");

/// Additional header name 2
Property HeaderName2 As %String;

/// Additional header value
Property HeaderValue2 As %String(MAXLEN = "");

/// Additional header name 3
Property HeaderName3 As %String;

/// Additional header value
Property HeaderValue3 As %String(MAXLEN = "");

/// Body stream
Property Body As %Stream.GlobalCharacter;

/// Load %Net.HttpRequest with this property object.
Method LoadHttpRequestObject(httpRequest As %Net.HttpRequest) As %Status
{
	set sc = $$$OK

	if $ISOBJECT(..Body)
	{
		set sc = httpRequest.EntityBody.CopyFrom(..Body)
	}

	return sc
}

Storage Default
{
<Data name="Headers">
<Attribute>Headers</Attribute>
<Structure>subnode</Structure>
<Subscript>"CONNECTORSPKG.BO.GenericHTTP.Msg.Request.Headers"</Subscript>
</Data>
<Data name="RequestDefaultData">
<Subscript>"Request"</Subscript>
<Value name="1">
<Value>Method</Value>
</Value>
<Value name="2">
<Value>Url</Value>
</Value>
<Value name="3">
<Value>Accept</Value>
</Value>
<Value name="4">
<Value>ContentType</Value>
</Value>
<Value name="5">
<Value>Body</Value>
</Value>
<Value name="6">
<Value>Authorization</Value>
</Value>
<Value name="7">
<Value>UrlParam1</Value>
</Value>
<Value name="8">
<Value>UrlParam2</Value>
</Value>
<Value name="9">
<Value>UrlParam3</Value>
</Value>
<Value name="10">
<Value>UrlParam4</Value>
</Value>
<Value name="11">
<Value>UrlParam5</Value>
</Value>
<Value name="12">
<Value>Header1</Value>
</Value>
<Value name="13">
<Value>Header2</Value>
</Value>
<Value name="14">
<Value>Header3</Value>
</Value>
<Value name="15">
<Value>Header4</Value>
</Value>
<Value name="16">
<Value>Header5</Value>
</Value>
<Value name="17">
<Value>HeaderName1</Value>
</Value>
<Value name="18">
<Value>HeaderValue1</Value>
</Value>
<Value name="19">
<Value>HeaderName2</Value>
</Value>
<Value name="20">
<Value>HeaderValue2</Value>
</Value>
<Value name="21">
<Value>HeaderName3</Value>
</Value>
<Value name="22">
<Value>HeaderValue3</Value>
</Value>
<Value name="23">
<Value>HeaderName4</Value>
</Value>
<Value name="24">
<Value>HeaderValue4</Value>
</Value>
</Data>
<Data name="UrlParams">
<Attribute>UrlParams</Attribute>
<Structure>subnode</Structure>
<Subscript>"CONNECTORSPKG.BO.GenericHTTP.Msg.Request.UrlParams"</Subscript>
</Data>
<DefaultData>RequestDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
