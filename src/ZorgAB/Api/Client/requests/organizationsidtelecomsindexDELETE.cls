Class CONNECTORSPKG.ZorgAB.Api.Client.requests.organizationsidtelecomsindexDELETE Extends Ens.Request [ ProcedureBlock ]
{

Parameter METHOD = "delete";

Parameter URL = "/organizations/{id}/telecoms/{index}";

Property %Consume As %String(MAXLEN = "");

Property %ContentType As %String(MAXLEN = "");

Property %URL As %String(MAXLEN = "") [ InitialExpression = {..#URL} ];

Property pathid As %String(MAXLEN = "");

Property pathindex As %String(MAXLEN = "");

/// Load %Net.HttpRequest with this property object.
Method LoadHttpRequestObject(ByRef httpRequest As %Net.HttpRequest) As %Status
{
	Set sc = $$$OK
	Set httpRequest.ContentType = ..%ContentType
	Do httpRequest.SetHeader("accept", ..%Consume)
	Set ..%URL = $Replace(..#URL,"{id}", ..pathid)
	Set ..%URL = $Replace(..%URL,"{index}", ..pathindex)
	Quit sc
}

Storage Default
{
<Data name="organizationsidtelecomsindexDELETEDefaultData">
<Subscript>"organizationsidtelecomsindexDELETE"</Subscript>
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
<Value>pathid</Value>
</Value>
<Value name="5">
<Value>pathindex</Value>
</Value>
</Data>
<DefaultData>organizationsidtelecomsindexDELETEDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
