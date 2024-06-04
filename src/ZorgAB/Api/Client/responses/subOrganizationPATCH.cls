Class CONNECTORSPKG.ZorgAB.Api.Client.responses.subOrganizationPATCH Extends CONNECTORSPKG.ZorgAB.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 202 content-type = application/json
/// Status 202
Property SubOrganization As CONNECTORSPKG.ZorgAB.Api.Client.model.SubOrganization;

/// Implement operationId : subOrganizationPATCH
/// patch /subOrganization
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "202" {
		Set ..SubOrganization = ##class(CONNECTORSPKG.ZorgAB.Api.Client.model.SubOrganization).%New()
		Set ..status = ..SubOrganization.%JSONImport(httpResponse.Data)
		Return sc
	}
	Return sc
}

Storage Default
{
<Data name="subOrganizationPATCHDefaultData">
<Subscript>"subOrganizationPATCH"</Subscript>
<Value name="1">
<Value>SubOrganization</Value>
</Value>
</Data>
<DefaultData>subOrganizationPATCHDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
