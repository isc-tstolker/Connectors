Class DTSensors.Api.Client.responses.organizationsorganizationmembersPOST Extends DTSensors.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 200 content-type = application/json
/// Membership created successfully. The response body contains the new Member object.
Property Member As DTSensors.Api.Client.model.Member;

/// Implement operationId : organizationsorganizationmembersPOST
/// post /organizations/{organization}/members
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "200" {
		Set ..Member = ##class(DTSensors.Api.Client.model.Member).%New()
		Set ..status = ..Member.%JSONImport(httpResponse.Data)
		Return sc
	}
	Return sc
}

Storage Default
{
<Data name="organizationsorganizationmembersPOSTDefaultData">
<Subscript>"organizationsorganizationmembersPOST"</Subscript>
<Value name="1">
<Value>Member</Value>
</Value>
</Data>
<DefaultData>organizationsorganizationmembersPOSTDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
