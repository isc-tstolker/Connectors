Class DTSensors.Api.Client.responses.projectsprojectdevicesdevicelabelsPOST Extends DTSensors.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 409 content-type = application/json
/// Label already exists
Property ErrorMessage409 As DTSensors.Api.Client.model.ErrorMessage409;

/// http status code = 200 content-type = application/json
/// Label created successfully
Property Label As DTSensors.Api.Client.model.Label;

/// Implement operationId : projectsprojectdevicesdevicelabelsPOST
/// post /projects/{project}/devices/{device}/labels
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "200" {
		Set ..Label = ##class(DTSensors.Api.Client.model.Label).%New()
		Set ..status = ..Label.%JSONImport(httpResponse.Data)
		Return sc
	}
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "409" {
		Set ..ErrorMessage409 = ##class(DTSensors.Api.Client.model.ErrorMessage409).%New()
		Set ..status = ..ErrorMessage409.%JSONImport(httpResponse.Data)
		Return sc
	}
	Return sc
}

Storage Default
{
<Data name="projectsprojectdevicesdevicelabelsPOSTDefaultData">
<Subscript>"projectsprojectdevicesdevicelabelsPOST"</Subscript>
<Value name="1">
<Value>ErrorMessage409</Value>
</Value>
<Value name="2">
<Value>Label</Value>
</Value>
</Data>
<DefaultData>projectsprojectdevicesdevicelabelsPOSTDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
