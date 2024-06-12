Class DTSensors.Api.Client.responses.projectsprojectDELETE Extends DTSensors.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 400 content-type = application/json
/// The Project probably contains either Devices, Data Connectors, or Service Accounts. Make sure
/// the Project is completely empty, then try again.
Property ErrorMessage400 As DTSensors.Api.Client.model.ErrorMessage400;

/// Implement operationId : projectsprojectDELETE
/// delete /projects/{project}
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "400" {
		Set ..ErrorMessage400 = ##class(DTSensors.Api.Client.model.ErrorMessage400).%New()
		Set ..status = ..ErrorMessage400.%JSONImport(httpResponse.Data)
		Return sc
	}
	Return sc
}

Storage Default
{
<Data name="projectsprojectDELETEDefaultData">
<Subscript>"projectsprojectDELETE"</Subscript>
<Value name="1">
<Value>ErrorMessage400</Value>
</Value>
</Data>
<DefaultData>projectsprojectDELETEDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
