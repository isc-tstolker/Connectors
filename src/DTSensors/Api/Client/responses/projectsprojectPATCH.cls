Class DTSensors.Api.Client.responses.projectsprojectPATCH Extends DTSensors.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 200 content-type = application/json
/// Project created successfully.
Property Project As DTSensors.Api.Client.model.Project;

/// Implement operationId : projectsprojectPATCH
/// patch /projects/{project}
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "200" {
		Set ..Project = ##class(DTSensors.Api.Client.model.Project).%New()
		Set ..status = ..Project.%JSONImport(httpResponse.Data)
		Return sc
	}
	Return sc
}

Storage Default
{
<Data name="projectsprojectPATCHDefaultData">
<Subscript>"projectsprojectPATCH"</Subscript>
<Value name="1">
<Value>Project</Value>
</Value>
</Data>
<DefaultData>projectsprojectPATCHDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
