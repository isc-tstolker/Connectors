Class DTSensors.Api.Client.responses.organizationsorganizationmembersGET Extends DTSensors.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// Implement operationId : organizationsorganizationmembersGET
/// get /organizations/{organization}/members
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
