Class ZorgAB.Api.Client.responses.organizationsidnamesPOST Extends ZorgAB.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 201 content-type = application/json
/// Status 201
Property OrganizationName As ZorgAB.Api.Client.model.OrganizationName;

/// Implement operationId : organizationsidnamesPOST
/// post /organizations/{id}/names
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "201" {
		Set ..OrganizationName = ##class(ZorgAB.Api.Client.model.OrganizationName).%New()
		Set ..status = ..OrganizationName.%JSONImport(httpResponse.Data)
		Return sc
	}
	Return sc
}

Storage Default
{
<Data name="organizationsidnamesPOSTDefaultData">
<Subscript>"organizationsidnamesPOST"</Subscript>
<Value name="1">
<Value>OrganizationName</Value>
</Value>
</Data>
<DefaultData>organizationsidnamesPOSTDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
