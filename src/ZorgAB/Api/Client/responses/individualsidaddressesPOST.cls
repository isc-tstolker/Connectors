Class ZorgAB.Api.Client.responses.individualsidaddressesPOST Extends ZorgAB.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 201 content-type = application/json
/// Status 201
Property Address As ZorgAB.Api.Client.model.Address;

/// Implement operationId : individualsidaddressesPOST
/// post /individuals/{id}/addresses
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "201" {
		Set ..Address = ##class(ZorgAB.Api.Client.model.Address).%New()
		Set ..status = ..Address.%JSONImport(httpResponse.Data)
		Return sc
	}
	Return sc
}

Storage Default
{
<Data name="individualsidaddressesPOSTDefaultData">
<Subscript>"individualsidaddressesPOST"</Subscript>
<Value name="1">
<Value>Address</Value>
</Value>
</Data>
<DefaultData>individualsidaddressesPOSTDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
