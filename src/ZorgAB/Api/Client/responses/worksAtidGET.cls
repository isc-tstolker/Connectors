Class CONNECTORSPKG.ZorgAB.Api.Client.responses.worksAtidGET Extends CONNECTORSPKG.ZorgAB.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 200 content-type = application/json
/// Status 200
Property WorksAt As CONNECTORSPKG.ZorgAB.Api.Client.model.WorksAt;

/// Implement operationId : worksAtidGET
/// get /worksAt/{id}
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "200" {
		Set ..WorksAt = ##class(CONNECTORSPKG.ZorgAB.Api.Client.model.WorksAt).%New()
		Set ..status = ..WorksAt.%JSONImport(httpResponse.Data)
		Return sc
	}
	Return sc
}

Storage Default
{
<Data name="worksAtidGETDefaultData">
<Subscript>"worksAtidGET"</Subscript>
<Value name="1">
<Value>WorksAt</Value>
</Value>
</Data>
<DefaultData>worksAtidGETDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
