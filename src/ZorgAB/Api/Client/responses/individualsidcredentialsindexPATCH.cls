Class CONNECTORSPKG.ZorgAB.Api.Client.responses.individualsidcredentialsindexPATCH Extends CONNECTORSPKG.ZorgAB.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 202 content-type = application/json
/// Status 202
Property Credential As CONNECTORSPKG.ZorgAB.Api.Client.model.Credential;

/// Implement operationId : individualsidcredentialsindexPATCH
/// patch /individuals/{id}/credentials/{index}
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "202" {
		Set ..Credential = ##class(CONNECTORSPKG.ZorgAB.Api.Client.model.Credential).%New()
		Set ..status = ..Credential.%JSONImport(httpResponse.Data)
		Return sc
	}
	Return sc
}

Storage Default
{
<Data name="individualsidcredentialsindexPATCHDefaultData">
<Subscript>"individualsidcredentialsindexPATCH"</Subscript>
<Value name="1">
<Value>Credential</Value>
</Value>
</Data>
<DefaultData>individualsidcredentialsindexPATCHDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
