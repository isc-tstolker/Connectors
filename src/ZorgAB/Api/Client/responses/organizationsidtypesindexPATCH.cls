Class CONNECTORSPKG.ZorgAB.Api.Client.responses.organizationsidtypesindexPATCH Extends CONNECTORSPKG.ZorgAB.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 202 content-type = application/json
/// Status 202
Property Type As CONNECTORSPKG.ZorgAB.Api.Client.model.Type;

/// Implement operationId : organizationsidtypesindexPATCH
/// patch /organizations/{id}/types/{index}
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "202" {
		Set ..Type = ##class(CONNECTORSPKG.ZorgAB.Api.Client.model.Type).%New()
		Set ..status = ..Type.%JSONImport(httpResponse.Data)
		Return sc
	}
	Return sc
}

Storage Default
{
<Data name="organizationsidtypesindexPATCHDefaultData">
<Subscript>"organizationsidtypesindexPATCH"</Subscript>
<Value name="1">
<Value>Type</Value>
</Value>
</Data>
<DefaultData>organizationsidtypesindexPATCHDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}