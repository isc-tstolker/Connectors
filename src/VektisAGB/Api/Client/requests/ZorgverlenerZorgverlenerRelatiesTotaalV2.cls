Class CONNECTORSPKG.VektisAGB.Api.Client.requests.ZorgverlenerZorgverlenerRelatiesTotaalV2 Extends Ens.Request [ ProcedureBlock ]
{

Parameter METHOD = "get";

Parameter URL = "/v2/zorgverleners/{agbcode}/relaties/totaal";

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
<Data name="ZorgverlenerZorgverlenerRelatiesTotaalV2DefaultData">
<Subscript>"ZorgverlenerZorgverlenerRelatiesTotaalV2"</Subscript>
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
<DefaultData>ZorgverlenerZorgverlenerRelatiesTotaalV2DefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
