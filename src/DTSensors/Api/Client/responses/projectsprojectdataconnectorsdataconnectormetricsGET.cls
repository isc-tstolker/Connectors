Class DTSensors.Api.Client.responses.projectsprojectdataconnectorsdataconnectormetricsGET Extends DTSensors.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 200 content-type = application/json
/// Data Connector metrics retrieved
Property inlineresponse2005 As DTSensors.Api.Client.model.inlineresponse2005;

/// Implement operationId : projectsprojectdataconnectorsdataconnectormetricsGET
/// get /projects/{project}/dataconnectors/{dataconnector}:metrics
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "200" {
		Set ..inlineresponse2005 = ##class(DTSensors.Api.Client.model.inlineresponse2005).%New()
		Set ..status = ..inlineresponse2005.%JSONImport(httpResponse.Data)
		Return sc
	}
	Return sc
}

Storage Default
{
<Data name="projectsprojectdataconnectorsdataconnectormetricsGETDefaultData">
<Subscript>"projectsprojectdataconnectorsdataconnectormetricsGET"</Subscript>
<Value name="1">
<Value>inlineresponse2005</Value>
</Value>
</Data>
<DefaultData>projectsprojectdataconnectorsdataconnectormetricsGETDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
