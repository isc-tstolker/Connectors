Class DTSensors.Api.Client.requests.projectsprojectmembersmemberDELETE Extends Ens.Request [ ProcedureBlock ]
{

Parameter METHOD = "delete";

Parameter URL = "/projects/{project}/members/{member}";

Property %Consume As %String(MAXLEN = "");

Property %ContentType As %String(MAXLEN = "");

Property %URL As %String(MAXLEN = "") [ InitialExpression = {..#URL} ];

/// The identifier of the Member. This will be the same as the identifier of the User or
/// Service Account the Membership represents.
Property pathmember As %String(MAXLEN = "");

/// The identifier of the Project.
Property pathproject As %String(MAXLEN = "");

/// Load %Net.HttpRequest with this property object.
Method LoadHttpRequestObject(ByRef httpRequest As %Net.HttpRequest) As %Status
{
	Set sc = $$$OK
	Set httpRequest.ContentType = ..%ContentType
	Do httpRequest.SetHeader("accept", ..%Consume)
	Set ..%URL = $Replace(..#URL,"{project}", ..pathproject)
	Set ..%URL = $Replace(..%URL,"{member}", ..pathmember)
	Quit sc
}

Storage Default
{
<Data name="projectsprojectmembersmemberDELETEDefaultData">
<Subscript>"projectsprojectmembersmemberDELETE"</Subscript>
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
<Value>pathmember</Value>
</Value>
<Value name="5">
<Value>pathproject</Value>
</Value>
</Data>
<DefaultData>projectsprojectmembersmemberDELETEDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
