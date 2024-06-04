Class CONNECTORSPKG.ZorgAB.Api.Client.responses.individualsidrelationsGET Extends CONNECTORSPKG.ZorgAB.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 200 content-type = application/json
/// Status 200
Property ListOfWorksAt As list Of CONNECTORSPKG.ZorgAB.Api.Client.model.WorksAt;

/// Implement operationId : individualsidrelationsGET
/// get /individuals/{id}/relations
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "200" {
		Set array = [].%FromJSON(httpResponse.Data), iterator = array.%GetIterator()
		While iterator.%GetNext(.index, .item) {
			Set obj = ##class(CONNECTORSPKG.ZorgAB.Api.Client.model.WorksAt).%New()
			Do obj.%JSONImport(item), ..ListOfWorksAt.Insert(obj)
		}
		Return sc
	}
	Return sc
}

Storage Default
{
<Data name="individualsidrelationsGETDefaultData">
<Subscript>"individualsidrelationsGET"</Subscript>
<Value name="1">
<Value>ListOfWorksAt</Value>
</Value>
</Data>
<DefaultData>individualsidrelationsGETDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
