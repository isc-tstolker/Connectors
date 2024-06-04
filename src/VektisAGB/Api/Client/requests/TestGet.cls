Class CONNECTORSPKG.VektisAGB.Api.Client.requests.TestGet Extends Ens.Request [ ProcedureBlock ]
{

Parameter METHOD = "get";

Parameter URL = "/v2/test/{number}";

Property %Consume As %String(MAXLEN = "");

Property %ContentType As %String(MAXLEN = "");

Property %URL As %String(MAXLEN = "") [ InitialExpression = {..#URL} ];

Property pathnumber As %Integer;

/// Load %Net.HttpRequest with this property object.
Method LoadHttpRequestObject(ByRef httpRequest As %Net.HttpRequest) As %Status
{
	Set sc = $$$OK
	Set httpRequest.ContentType = ..%ContentType
	Do httpRequest.SetHeader("accept", ..%Consume)
	Set ..%URL = $Replace(..#URL,"{number}", ..pathnumber)
	Quit sc
}

Storage Default
{
<Data name="TestGetDefaultData">
<Subscript>"TestGet"</Subscript>
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
<Value>pathnumber</Value>
</Value>
</Data>
<DefaultData>TestGetDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
