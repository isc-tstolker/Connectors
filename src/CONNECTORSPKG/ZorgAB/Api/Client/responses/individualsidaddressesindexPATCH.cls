Class CONNECTORSPKG.ZorgAB.Api.Client.responses.individualsidaddressesindexPATCH Extends CONNECTORSPKG.ZorgAB.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 202 content-type = application/json
/// Status 202
Property Address As CONNECTORSPKG.ZorgAB.Api.Client.model.Address;

/// Implement operationId : individualsidaddressesindexPATCH
/// patch /individuals/{id}/addresses/{index}
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
<Data name="individualsidaddressesindexPATCHDefaultData">
<Subscript>"individualsidaddressesindexPATCH"</Subscript>
<Value name="1">
<Value>Address</Value>
</Value>
</Data>
<DefaultData>individualsidaddressesindexPATCHDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
