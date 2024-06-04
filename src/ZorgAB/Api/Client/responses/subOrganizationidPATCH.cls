Class ZorgAB.Api.Client.responses.subOrganizationidPATCH Extends ZorgAB.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 200 content-type = application/json
/// Status 200
Property SubOrganization As ZorgAB.Api.Client.model.SubOrganization;

/// Implement operationId : subOrganizationidPATCH
/// patch /subOrganization/{id}
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "200" {
		Set ..SubOrganization = ##class(ZorgAB.Api.Client.model.SubOrganization).%New()
		Set ..status = ..SubOrganization.%JSONImport(httpResponse.Data)
		Return sc
	}
	Return sc
}

Storage Default
{
<Data name="subOrganizationidPATCHDefaultData">
<Subscript>"subOrganizationidPATCH"</Subscript>
<Value name="1">
<Value>SubOrganization</Value>
</Value>
</Data>
<DefaultData>subOrganizationidPATCHDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
