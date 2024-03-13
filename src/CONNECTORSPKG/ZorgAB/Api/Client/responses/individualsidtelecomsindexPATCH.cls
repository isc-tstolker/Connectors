Class CONNECTORSPKG.ZorgAB.Api.Client.responses.individualsidtelecomsindexPATCH Extends CONNECTORSPKG.ZorgAB.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 202 content-type = application/json
/// Status 202
Property Telecom As CONNECTORSPKG.ZorgAB.Api.Client.model.Telecom;

/// Implement operationId : individualsidtelecomsindexPATCH
/// patch /individuals/{id}/telecoms/{index}
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "202" {
		Set ..Telecom = ##class(CONNECTORSPKG.ZorgAB.Api.Client.model.Telecom).%New()
		Set ..status = ..Telecom.%JSONImport(httpResponse.Data)
		Return sc
	}
	Return sc
}

Storage Default
{
<Data name="individualsidtelecomsindexPATCHDefaultData">
<Subscript>"individualsidtelecomsindexPATCH"</Subscript>
<Value name="1">
<Value>Telecom</Value>
</Value>
</Data>
<DefaultData>individualsidtelecomsindexPATCHDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
