Class DTSensors.Api.Client.requests.projectsprojectDELETE Extends Ens.Request [ ProcedureBlock ]
{

Parameter METHOD = "delete";

Parameter URL = "/projects/{project}";

Property %Consume As %String(MAXLEN = "");

Property %ContentType As %String(MAXLEN = "");

Property %URL As %String(MAXLEN = "") [ InitialExpression = {..#URL} ];

/// The identifier of the Project.
Property pathproject As %String(MAXLEN = "");

/// Load %Net.HttpRequest with this property object.
Method LoadHttpRequestObject(ByRef httpRequest As %Net.HttpRequest) As %Status
{
	Set sc = $$$OK
	Set httpRequest.ContentType = ..%ContentType
	Do httpRequest.SetHeader("accept", ..%Consume)
	Set ..%URL = $Replace(..#URL,"{project}", ..pathproject)
	Quit sc
}

Storage Default
{
<Data name="projectsprojectDELETEDefaultData">
<Subscript>"projectsprojectDELETE"</Subscript>
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
<Value>pathproject</Value>
</Value>
</Data>
<DefaultData>projectsprojectDELETEDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
