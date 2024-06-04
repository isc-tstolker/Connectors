Class CONNECTORSPKG.ZorgAB.Api.Client.responses.subOrganizationidGET Extends CONNECTORSPKG.ZorgAB.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 200 content-type = application/json
/// Status 200
Property SubOrganization As CONNECTORSPKG.ZorgAB.Api.Client.model.SubOrganization;

/// Implement operationId : subOrganizationidGET
/// get /subOrganization/{id}
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "200" {
		Set ..SubOrganization = ##class(CONNECTORSPKG.ZorgAB.Api.Client.model.SubOrganization).%New()
		Set ..status = ..SubOrganization.%JSONImport(httpResponse.Data)
		Return sc
	}
	Return sc
}

Storage Default
{
<Data name="subOrganizationidGETDefaultData">
<Subscript>"subOrganizationidGET"</Subscript>
<Value name="1">
<Value>SubOrganization</Value>
</Value>
</Data>
<DefaultData>subOrganizationidGETDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
