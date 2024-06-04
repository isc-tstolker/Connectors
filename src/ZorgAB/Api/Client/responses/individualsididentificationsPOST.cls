Class ZorgAB.Api.Client.responses.individualsididentificationsPOST Extends ZorgAB.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 201 content-type = application/json
/// Status 201
Property Identification As ZorgAB.Api.Client.model.Identification;

/// Implement operationId : individualsididentificationsPOST
/// post /individuals/{id}/identifications
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "201" {
		Set ..Identification = ##class(ZorgAB.Api.Client.model.Identification).%New()
		Set ..status = ..Identification.%JSONImport(httpResponse.Data)
		Return sc
	}
	Return sc
}

Storage Default
{
<Data name="individualsididentificationsPOSTDefaultData">
<Subscript>"individualsididentificationsPOST"</Subscript>
<Value name="1">
<Value>Identification</Value>
</Value>
</Data>
<DefaultData>individualsididentificationsPOSTDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
