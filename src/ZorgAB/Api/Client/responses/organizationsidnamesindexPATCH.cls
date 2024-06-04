Class ZorgAB.Api.Client.responses.organizationsidnamesindexPATCH Extends ZorgAB.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 202 content-type = application/json
/// Status 202
Property OrganizationName As ZorgAB.Api.Client.model.OrganizationName;

/// Implement operationId : organizationsidnamesindexPATCH
/// patch /organizations/{id}/names/{index}
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "202" {
		Set ..OrganizationName = ##class(ZorgAB.Api.Client.model.OrganizationName).%New()
		Set ..status = ..OrganizationName.%JSONImport(httpResponse.Data)
		Return sc
	}
	Return sc
}

Storage Default
{
<Data name="organizationsidnamesindexPATCHDefaultData">
<Subscript>"organizationsidnamesindexPATCH"</Subscript>
<Value name="1">
<Value>OrganizationName</Value>
</Value>
</Data>
<DefaultData>organizationsidnamesindexPATCHDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
