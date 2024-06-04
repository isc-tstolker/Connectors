Class ZorgAB.Api.Client.responses.organizationsidtypesPOST Extends ZorgAB.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 201 content-type = application/json
/// Status 201
Property Type As ZorgAB.Api.Client.model.Type;

/// Implement operationId : organizationsidtypesPOST
/// post /organizations/{id}/types
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "201" {
		Set ..Type = ##class(ZorgAB.Api.Client.model.Type).%New()
		Set ..status = ..Type.%JSONImport(httpResponse.Data)
		Return sc
	}
	Return sc
}

Storage Default
{
<Data name="organizationsidtypesPOSTDefaultData">
<Subscript>"organizationsidtypesPOST"</Subscript>
<Value name="1">
<Value>Type</Value>
</Value>
</Data>
<DefaultData>organizationsidtypesPOSTDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
