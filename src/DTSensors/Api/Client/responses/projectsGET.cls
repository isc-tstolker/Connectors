Class DTSensors.Api.Client.responses.projectsGET Extends DTSensors.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 200 content-type = application/json
/// List of Projects successfully retrieved
Property inlineresponse2009 As DTSensors.Api.Client.model.inlineresponse2009;

/// Implement operationId : projectsGET
/// get /projects
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "200" {
		Set ..inlineresponse2009 = ##class(DTSensors.Api.Client.model.inlineresponse2009).%New()
		Set ..status = ..inlineresponse2009.%JSONImport(httpResponse.Data)
		Return sc
	}
	Return sc
}

Storage Default
{
<Data name="projectsGETDefaultData">
<Subscript>"projectsGET"</Subscript>
<Value name="1">
<Value>inlineresponse2009</Value>
</Value>
</Data>
<DefaultData>projectsGETDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
