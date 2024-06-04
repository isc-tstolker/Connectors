Class CONNECTORSPKG.ZorgAB.Api.Client.responses.worksAtidPATCH Extends CONNECTORSPKG.ZorgAB.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 202 content-type = application/json
/// Status 202
Property WorksAt As CONNECTORSPKG.ZorgAB.Api.Client.model.WorksAt;

/// Implement operationId : worksAtidPATCH
/// patch /worksAt/{id}
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "202" {
		Set ..WorksAt = ##class(CONNECTORSPKG.ZorgAB.Api.Client.model.WorksAt).%New()
		Set ..status = ..WorksAt.%JSONImport(httpResponse.Data)
		Return sc
	}
	Return sc
}

Storage Default
{
<Data name="worksAtidPATCHDefaultData">
<Subscript>"worksAtidPATCH"</Subscript>
<Value name="1">
<Value>WorksAt</Value>
</Value>
</Data>
<DefaultData>worksAtidPATCHDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
