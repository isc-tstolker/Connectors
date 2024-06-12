Class DTSensors.Api.Client.responses.claimInfoGET Extends DTSensors.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 200 content-type = application/json
/// Either the device or kit that matches the identifier.
Property inlineresponse20012 As DTSensors.Api.Client.model.inlineresponse20012;

/// Implement operationId : claimInfoGET
/// get /claimInfo
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "200" {
		Set ..inlineresponse20012 = ##class(DTSensors.Api.Client.model.inlineresponse20012).%New()
		Set ..status = ..inlineresponse20012.%JSONImport(httpResponse.Data)
		Return sc
	}
	Return sc
}

Storage Default
{
<Data name="claimInfoGETDefaultData">
<Subscript>"claimInfoGET"</Subscript>
<Value name="1">
<Value>inlineresponse20012</Value>
</Value>
</Data>
<DefaultData>claimInfoGETDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
