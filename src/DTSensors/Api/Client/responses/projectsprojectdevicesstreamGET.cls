Class DTSensors.Api.Client.responses.projectsprojectdevicesstreamGET Extends DTSensors.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 200 content-type = text/event-stream
/// Device Event Stream Established
Property StreamEvent As DTSensors.Api.Client.model.StreamEvent;

/// Implement operationId : projectsprojectdevicesstreamGET
/// get /projects/{project}/devices:stream
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
<Data name="projectsprojectdevicesstreamGETDefaultData">
<Subscript>"projectsprojectdevicesstreamGET"</Subscript>
<Value name="1">
<Value>StreamEvent</Value>
</Value>
</Data>
<DefaultData>projectsprojectdevicesstreamGETDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
