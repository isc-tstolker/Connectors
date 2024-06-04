Class ZorgAB.Api.Client.responses.organizationsididentificationsindexPATCH Extends ZorgAB.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 202 content-type = application/json
/// Status 202
Property Identification As ZorgAB.Api.Client.model.Identification;

/// Implement operationId : organizationsididentificationsindexPATCH
/// patch /organizations/{id}/identifications/{index}
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "202" {
		Set ..Identification = ##class(ZorgAB.Api.Client.model.Identification).%New()
		Set ..status = ..Identification.%JSONImport(httpResponse.Data)
		Return sc
	}
	Return sc
}

Storage Default
{
<Data name="organizationsididentificationsindexPATCHDefaultData">
<Subscript>"organizationsididentificationsindexPATCH"</Subscript>
<Value name="1">
<Value>Identification</Value>
</Value>
</Data>
<DefaultData>organizationsididentificationsindexPATCHDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
