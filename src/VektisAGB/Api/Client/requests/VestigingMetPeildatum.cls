Class VektisAGB.Api.Client.requests.VestigingMetPeildatum Extends Ens.Request [ ProcedureBlock ]
{

Parameter METHOD = "get";

Parameter URL = "/v2/vestigingen/{agbcode}/{peildatum}";

Property %Consume As %String(MAXLEN = "");

Property %ContentType As %String(MAXLEN = "");

Property %URL As %String(MAXLEN = "") [ InitialExpression = {..#URL} ];

Property pathagbcode As %String(MAXLEN = "");

Property pathpeildatum As %String(MAXLEN = "");

/// Load %Net.HttpRequest with this property object.
Method LoadHttpRequestObject(ByRef httpRequest As %Net.HttpRequest) As %Status
{
	Set sc = $$$OK
	Set httpRequest.ContentType = ..%ContentType
	Do httpRequest.SetHeader("accept", ..%Consume)
	Set ..%URL = $Replace(..#URL,"{agbcode}", ..pathagbcode)
	Set ..%URL = $Replace(..%URL,"{peildatum}", ..pathpeildatum)
	Quit sc
}

Storage Default
{
<Data name="VestigingMetPeildatumDefaultData">
<Subscript>"VestigingMetPeildatum"</Subscript>
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
<Value name="5">
<Value>pathpeildatum</Value>
</Value>
</Data>
<DefaultData>VestigingMetPeildatumDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
