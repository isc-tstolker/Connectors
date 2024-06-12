Class DTSensors.Api.Client.responses.organizationsorganizationmembersmemberDELETE Extends DTSensors.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// Implement operationId : organizationsorganizationmembersmemberDELETE
/// delete /organizations/{organization}/members/{member}
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
