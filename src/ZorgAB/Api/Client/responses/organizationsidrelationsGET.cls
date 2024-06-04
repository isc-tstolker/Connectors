Class CONNECTORSPKG.ZorgAB.Api.Client.responses.organizationsidrelationsGET Extends CONNECTORSPKG.ZorgAB.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 200 content-type = application/json
/// Status 200
Property ListOfRelation As list Of CONNECTORSPKG.ZorgAB.Api.Client.model.Relation;

/// Implement operationId : organizationsidrelationsGET
/// get /organizations/{id}/relations
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "200" {
		Set array = [].%FromJSON(httpResponse.Data), iterator = array.%GetIterator()
		While iterator.%GetNext(.index, .item) {
			Set obj = ##class(CONNECTORSPKG.ZorgAB.Api.Client.model.Relation).%New()
			Do obj.%JSONImport(item), ..ListOfRelation.Insert(obj)
		}
		Return sc
	}
	Return sc
}

Storage Default
{
<Data name="organizationsidrelationsGETDefaultData">
<Subscript>"organizationsidrelationsGET"</Subscript>
<Value name="1">
<Value>ListOfRelation</Value>
</Value>
</Data>
<DefaultData>organizationsidrelationsGETDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
