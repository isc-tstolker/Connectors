Class CONNECTORSPKG.VektisAGB.Api.Client.requests.ReferentiegegevensBekend Extends Ens.Request [ ProcedureBlock ]
{

Parameter METHOD = "get";

Parameter URL = "/v2/adres/correspondentie/{postcode}/{huisnummer}";

Property %Consume As %String(MAXLEN = "");

Property %ContentType As %String(MAXLEN = "");

Property %URL As %String(MAXLEN = "") [ InitialExpression = {..#URL} ];

Property pathhuisnummer As %String(MAXLEN = "");

Property pathpostcode As %String(MAXLEN = "");

/// Load %Net.HttpRequest with this property object.
Method LoadHttpRequestObject(ByRef httpRequest As %Net.HttpRequest) As %Status
{
	Set sc = $$$OK
	Set httpRequest.ContentType = ..%ContentType
	Do httpRequest.SetHeader("accept", ..%Consume)
	Set ..%URL = $Replace(..#URL,"{postcode}", ..pathpostcode)
	Set ..%URL = $Replace(..%URL,"{huisnummer}", ..pathhuisnummer)
	Quit sc
}

Storage Default
{
<Data name="ReferentiegegevensBekendDefaultData">
<Subscript>"ReferentiegegevensBekend"</Subscript>
<Value name="1">
<Value>%Consume</Value>
</Value>
<Value name="2">
<Value>%ContentType</Value>
</Value>
<Value name="3">
<Value>%URL</Value>
</Value>
<Value name="4">
<Value>pathhuisnummer</Value>
</Value>
<Value name="5">
<Value>pathpostcode</Value>
</Value>
</Data>
<DefaultData>ReferentiegegevensBekendDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
