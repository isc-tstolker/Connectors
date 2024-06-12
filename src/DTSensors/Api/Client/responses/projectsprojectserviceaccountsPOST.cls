Class DTSensors.Api.Client.responses.projectsprojectserviceaccountsPOST Extends DTSensors.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 200 content-type = application/json
/// The newly created Service Account is returned as the response body.
Property ServiceAccount As DTSensors.Api.Client.model.ServiceAccount;

/// Implement operationId : projectsprojectserviceaccountsPOST
/// post /projects/{project}/serviceaccounts
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
<Data name="projectsprojectserviceaccountsPOSTDefaultData">
<Subscript>"projectsprojectserviceaccountsPOST"</Subscript>
<Value name="1">
<Value>ServiceAccount</Value>
</Value>
</Data>
<DefaultData>projectsprojectserviceaccountsPOSTDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
