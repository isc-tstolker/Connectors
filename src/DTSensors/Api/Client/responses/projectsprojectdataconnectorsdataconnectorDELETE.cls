Class DTSensors.Api.Client.responses.projectsprojectdataconnectorsdataconnectorDELETE Extends DTSensors.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// Implement operationId : projectsprojectdataconnectorsdataconnectorDELETE
/// delete /projects/{project}/dataconnectors/{dataconnector}
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	Return sc
}

Storage Default
{
<Type>%Storage.Persistent</Type>
}

}
