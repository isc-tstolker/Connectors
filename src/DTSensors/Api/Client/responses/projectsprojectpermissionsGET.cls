Class DTSensors.Api.Client.responses.projectsprojectpermissionsGET Extends DTSensors.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 200 content-type = application/json
/// Permissions held by caller.
Property ProjectPermissionList As DTSensors.Api.Client.model.ProjectPermissionList;

/// Implement operationId : projectsprojectpermissionsGET
/// get /projects/{project}/permissions
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "200" {
		Set ..ProjectPermissionList = ##class(DTSensors.Api.Client.model.ProjectPermissionList).%New()
		Set ..status = ..ProjectPermissionList.%JSONImport(httpResponse.Data)
		Return sc
	}
	Return sc
}

Storage Default
{
<Data name="projectsprojectpermissionsGETDefaultData">
<Subscript>"projectsprojectpermissionsGET"</Subscript>
<Value name="1">
<Value>ProjectPermissionList</Value>
</Value>
</Data>
<DefaultData>projectsprojectpermissionsGETDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
