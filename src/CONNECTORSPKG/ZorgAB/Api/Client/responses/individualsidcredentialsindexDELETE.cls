Class CONNECTORSPKG.ZorgAB.Api.Client.responses.individualsidcredentialsindexDELETE Extends CONNECTORSPKG.ZorgAB.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// Implement operationId : individualsidcredentialsindexDELETE
/// delete /individuals/{id}/credentials/{index}
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
