Class VektisAGB.Api.Client.requests.ZorgverlenerMutatiesMetZorgsoort Extends Ens.Request [ ProcedureBlock ]
{

Parameter METHOD = "get";

Parameter URL = "/v2/zorgverleners/mutaties/{zorgsoort}/{vanaf}";

Property %Consume As %String(MAXLEN = "");

Property %ContentType As %String(MAXLEN = "");

Property %URL As %String(MAXLEN = "") [ InitialExpression = {..#URL} ];

Property pathvanaf As %String(MAXLEN = "");

Property pathzorgsoort As %String(MAXLEN = "");

/// Load %Net.HttpRequest with this property object.
Method LoadHttpRequestObject(ByRef httpRequest As %Net.HttpRequest) As %Status
{
	Set sc = $$$OK
	Set httpRequest.ContentType = ..%ContentType
	Do httpRequest.SetHeader("accept", ..%Consume)
	Set ..%URL = $Replace(..#URL,"{zorgsoort}", ..pathzorgsoort)
	Set ..%URL = $Replace(..%URL,"{vanaf}", ..pathvanaf)
	Quit sc
}

Storage Default
{
<Data name="ZorgverlenerMutatiesMetZorgsoortDefaultData">
<Subscript>"ZorgverlenerMutatiesMetZorgsoort"</Subscript>
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
<Value>pathvanaf</Value>
</Value>
<Value name="5">
<Value>pathzorgsoort</Value>
</Value>
</Data>
<DefaultData>ZorgverlenerMutatiesMetZorgsoortDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
