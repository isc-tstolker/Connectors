Class CONNECTORSPKG.ZorgAB.Api.Client.responses.worksAtidDELETE Extends CONNECTORSPKG.ZorgAB.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// Implement operationId : worksAtidDELETE
/// delete /worksAt/{id}
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
