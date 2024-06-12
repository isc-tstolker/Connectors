Class DTSensors.Api.Client.responses.projectsprojectdataconnectorsGET Extends DTSensors.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 200 content-type = application/json
/// Data Connectors listed successfully
Property inlineresponse2004 As DTSensors.Api.Client.model.inlineresponse2004;

/// Implement operationId : projectsprojectdataconnectorsGET
/// get /projects/{project}/dataconnectors
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "200" {
		Set ..inlineresponse2004 = ##class(DTSensors.Api.Client.model.inlineresponse2004).%New()
		Set ..status = ..inlineresponse2004.%JSONImport(httpResponse.Data)
		Return sc
	}
	Return sc
}

Storage Default
{
<Data name="projectsprojectdataconnectorsGETDefaultData">
<Subscript>"projectsprojectdataconnectorsGET"</Subscript>
<Value name="1">
<Value>inlineresponse2004</Value>
</Value>
</Data>
<DefaultData>projectsprojectdataconnectorsGETDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
