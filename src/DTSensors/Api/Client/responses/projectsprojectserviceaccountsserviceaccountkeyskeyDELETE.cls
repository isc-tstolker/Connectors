Class DTSensors.Api.Client.responses.projectsprojectserviceaccountsserviceaccountkeyskeyDELETE Extends DTSensors.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// Implement operationId : projectsprojectserviceaccountsserviceaccountkeyskeyDELETE
/// delete /projects/{project}/serviceaccounts/{serviceaccount}/keys/{key}
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
