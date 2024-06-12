Class DTSensors.Api.Client.responses.projectsprojectserviceaccountsserviceaccountGET Extends DTSensors.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 200 content-type = application/json
/// Returns the requested Service Account.
Property ServiceAccount As DTSensors.Api.Client.model.ServiceAccount;

/// Implement operationId : projectsprojectserviceaccountsserviceaccountGET
/// get /projects/{project}/serviceaccounts/{serviceaccount}
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "200" {
		Set ..ServiceAccount = ##class(DTSensors.Api.Client.model.ServiceAccount).%New()
		Set ..status = ..ServiceAccount.%JSONImport(httpResponse.Data)
		Return sc
	}
	Return sc
}

Storage Default
{
<Data name="projectsprojectserviceaccountsserviceaccountGETDefaultData">
<Subscript>"projectsprojectserviceaccountsserviceaccountGET"</Subscript>
<Value name="1">
<Value>ServiceAccount</Value>
</Value>
</Data>
<DefaultData>projectsprojectserviceaccountsserviceaccountGETDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
