Class ZorgAB.Api.Client.responses.applicationIdv2applicationIdGET Extends ZorgAB.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 200 content-type = application/json
/// Status 200
Property ListOfOrganization As list Of ZorgAB.Api.Client.model.Organization;

/// Implement operationId : applicationIdv2applicationIdGET
/// get /applicationId-v2/{applicationId}
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "200" {
		Set array = [].%FromJSON(httpResponse.Data), iterator = array.%GetIterator()
		While iterator.%GetNext(.index, .item) {
			Set obj = ##class(ZorgAB.Api.Client.model.Organization).%New()
			Do obj.%JSONImport(item), ..ListOfOrganization.Insert(obj)
		}
		Return sc
	}
	Return sc
}

Storage Default
{
<Data name="applicationIdv2applicationIdGETDefaultData">
<Subscript>"applicationIdv2applicationIdGET"</Subscript>
<Value name="1">
<Value>ListOfOrganization</Value>
</Value>
</Data>
<DefaultData>applicationIdv2applicationIdGETDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
