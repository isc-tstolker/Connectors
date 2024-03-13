Class CONNECTORSPKG.ZorgAB.Api.Client.responses.individualsidservicesindexPATCH Extends CONNECTORSPKG.ZorgAB.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 202 content-type = application/json
/// Status 202
Property ElectronicService As CONNECTORSPKG.ZorgAB.Api.Client.model.ElectronicService;

/// Implement operationId : individualsidservicesindexPATCH
/// patch /individuals/{id}/services/{index}
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "202" {
		Set ..ElectronicService = ##class(CONNECTORSPKG.ZorgAB.Api.Client.model.ElectronicService).%New()
		Set ..status = ..ElectronicService.%JSONImport(httpResponse.Data)
		Return sc
	}
	Return sc
}

Storage Default
{
<Data name="individualsidservicesindexPATCHDefaultData">
<Subscript>"individualsidservicesindexPATCH"</Subscript>
<Value name="1">
<Value>ElectronicService</Value>
</Value>
</Data>
<DefaultData>individualsidservicesindexPATCHDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
