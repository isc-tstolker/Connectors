Class CONNECTORSPKG.ZorgAB.Api.Client.responses.organizationsidaddressesindexPATCH Extends CONNECTORSPKG.ZorgAB.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 202 content-type = application/json
/// Status 202
Property Address As CONNECTORSPKG.ZorgAB.Api.Client.model.Address;

/// Implement operationId : organizationsidaddressesindexPATCH
/// patch /organizations/{id}/addresses/{index}
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "202" {
		Set ..Address = ##class(CONNECTORSPKG.ZorgAB.Api.Client.model.Address).%New()
		Set ..status = ..Address.%JSONImport(httpResponse.Data)
		Return sc
	}
	Return sc
}

Storage Default
{
<Data name="organizationsidaddressesindexPATCHDefaultData">
<Subscript>"organizationsidaddressesindexPATCH"</Subscript>
<Value name="1">
<Value>Address</Value>
</Value>
</Data>
<DefaultData>organizationsidaddressesindexPATCHDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
