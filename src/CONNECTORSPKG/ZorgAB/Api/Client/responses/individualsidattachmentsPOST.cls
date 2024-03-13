Class CONNECTORSPKG.ZorgAB.Api.Client.responses.individualsidattachmentsPOST Extends CONNECTORSPKG.ZorgAB.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 201 content-type = application/json
/// Status 201
Property Attachment As CONNECTORSPKG.ZorgAB.Api.Client.model.Attachment;

/// Implement operationId : individualsidattachmentsPOST
/// post /individuals/{id}/attachments
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "201" {
		Set ..Attachment = ##class(CONNECTORSPKG.ZorgAB.Api.Client.model.Attachment).%New()
		Set ..status = ..Attachment.%JSONImport(httpResponse.Data)
		Return sc
	}
	Return sc
}

Storage Default
{
<Data name="individualsidattachmentsPOSTDefaultData">
<Subscript>"individualsidattachmentsPOST"</Subscript>
<Value name="1">
<Value>Attachment</Value>
</Value>
</Data>
<DefaultData>individualsidattachmentsPOSTDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
