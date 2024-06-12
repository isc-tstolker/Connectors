Class DTSensors.Api.Client.responses.projectsprojectdevicesdevicelabelslabelDELETE Extends DTSensors.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// Implement operationId : projectsprojectdevicesdevicelabelslabelDELETE
/// delete /projects/{project}/devices/{device}/labels/{label}
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
