Class DTSensors.Api.Client.responses.projectsprojectdevicesdeviceeventsGET Extends DTSensors.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 200 content-type = application/json
/// List of events from the given time range, or the last 24 hours if no time range was given.
Property inlineresponse2002 As DTSensors.Api.Client.model.inlineresponse2002;

/// Implement operationId : projectsprojectdevicesdeviceeventsGET
/// get /projects/{project}/devices/{device}/events
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "200" {
		Set ..inlineresponse2002 = ##class(DTSensors.Api.Client.model.inlineresponse2002).%New()
		Set ..status = ..inlineresponse2002.%JSONImport(httpResponse.Data)
		Return sc
	}
	Return sc
}

Storage Default
{
<Data name="projectsprojectdevicesdeviceeventsGETDefaultData">
<Subscript>"projectsprojectdevicesdeviceeventsGET"</Subscript>
<Value name="1">
<Value>inlineresponse2002</Value>
</Value>
</Data>
<DefaultData>projectsprojectdevicesdeviceeventsGETDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
