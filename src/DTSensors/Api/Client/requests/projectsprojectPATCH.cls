Class DTSensors.Api.Client.requests.projectsprojectPATCH Extends Ens.Request [ ProcedureBlock ]
{

Parameter METHOD = "patch";

Parameter URL = "/projects/{project}";

Property %Consume As %String(MAXLEN = "");

Property %ContentType As %String(MAXLEN = "") [ InitialExpression = "application/json" ];

Property %URL As %String(MAXLEN = "") [ InitialExpression = {..#URL} ];

/// Use this property for body content with content-type = application/json.
Property Project As DTSensors.Api.Client.model.Project;

/// The identifier of the Project.
Property pathproject As %String(MAXLEN = "");

/// Load %Net.HttpRequest with this property object.
Method LoadHttpRequestObject(ByRef httpRequest As %Net.HttpRequest) As %Status
{
	Set sc = $$$OK
	Set httpRequest.ContentType = ..%ContentType
	Do httpRequest.SetHeader("accept", ..%Consume)
	Set ..%URL = $Replace(..#URL,"{project}", ..pathproject)
	If $Piece($$$LOWER(..%ContentType),";",1) = "application/json" Return ..Project.%JSONExportToStream(httpRequest.EntityBody)
	Quit sc
}

Storage Default
{
<Data name="projectsprojectPATCHDefaultData">
<Subscript>"projectsprojectPATCH"</Subscript>
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
<Value>Project</Value>
</Value>
<Value name="5">
<Value>pathproject</Value>
</Value>
</Data>
<DefaultData>projectsprojectPATCHDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
