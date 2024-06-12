Class DTSensors.Api.Client.responses.projectsprojectserviceaccountsserviceaccountDELETE Extends DTSensors.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// Implement operationId : projectsprojectserviceaccountsserviceaccountDELETE
/// delete /projects/{project}/serviceaccounts/{serviceaccount}
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
