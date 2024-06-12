Class DTSensors.Api.Client.responses.projectsprojectdataconnectorsdataconnectorsyncPOST Extends DTSensors.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// Implement operationId : projectsprojectdataconnectorsdataconnectorsyncPOST
/// post /projects/{project}/dataconnectors/{dataconnector}:sync
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
