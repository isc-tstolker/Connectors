Class DTSensors.Api.Client.responses.organizationsorganizationpermissionsGET Extends DTSensors.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 200 content-type = application/json
/// Permissions held by caller.
Property OrganizationPermissionList As DTSensors.Api.Client.model.OrganizationPermissionList;

/// Implement operationId : organizationsorganizationpermissionsGET
/// get /organizations/{organization}/permissions
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "200" {
		Set ..OrganizationPermissionList = ##class(DTSensors.Api.Client.model.OrganizationPermissionList).%New()
		Set ..status = ..OrganizationPermissionList.%JSONImport(httpResponse.Data)
		Return sc
	}
	Return sc
}

Storage Default
{
<Data name="organizationsorganizationpermissionsGETDefaultData">
<Subscript>"organizationsorganizationpermissionsGET"</Subscript>
<Value name="1">
<Value>OrganizationPermissionList</Value>
</Value>
</Data>
<DefaultData>organizationsorganizationpermissionsGETDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
