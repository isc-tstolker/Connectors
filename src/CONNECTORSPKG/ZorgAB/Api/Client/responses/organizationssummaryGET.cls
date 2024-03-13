Class CONNECTORSPKG.ZorgAB.Api.Client.responses.organizationssummaryGET Extends CONNECTORSPKG.ZorgAB.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 200 content-type = application/json
/// Status 200
Property ListOfOrganizationSummary As list Of CONNECTORSPKG.ZorgAB.Api.Client.model.OrganizationSummary;

/// Implement operationId : organizationssummaryGET
/// get /organizations/_summary
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "200" {
		Set array = [].%FromJSON(httpResponse.Data), iterator = array.%GetIterator()
		While iterator.%GetNext(.index, .item) {
			Set obj = ##class(CONNECTORSPKG.ZorgAB.Api.Client.model.OrganizationSummary).%New()
			Do obj.%JSONImport(item), ..ListOfOrganizationSummary.Insert(obj)
		}
		Return sc
	}
	Return sc
}

Storage Default
{
<Data name="organizationssummaryGETDefaultData">
<Subscript>"organizationssummaryGET"</Subscript>
<Value name="1">
<Value>ListOfOrganizationSummary</Value>
</Value>
</Data>
<DefaultData>organizationssummaryGETDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
