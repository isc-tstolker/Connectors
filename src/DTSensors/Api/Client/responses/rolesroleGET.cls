Class DTSensors.Api.Client.responses.rolesroleGET Extends DTSensors.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 200 content-type = application/json
/// Role detail successfully returned.
Property Role As DTSensors.Api.Client.model.Role;

/// Implement operationId : rolesroleGET
/// get /roles/{role}
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "200" {
		Set ..Role = ##class(DTSensors.Api.Client.model.Role).%New()
		Set ..status = ..Role.%JSONImport(httpResponse.Data)
		Return sc
	}
	Return sc
}

Storage Default
{
<Data name="rolesroleGETDefaultData">
<Subscript>"rolesroleGET"</Subscript>
<Value name="1">
<Value>Role</Value>
</Value>
</Data>
<DefaultData>rolesroleGETDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
