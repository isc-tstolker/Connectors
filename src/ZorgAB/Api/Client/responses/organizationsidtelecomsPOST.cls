Class CONNECTORSPKG.ZorgAB.Api.Client.responses.organizationsidtelecomsPOST Extends CONNECTORSPKG.ZorgAB.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 201 content-type = application/json
/// Status 201
Property Telecom As CONNECTORSPKG.ZorgAB.Api.Client.model.Telecom;

/// Implement operationId : organizationsidtelecomsPOST
/// post /organizations/{id}/telecoms
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "201" {
		Set ..Telecom = ##class(CONNECTORSPKG.ZorgAB.Api.Client.model.Telecom).%New()
		Set ..status = ..Telecom.%JSONImport(httpResponse.Data)
		Return sc
	}
	Return sc
}

Storage Default
{
<Data name="organizationsidtelecomsPOSTDefaultData">
<Subscript>"organizationsidtelecomsPOST"</Subscript>
<Value name="1">
<Value>Telecom</Value>
</Value>
</Data>
<DefaultData>organizationsidtelecomsPOSTDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
