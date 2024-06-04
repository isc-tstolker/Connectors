Class ZorgAB.Api.Client.responses.subOrganizationPOST Extends ZorgAB.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 201 content-type = application/json
/// Status 201
Property SubOrganization As ZorgAB.Api.Client.model.SubOrganization;

/// Implement operationId : subOrganizationPOST
/// post /subOrganization
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "201" {
		Set ..SubOrganization = ##class(ZorgAB.Api.Client.model.SubOrganization).%New()
		Set ..status = ..SubOrganization.%JSONImport(httpResponse.Data)
		Return sc
	}
	Return sc
}

Storage Default
{
<Data name="subOrganizationPOSTDefaultData">
<Subscript>"subOrganizationPOST"</Subscript>
<Value name="1">
<Value>SubOrganization</Value>
</Value>
</Data>
<DefaultData>subOrganizationPOSTDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
