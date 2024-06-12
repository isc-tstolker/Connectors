Class DTSensors.Api.Client.responses.organizationsorganizationGET Extends DTSensors.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 200 content-type = application/json
/// Got organization details.
Property Organization As DTSensors.Api.Client.model.Organization;

/// Implement operationId : organizationsorganizationGET
/// get /organizations/{organization}
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "200" {
		Set ..Organization = ##class(DTSensors.Api.Client.model.Organization).%New()
		Set ..status = ..Organization.%JSONImport(httpResponse.Data)
		Return sc
	}
	Return sc
}

Storage Default
{
<Data name="organizationsorganizationGETDefaultData">
<Subscript>"organizationsorganizationGET"</Subscript>
<Value name="1">
<Value>Organization</Value>
</Value>
</Data>
<DefaultData>organizationsorganizationGETDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
