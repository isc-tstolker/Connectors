Class VektisAGB.Api.Client.requests.ZorgpartijZorgpartijMutaties Extends Ens.Request [ ProcedureBlock ]
{

Parameter METHOD = "get";

Parameter URL = "/v2/zorgpartijen/mutaties/{vanaf}";

Property %Consume As %String(MAXLEN = "");

Property %ContentType As %String(MAXLEN = "");

Property %URL As %String(MAXLEN = "") [ InitialExpression = {..#URL} ];

Property pathvanaf As %String(MAXLEN = "");

/// Load %Net.HttpRequest with this property object.
Method LoadHttpRequestObject(ByRef httpRequest As %Net.HttpRequest) As %Status
{
	Set sc = $$$OK
	Set httpRequest.ContentType = ..%ContentType
	Do httpRequest.SetHeader("accept", ..%Consume)
	Set ..%URL = $Replace(..#URL,"{vanaf}", ..pathvanaf)
	Quit sc
}

Storage Default
{
<Data name="ZorgpartijZorgpartijMutatiesDefaultData">
<Subscript>"ZorgpartijZorgpartijMutaties"</Subscript>
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
</Data>
<DefaultData>ZorgpartijZorgpartijMutatiesDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
