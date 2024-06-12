Class DTSensors.Api.Client.responses.projectsprojectdevicesdevicelabelslabelPATCH Extends DTSensors.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 200 content-type = application/json
/// Label updated successfully
Property Label As DTSensors.Api.Client.model.Label;

/// Implement operationId : projectsprojectdevicesdevicelabelslabelPATCH
/// patch /projects/{project}/devices/{device}/labels/{label}
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "200" {
		Set ..Label = ##class(DTSensors.Api.Client.model.Label).%New()
		Set ..status = ..Label.%JSONImport(httpResponse.Data)
		Return sc
	}
	Return sc
}

Storage Default
{
<Data name="projectsprojectdevicesdevicelabelslabelPATCHDefaultData">
<Subscript>"projectsprojectdevicesdevicelabelslabelPATCH"</Subscript>
<Value name="1">
<Value>Label</Value>
</Value>
</Data>
<DefaultData>projectsprojectdevicesdevicelabelslabelPATCHDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
