Class CONNECTORSPKG.ZorgAB.Api.Client.responses.organizationsidindividualsGET Extends CONNECTORSPKG.ZorgAB.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 200 content-type = application/json
/// Status 200
Property ListOfIndividual As list Of CONNECTORSPKG.ZorgAB.Api.Client.model.Individual;

/// Implement operationId : organizationsidindividualsGET
/// get /organizations/{id}/individuals
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "200" {
		Set array = [].%FromJSON(httpResponse.Data), iterator = array.%GetIterator()
		While iterator.%GetNext(.index, .item) {
			Set obj = ##class(CONNECTORSPKG.ZorgAB.Api.Client.model.Individual).%New()
			Do obj.%JSONImport(item), ..ListOfIndividual.Insert(obj)
		}
		Return sc
	}
	Return sc
}

Storage Default
{
<Data name="organizationsidindividualsGETDefaultData">
<Subscript>"organizationsidindividualsGET"</Subscript>
<Value name="1">
<Value>ListOfIndividual</Value>
</Value>
</Data>
<DefaultData>organizationsidindividualsGETDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
