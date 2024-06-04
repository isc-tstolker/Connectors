Class VektisAGB.Api.Client.requests.ZorgverlenerZorgverlenerRelatiesV2 Extends Ens.Request [ ProcedureBlock ]
{

Parameter METHOD = "get";

Parameter URL = "/v2/zorgverleners/{agbcode}/relaties";

Property %Consume As %String(MAXLEN = "");

Property %ContentType As %String(MAXLEN = "");

Property %URL As %String(MAXLEN = "") [ InitialExpression = {..#URL} ];

Property pathagbcode As %String(MAXLEN = "");

/// Load %Net.HttpRequest with this property object.
Method LoadHttpRequestObject(ByRef httpRequest As %Net.HttpRequest) As %Status
{
	Set sc = $$$OK
	Set httpRequest.ContentType = ..%ContentType
	Do httpRequest.SetHeader("accept", ..%Consume)
	Set ..%URL = $Replace(..#URL,"{agbcode}", ..pathagbcode)
	Quit sc
}

Storage Default
{
<Data name="ZorgverlenerZorgverlenerRelatiesV2DefaultData">
<Subscript>"ZorgverlenerZorgverlenerRelatiesV2"</Subscript>
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
<Value>pathagbcode</Value>
</Value>
</Data>
<DefaultData>ZorgverlenerZorgverlenerRelatiesV2DefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
