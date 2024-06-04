Class ZorgAB.Api.Client.responses.individualsidnamesPOST Extends ZorgAB.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 201 content-type = application/json
/// Status 201
Property IndividualName As ZorgAB.Api.Client.model.IndividualName;

/// Implement operationId : individualsidnamesPOST
/// post /individuals/{id}/names
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "201" {
		Set ..IndividualName = ##class(ZorgAB.Api.Client.model.IndividualName).%New()
		Set ..status = ..IndividualName.%JSONImport(httpResponse.Data)
		Return sc
	}
	Return sc
}

Storage Default
{
<Data name="individualsidnamesPOSTDefaultData">
<Subscript>"individualsidnamesPOST"</Subscript>
<Value name="1">
<Value>IndividualName</Value>
</Value>
</Data>
<DefaultData>individualsidnamesPOSTDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
