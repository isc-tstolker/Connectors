Class CONNECTORSPKG.ZorgAB.Api.Client.responses.lspOrganizationsGET Extends CONNECTORSPKG.ZorgAB.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 200 content-type = application/json
/// Status 200
Property ListOfOrganization As list Of CONNECTORSPKG.ZorgAB.Api.Client.model.Organization;

/// Implement operationId : lspOrganizationsGET
/// get /lspOrganizations
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "200" {
		Set array = [].%FromJSON(httpResponse.Data), iterator = array.%GetIterator()
		While iterator.%GetNext(.index, .item) {
			Set obj = ##class(CONNECTORSPKG.ZorgAB.Api.Client.model.Organization).%New()
			Do obj.%JSONImport(item), ..ListOfOrganization.Insert(obj)
		}
		Return sc
	}
	Return sc
}

Storage Default
{
<Data name="lspOrganizationsGETDefaultData">
<Subscript>"lspOrganizationsGET"</Subscript>
<Value name="1">
<Value>ListOfOrganization</Value>
</Value>
</Data>
<DefaultData>lspOrganizationsGETDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}