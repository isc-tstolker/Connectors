Class CONNECTORSPKG.ZorgAB.Api.Client.responses.subOrganizationDELETE Extends CONNECTORSPKG.ZorgAB.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// Implement operationId : subOrganizationDELETE
/// delete /subOrganization
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
