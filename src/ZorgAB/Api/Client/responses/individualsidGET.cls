Class ZorgAB.Api.Client.responses.individualsidGET Extends ZorgAB.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 200 content-type = application/json
/// Status 200
Property Individual As ZorgAB.Api.Client.model.Individual;

/// Implement operationId : individualsidGET
/// get /individuals/{id}
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "200" {
		Set ..Individual = ##class(ZorgAB.Api.Client.model.Individual).%New()
		Set ..status = ..Individual.%JSONImport(httpResponse.Data)
		Return sc
	}
	Return sc
}

Storage Default
{
<Data name="individualsidGETDefaultData">
<Subscript>"individualsidGET"</Subscript>
<Value name="1">
<Value>Individual</Value>
</Value>
</Data>
<DefaultData>individualsidGETDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
