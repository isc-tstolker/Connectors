Class CONNECTORSPKG.ZorgAB.Api.Client.responses.organizationsidattachmentsindexPATCH Extends CONNECTORSPKG.ZorgAB.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 202 content-type = application/json
/// Status 202
Property Attachment As CONNECTORSPKG.ZorgAB.Api.Client.model.Attachment;

/// Implement operationId : organizationsidattachmentsindexPATCH
/// patch /organizations/{id}/attachments/{index}
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "202" {
		Set ..Attachment = ##class(CONNECTORSPKG.ZorgAB.Api.Client.model.Attachment).%New()
		Set ..status = ..Attachment.%JSONImport(httpResponse.Data)
		Return sc
	}
	Return sc
}

Storage Default
{
<Data name="organizationsidattachmentsindexPATCHDefaultData">
<Subscript>"organizationsidattachmentsindexPATCH"</Subscript>
<Value name="1">
<Value>Attachment</Value>
</Value>
</Data>
<DefaultData>organizationsidattachmentsindexPATCHDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
