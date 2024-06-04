Class ZorgAB.Api.Client.responses.organizationsidPATCH Extends ZorgAB.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 202 content-type = application/json
/// Status 202
Property Organization As ZorgAB.Api.Client.model.Organization;

/// Implement operationId : organizationsidPATCH
/// patch /organizations/{id}
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "202" {
		Set ..Organization = ##class(ZorgAB.Api.Client.model.Organization).%New()
		Set ..status = ..Organization.%JSONImport(httpResponse.Data)
		Return sc
	}
	Return sc
}

Storage Default
{
<Data name="organizationsidPATCHDefaultData">
<Subscript>"organizationsidPATCH"</Subscript>
<Value name="1">
<Value>Organization</Value>
</Value>
</Data>
<DefaultData>organizationsidPATCHDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
