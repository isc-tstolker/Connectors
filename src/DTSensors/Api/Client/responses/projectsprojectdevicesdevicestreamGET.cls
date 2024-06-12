Class DTSensors.Api.Client.responses.projectsprojectdevicesdevicestreamGET Extends DTSensors.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 200 content-type = text/event-stream
/// Device Event Stream Established
Property StreamEvent As DTSensors.Api.Client.model.StreamEvent;

/// Implement operationId : projectsprojectdevicesdevicestreamGET
/// get /projects/{project}/devices/{device}:stream
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="text/event-stream",httpResponse.StatusCode = "200" {
		$$$ThrowStatus($$$ERROR($$$NotImplemented))
	}
	Return sc
}

Storage Default
{
<Data name="projectsprojectdevicesdevicestreamGETDefaultData">
<Subscript>"projectsprojectdevicesdevicestreamGET"</Subscript>
<Value name="1">
<Value>StreamEvent</Value>
</Value>
</Data>
<DefaultData>projectsprojectdevicesdevicestreamGETDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
