Class DTSensors.Api.Client.responses.organizationsorganizationmembersmembergetInviteUrlGET Extends DTSensors.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 400 content-type = application/json
/// The Member has already accepted the invitation.
Property ErrorMessage400 As DTSensors.Api.Client.model.ErrorMessage400;

/// http status code = 200 content-type = application/json
/// Invite URL successfully returned.
Property inlineresponse2008 As DTSensors.Api.Client.model.inlineresponse2008;

/// Implement operationId : organizationsorganizationmembersmembergetInviteUrlGET
/// get /organizations/{organization}/members/{member}:getInviteUrl
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "200" {
		Set ..inlineresponse2008 = ##class(DTSensors.Api.Client.model.inlineresponse2008).%New()
		Set ..status = ..inlineresponse2008.%JSONImport(httpResponse.Data)
		Return sc
	}
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "400" {
		Set ..ErrorMessage400 = ##class(DTSensors.Api.Client.model.ErrorMessage400).%New()
		Set ..status = ..ErrorMessage400.%JSONImport(httpResponse.Data)
		Return sc
	}
	Return sc
}

Storage Default
{
<Data name="organizationsorganizationmembersmembergetInviteUrlGETDefaultData">
<Subscript>"organizationsorganizationmembersmembergetInviteUrlGET"</Subscript>
<Value name="1">
<Value>ErrorMessage400</Value>
</Value>
<Value name="2">
<Value>inlineresponse2008</Value>
</Value>
</Data>
<DefaultData>organizationsorganizationmembersmembergetInviteUrlGETDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
