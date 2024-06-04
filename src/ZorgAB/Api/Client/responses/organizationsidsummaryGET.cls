Class ZorgAB.Api.Client.responses.organizationsidsummaryGET Extends ZorgAB.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 200 content-type = application/json
/// Status 200
Property OrganizationSummary As ZorgAB.Api.Client.model.OrganizationSummary;

/// Implement operationId : organizationsidsummaryGET
/// get /organizations/{id}/_summary
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "200" {
		Set ..OrganizationSummary = ##class(ZorgAB.Api.Client.model.OrganizationSummary).%New()
		Set ..status = ..OrganizationSummary.%JSONImport(httpResponse.Data)
		Return sc
	}
	Return sc
}

Storage Default
{
<Data name="organizationsidsummaryGETDefaultData">
<Subscript>"organizationsidsummaryGET"</Subscript>
<Value name="1">
<Value>OrganizationSummary</Value>
</Value>
</Data>
<DefaultData>organizationsidsummaryGETDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
