Class CONNECTORSPKG.ZorgAB.Api.Client.responses.organizationsididentificationsPOST Extends CONNECTORSPKG.ZorgAB.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 201 content-type = application/json
/// Status 201
Property Identification As CONNECTORSPKG.ZorgAB.Api.Client.model.Identification;

/// Implement operationId : organizationsididentificationsPOST
/// post /organizations/{id}/identifications
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "201" {
		Set ..Identification = ##class(CONNECTORSPKG.ZorgAB.Api.Client.model.Identification).%New()
		Set ..status = ..Identification.%JSONImport(httpResponse.Data)
		Return sc
	}
	Return sc
}

Storage Default
{
<Data name="organizationsididentificationsPOSTDefaultData">
<Subscript>"organizationsididentificationsPOST"</Subscript>
<Value name="1">
<Value>Identification</Value>
</Value>
</Data>
<DefaultData>organizationsididentificationsPOSTDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
