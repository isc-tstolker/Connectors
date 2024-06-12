Class DTSensors.Api.Client.responses.projectsprojectserviceaccountsserviceaccountkeyskeyGET Extends DTSensors.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 200 content-type = application/json
/// The Service Account Key.
Property ServiceAccountKey As DTSensors.Api.Client.model.ServiceAccountKey;

/// Implement operationId : projectsprojectserviceaccountsserviceaccountkeyskeyGET
/// get /projects/{project}/serviceaccounts/{serviceaccount}/keys/{key}
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "200" {
		Set ..ServiceAccountKey = ##class(DTSensors.Api.Client.model.ServiceAccountKey).%New()
		Set ..status = ..ServiceAccountKey.%JSONImport(httpResponse.Data)
		Return sc
	}
	Return sc
}

Storage Default
{
<Data name="projectsprojectserviceaccountsserviceaccountkeyskeyGETDefaultData">
<Subscript>"projectsprojectserviceaccountsserviceaccountkeyskeyGET"</Subscript>
<Value name="1">
<Value>ServiceAccountKey</Value>
</Value>
</Data>
<DefaultData>projectsprojectserviceaccountsserviceaccountkeyskeyGETDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
