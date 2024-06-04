Class ZorgAB.Api.Client.responses.individualsidservicesPOST Extends ZorgAB.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 201 content-type = application/json
/// Status 201
Property ElectronicService As ZorgAB.Api.Client.model.ElectronicService;

/// Implement operationId : individualsidservicesPOST
/// post /individuals/{id}/services
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "201" {
		Set ..ElectronicService = ##class(ZorgAB.Api.Client.model.ElectronicService).%New()
		Set ..status = ..ElectronicService.%JSONImport(httpResponse.Data)
		Return sc
	}
	Return sc
}

Storage Default
{
<Data name="individualsidservicesPOSTDefaultData">
<Subscript>"individualsidservicesPOST"</Subscript>
<Value name="1">
<Value>ElectronicService</Value>
</Value>
</Data>
<DefaultData>individualsidservicesPOSTDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
