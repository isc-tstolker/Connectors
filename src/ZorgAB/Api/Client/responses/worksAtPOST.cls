Class ZorgAB.Api.Client.responses.worksAtPOST Extends ZorgAB.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 201 content-type = application/json
/// Status 201
Property WorksAt As ZorgAB.Api.Client.model.WorksAt;

/// Implement operationId : worksAtPOST
/// post /worksAt
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "201" {
		Set ..WorksAt = ##class(ZorgAB.Api.Client.model.WorksAt).%New()
		Set ..status = ..WorksAt.%JSONImport(httpResponse.Data)
		Return sc
	}
	Return sc
}

Storage Default
{
<Data name="worksAtPOSTDefaultData">
<Subscript>"worksAtPOST"</Subscript>
<Value name="1">
<Value>WorksAt</Value>
</Value>
</Data>
<DefaultData>worksAtPOSTDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
