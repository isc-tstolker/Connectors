Class CONNECTORSPKG.ZorgAB.Api.Client.responses.individualsidnamesindexPATCH Extends CONNECTORSPKG.ZorgAB.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 202 content-type = application/json
/// Status 202
Property IndividualName As CONNECTORSPKG.ZorgAB.Api.Client.model.IndividualName;

/// Implement operationId : individualsidnamesindexPATCH
/// patch /individuals/{id}/names/{index}
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "202" {
		Set ..IndividualName = ##class(CONNECTORSPKG.ZorgAB.Api.Client.model.IndividualName).%New()
		Set ..status = ..IndividualName.%JSONImport(httpResponse.Data)
		Return sc
	}
	Return sc
}

Storage Default
{
<Data name="individualsidnamesindexPATCHDefaultData">
<Subscript>"individualsidnamesindexPATCH"</Subscript>
<Value name="1">
<Value>IndividualName</Value>
</Value>
</Data>
<DefaultData>individualsidnamesindexPATCHDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
