Class ZorgAB.Api.Client.responses.organizationsidGET Extends ZorgAB.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 200 content-type = application/json
/// Status 200
Property Organization As ZorgAB.Api.Client.model.Organization;

/// Implement operationId : organizationsidGET
/// get /organizations/{id}
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "200" {
		Set ..Organization = ##class(ZorgAB.Api.Client.model.Organization).%New()
		Set ..status = ..Organization.%JSONImport(httpResponse.Data)
		Return sc
	}
	Return sc
}

Storage Default
{
<Data name="organizationsidGETDefaultData">
<Subscript>"organizationsidGET"</Subscript>
<Value name="1">
<Value>Organization</Value>
</Value>
</Data>
<DefaultData>organizationsidGETDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
