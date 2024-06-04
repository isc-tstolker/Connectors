Class ZorgAB.Api.Client.responses.worksAtPATCH Extends ZorgAB.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 202 content-type = application/json
/// Status 202
Property WorksAt As ZorgAB.Api.Client.model.WorksAt;

/// Implement operationId : worksAtPATCH
/// patch /worksAt
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "202" {
		Set ..WorksAt = ##class(ZorgAB.Api.Client.model.WorksAt).%New()
		Set ..status = ..WorksAt.%JSONImport(httpResponse.Data)
		Return sc
	}
	Return sc
}

Storage Default
{
<Data name="worksAtPATCHDefaultData">
<Subscript>"worksAtPATCH"</Subscript>
<Value name="1">
<Value>WorksAt</Value>
</Value>
</Data>
<DefaultData>worksAtPATCHDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
