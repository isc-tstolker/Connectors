Class DTSensors.Api.Client.responses.projectsprojectserviceaccountsserviceaccountPATCH Extends DTSensors.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 200 content-type = application/json
/// The updated Service Account is returned in the response.
Property ServiceAccount As DTSensors.Api.Client.model.ServiceAccount;

/// Implement operationId : projectsprojectserviceaccountsserviceaccountPATCH
/// patch /projects/{project}/serviceaccounts/{serviceaccount}
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
<Data name="projectsprojectserviceaccountsserviceaccountPATCHDefaultData">
<Subscript>"projectsprojectserviceaccountsserviceaccountPATCH"</Subscript>
<Value name="1">
<Value>ServiceAccount</Value>
</Value>
</Data>
<DefaultData>projectsprojectserviceaccountsserviceaccountPATCHDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
