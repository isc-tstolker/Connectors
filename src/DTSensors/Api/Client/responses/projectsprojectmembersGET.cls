Class DTSensors.Api.Client.responses.projectsprojectmembersGET Extends DTSensors.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// Implement operationId : projectsprojectmembersGET
/// get /projects/{project}/members
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
