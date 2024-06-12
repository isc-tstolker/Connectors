Class DTSensors.Api.Client.requests.projectsprojectdevicesbatchUpdatePOST Extends Ens.Request [ ProcedureBlock ]
{

Parameter METHOD = "post";

Parameter URL = "/projects/{project}/devices:batchUpdate";

Property %Consume As %String(MAXLEN = "");

Property %ContentType As %String(MAXLEN = "") [ InitialExpression = "application/json" ];

Property %URL As %String(MAXLEN = "") [ InitialExpression = {..#URL} ];

/// The identifier of the Project.
Property pathproject As %String(MAXLEN = "");

/// Use this property for body content with content-type = application/json.
Property projectdevicesbatchUpdatebody As DTSensors.Api.Client.model.projectdevicesbatchUpdatebody;

/// Load %Net.HttpRequest with this property object.
Method LoadHttpRequestObject(ByRef httpRequest As %Net.HttpRequest) As %Status
{
	Set sc = $$$OK
	Set httpRequest.ContentType = ..%ContentType
	Do httpRequest.SetHeader("accept", ..%Consume)
	Set ..%URL = $Replace(..#URL,"{project}", ..pathproject)
	If $Piece($$$LOWER(..%ContentType),";",1) = "application/json" Return ..projectdevicesbatchUpdatebody.%JSONExportToStream(httpRequest.EntityBody)
	Quit sc
}

Storage Default
{
<Data name="projectsprojectdevicesbatchUpdatePOSTDefaultData">
<Subscript>"projectsprojectdevicesbatchUpdatePOST"</Subscript>
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
<Value name="5">
<Value>projectdevicesbatchUpdatebody</Value>
</Value>
</Data>
<DefaultData>projectsprojectdevicesbatchUpdatePOSTDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
