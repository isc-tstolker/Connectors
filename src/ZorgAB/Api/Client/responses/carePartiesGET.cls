Class ZorgAB.Api.Client.responses.carePartiesGET Extends ZorgAB.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 200 content-type = application/json
/// Status 200
Property OrganizationOrIndividualOrWorksAt As ZorgAB.Api.Client.model.OrganizationOrIndividualOrWorksAt;

/// Implement operationId : carePartiesGET
/// get /careParties
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "200" {
		Set ..OrganizationOrIndividualOrWorksAt = ##class(ZorgAB.Api.Client.model.OrganizationOrIndividualOrWorksAt).%New()
		Set ..status = ..OrganizationOrIndividualOrWorksAt.%JSONImport(httpResponse.Data)
		Return sc
	}
	Return sc
}

Storage Default
{
<Data name="carePartiesGETDefaultData">
<Subscript>"carePartiesGET"</Subscript>
<Value name="1">
<Value>OrganizationOrIndividualOrWorksAt</Value>
</Value>
</Data>
<DefaultData>carePartiesGETDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
