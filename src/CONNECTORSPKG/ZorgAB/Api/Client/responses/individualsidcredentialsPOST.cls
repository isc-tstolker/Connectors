Class CONNECTORSPKG.ZorgAB.Api.Client.responses.individualsidcredentialsPOST Extends CONNECTORSPKG.ZorgAB.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 201 content-type = application/json
/// Status 201
Property Credential As CONNECTORSPKG.ZorgAB.Api.Client.model.Credential;

/// Implement operationId : individualsidcredentialsPOST
/// post /individuals/{id}/credentials
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "201" {
		Set ..Credential = ##class(CONNECTORSPKG.ZorgAB.Api.Client.model.Credential).%New()
		Set ..status = ..Credential.%JSONImport(httpResponse.Data)
		Return sc
	}
	Return sc
}

Storage Default
{
<Data name="individualsidcredentialsPOSTDefaultData">
<Subscript>"individualsidcredentialsPOST"</Subscript>
<Value name="1">
<Value>Credential</Value>
</Value>
</Data>
<DefaultData>individualsidcredentialsPOSTDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}