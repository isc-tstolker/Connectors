Class CONNECTORSPKG.Fitbit.Api.Client.responses.getTempSkinSummaryDate Extends CONNECTORSPKG.Fitbit.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// Implement operationId : getTempSkinSummaryDate
/// get /1/user/-/temp/skin/date/{date}.json
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