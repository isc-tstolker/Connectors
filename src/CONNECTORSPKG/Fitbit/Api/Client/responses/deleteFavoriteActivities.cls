Class CONNECTORSPKG.Fitbit.Api.Client.responses.deleteFavoriteActivities Extends CONNECTORSPKG.Fitbit.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// Implement operationId : deleteFavoriteActivities
/// delete /1/user/-/activities/favorite/{activity-id}.json
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
