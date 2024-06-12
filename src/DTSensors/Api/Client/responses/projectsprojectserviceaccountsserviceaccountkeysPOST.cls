Class DTSensors.Api.Client.responses.projectsprojectserviceaccountsserviceaccountkeysPOST Extends DTSensors.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 409 content-type = application/json
/// The maximum number of Keys for this Service Account has been reached. Delete one of the existing
/// Keys to create a new one.
Property ErrorMessage409 As DTSensors.Api.Client.model.ErrorMessage409;

/// http status code = 200 content-type = application/json
/// Successfully created new key.
Property ServiceAccountKeyWithSecret As DTSensors.Api.Client.model.ServiceAccountKeyWithSecret;

/// Implement operationId : projectsprojectserviceaccountsserviceaccountkeysPOST
/// post /projects/{project}/serviceaccounts/{serviceaccount}/keys
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "200" {
		Set ..ServiceAccountKeyWithSecret = ##class(DTSensors.Api.Client.model.ServiceAccountKeyWithSecret).%New()
		Set ..status = ..ServiceAccountKeyWithSecret.%JSONImport(httpResponse.Data)
		Return sc
	}
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "409" {
		Set ..ErrorMessage409 = ##class(DTSensors.Api.Client.model.ErrorMessage409).%New()
		Set ..status = ..ErrorMessage409.%JSONImport(httpResponse.Data)
		Return sc
	}
	Return sc
}

Storage Default
{
<Data name="projectsprojectserviceaccountsserviceaccountkeysPOSTDefaultData">
<Subscript>"projectsprojectserviceaccountsserviceaccountkeysPOST"</Subscript>
<Value name="1">
<Value>ErrorMessage409</Value>
</Value>
<Value name="2">
<Value>ServiceAccountKeyWithSecret</Value>
</Value>
</Data>
<DefaultData>projectsprojectserviceaccountsserviceaccountkeysPOSTDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
