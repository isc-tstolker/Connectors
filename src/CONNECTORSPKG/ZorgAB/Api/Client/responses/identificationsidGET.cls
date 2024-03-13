Class CONNECTORSPKG.ZorgAB.Api.Client.responses.identificationsidGET Extends CONNECTORSPKG.ZorgAB.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 200 content-type = application/json
/// Status 200
Property OrganizationOrIndividual As CONNECTORSPKG.ZorgAB.Api.Client.model.OrganizationOrIndividual;

/// Implement operationId : identificationsidGET
/// get /identifications/{id}
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "200" {
		Set ..OrganizationOrIndividual = ##class(CONNECTORSPKG.ZorgAB.Api.Client.model.OrganizationOrIndividual).%New()
		Set ..status = ..OrganizationOrIndividual.%JSONImport(httpResponse.Data)
		Return sc
	}
	Return sc
}

Storage Default
{
<Data name="identificationsidGETDefaultData">
<Subscript>"identificationsidGET"</Subscript>
<Value name="1">
<Value>OrganizationOrIndividual</Value>
</Value>
</Data>
<DefaultData>identificationsidGETDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
