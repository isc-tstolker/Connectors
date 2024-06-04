Class CONNECTORSPKG.ZorgAB.Api.Client.responses.organizationsidtypesindexDELETE Extends CONNECTORSPKG.ZorgAB.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// Implement operationId : organizationsidtypesindexDELETE
/// delete /organizations/{id}/types/{index}
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
