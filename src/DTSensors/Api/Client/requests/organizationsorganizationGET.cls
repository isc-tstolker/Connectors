Class DTSensors.Api.Client.requests.organizationsorganizationGET Extends Ens.Request [ ProcedureBlock ]
{

Parameter METHOD = "get";

Parameter URL = "/organizations/{organization}";

Property %Consume As %String(MAXLEN = "");

Property %ContentType As %String(MAXLEN = "");

Property %URL As %String(MAXLEN = "") [ InitialExpression = {..#URL} ];

/// The identifier of the Organization.
Property pathorganization As %String(MAXLEN = "");

/// Load %Net.HttpRequest with this property object.
Method LoadHttpRequestObject(ByRef httpRequest As %Net.HttpRequest) As %Status
{
	Set sc = $$$OK
	Set httpRequest.ContentType = ..%ContentType
	Do httpRequest.SetHeader("accept", ..%Consume)
	Set ..%URL = $Replace(..#URL,"{organization}", ..pathorganization)
	Quit sc
}

Storage Default
{
<Data name="organizationsorganizationGETDefaultData">
<Subscript>"organizationsorganizationGET"</Subscript>
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
<Value>pathorganization</Value>
</Value>
</Data>
<DefaultData>organizationsorganizationGETDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
