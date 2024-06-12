Class DTSensors.Api.Client.responses.projectsprojectserviceaccountsGET Extends DTSensors.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 200 content-type = application/json
/// Got list of Service accounts.
Property inlineresponse20010 As DTSensors.Api.Client.model.inlineresponse20010;

/// Implement operationId : projectsprojectserviceaccountsGET
/// get /projects/{project}/serviceaccounts
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "200" {
		Set ..inlineresponse20010 = ##class(DTSensors.Api.Client.model.inlineresponse20010).%New()
		Set ..status = ..inlineresponse20010.%JSONImport(httpResponse.Data)
		Return sc
	}
	Return sc
}

Storage Default
{
<Data name="projectsprojectserviceaccountsGETDefaultData">
<Subscript>"projectsprojectserviceaccountsGET"</Subscript>
<Value name="1">
<Value>inlineresponse20010</Value>
</Value>
</Data>
<DefaultData>projectsprojectserviceaccountsGETDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
