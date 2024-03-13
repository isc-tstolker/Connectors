Class CONNECTORSPKG.ZorgAB.Api.Client.responses.individualsidtypesPOST Extends CONNECTORSPKG.ZorgAB.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 201 content-type = application/json
/// Status 201
Property Type As CONNECTORSPKG.ZorgAB.Api.Client.model.Type;

/// Implement operationId : individualsidtypesPOST
/// post /individuals/{id}/types
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "201" {
		Set ..Type = ##class(CONNECTORSPKG.ZorgAB.Api.Client.model.Type).%New()
		Set ..status = ..Type.%JSONImport(httpResponse.Data)
		Return sc
	}
	Return sc
}

Storage Default
{
<Data name="individualsidtypesPOSTDefaultData">
<Subscript>"individualsidtypesPOST"</Subscript>
<Value name="1">
<Value>Type</Value>
</Value>
</Data>
<DefaultData>individualsidtypesPOSTDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
