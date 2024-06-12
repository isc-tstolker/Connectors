Class DTSensors.Api.Client.responses.projectsprojectGET Extends DTSensors.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 200 content-type = application/json
/// Got Projects details.
Property Project As DTSensors.Api.Client.model.Project;

/// Implement operationId : projectsprojectGET
/// get /projects/{project}
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
<Data name="projectsprojectGETDefaultData">
<Subscript>"projectsprojectGET"</Subscript>
<Value name="1">
<Value>Project</Value>
</Value>
</Data>
<DefaultData>projectsprojectGETDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
