Class DTSensors.Api.Client.responses.rolesGET Extends DTSensors.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 200 content-type = application/json
/// Roles list successfully returned.
Property inlineresponse2006 As DTSensors.Api.Client.model.inlineresponse2006;

/// Implement operationId : rolesGET
/// get /roles
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "200" {
		Set ..inlineresponse2006 = ##class(DTSensors.Api.Client.model.inlineresponse2006).%New()
		Set ..status = ..inlineresponse2006.%JSONImport(httpResponse.Data)
		Return sc
	}
	Return sc
}

Storage Default
{
<Data name="rolesGETDefaultData">
<Subscript>"rolesGET"</Subscript>
<Value name="1">
<Value>inlineresponse2006</Value>
</Value>
</Data>
<DefaultData>rolesGETDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
