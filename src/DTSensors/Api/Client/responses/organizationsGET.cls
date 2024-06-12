Class DTSensors.Api.Client.responses.organizationsGET Extends DTSensors.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 200 content-type = application/json
/// Got list of organizations.
Property inlineresponse2007 As DTSensors.Api.Client.model.inlineresponse2007;

/// Implement operationId : organizationsGET
/// get /organizations
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "200" {
		Set ..inlineresponse2007 = ##class(DTSensors.Api.Client.model.inlineresponse2007).%New()
		Set ..status = ..inlineresponse2007.%JSONImport(httpResponse.Data)
		Return sc
	}
	Return sc
}

Storage Default
{
<Data name="organizationsGETDefaultData">
<Subscript>"organizationsGET"</Subscript>
<Value name="1">
<Value>inlineresponse2007</Value>
</Value>
</Data>
<DefaultData>organizationsGETDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
