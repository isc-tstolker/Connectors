Class DTSensors.Api.Client.responses.projectsprojectserviceaccountsserviceaccountkeysGET Extends DTSensors.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 200 content-type = application/json
/// Got list of Service Account Keys.
Property inlineresponse20011 As DTSensors.Api.Client.model.inlineresponse20011;

/// Implement operationId : projectsprojectserviceaccountsserviceaccountkeysGET
/// get /projects/{project}/serviceaccounts/{serviceaccount}/keys
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "200" {
		Set ..inlineresponse20011 = ##class(DTSensors.Api.Client.model.inlineresponse20011).%New()
		Set ..status = ..inlineresponse20011.%JSONImport(httpResponse.Data)
		Return sc
	}
	Return sc
}

Storage Default
{
<Data name="projectsprojectserviceaccountsserviceaccountkeysGETDefaultData">
<Subscript>"projectsprojectserviceaccountsserviceaccountkeysGET"</Subscript>
<Value name="1">
<Value>inlineresponse20011</Value>
</Value>
</Data>
<DefaultData>projectsprojectserviceaccountsserviceaccountkeysGETDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
