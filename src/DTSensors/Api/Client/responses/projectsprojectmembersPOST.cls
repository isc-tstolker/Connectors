Class DTSensors.Api.Client.responses.projectsprojectmembersPOST Extends DTSensors.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 200 content-type = application/json
/// Member created successfully
Property Member As DTSensors.Api.Client.model.Member;

/// Implement operationId : projectsprojectmembersPOST
/// post /projects/{project}/members
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "200" {
		Set ..Member = ##class(DTSensors.Api.Client.model.Member).%New()
		Set ..status = ..Member.%JSONImport(httpResponse.Data)
		Return sc
	}
	Return sc
}

Storage Default
{
<Data name="projectsprojectmembersPOSTDefaultData">
<Subscript>"projectsprojectmembersPOST"</Subscript>
<Value name="1">
<Value>Member</Value>
</Value>
</Data>
<DefaultData>projectsprojectmembersPOSTDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
