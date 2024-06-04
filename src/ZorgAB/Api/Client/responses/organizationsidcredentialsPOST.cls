Class ZorgAB.Api.Client.responses.organizationsidcredentialsPOST Extends ZorgAB.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 201 content-type = application/json
/// Status 201
Property Credential As ZorgAB.Api.Client.model.Credential;

/// Implement operationId : organizationsidcredentialsPOST
/// post /organizations/{id}/credentials
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "201" {
		Set ..Credential = ##class(ZorgAB.Api.Client.model.Credential).%New()
		Set ..status = ..Credential.%JSONImport(httpResponse.Data)
		Return sc
	}
	Return sc
}

Storage Default
{
<Data name="organizationsidcredentialsPOSTDefaultData">
<Subscript>"organizationsidcredentialsPOST"</Subscript>
<Value name="1">
<Value>Credential</Value>
</Value>
</Data>
<DefaultData>organizationsidcredentialsPOSTDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
