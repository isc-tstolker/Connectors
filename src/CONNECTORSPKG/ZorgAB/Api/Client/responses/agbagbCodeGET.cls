Class CONNECTORSPKG.ZorgAB.Api.Client.responses.agbagbCodeGET Extends CONNECTORSPKG.ZorgAB.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 200 content-type = application/json
/// Status 200
Property Organization As CONNECTORSPKG.ZorgAB.Api.Client.model.Organization;

/// Implement operationId : agbagbCodeGET
/// get /agb/{agbCode}
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "200" {
		Set ..Organization = ##class(CONNECTORSPKG.ZorgAB.Api.Client.model.Organization).%New()
		Set ..status = ..Organization.%JSONImport(httpResponse.Data)
		Return sc
	}
	Return sc
}

Storage Default
{
<Data name="agbagbCodeGETDefaultData">
<Subscript>"agbagbCodeGET"</Subscript>
<Value name="1">
<Value>Organization</Value>
</Value>
</Data>
<DefaultData>agbagbCodeGETDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}