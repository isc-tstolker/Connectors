Class CONNECTORSPKG.ZorgAB.Api.Client.responses.individualsPOST Extends CONNECTORSPKG.ZorgAB.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 201 content-type = application/json
/// Status 201
Property Individual As CONNECTORSPKG.ZorgAB.Api.Client.model.Individual;

/// Implement operationId : individualsPOST
/// post /individuals
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "201" {
		Set ..Individual = ##class(CONNECTORSPKG.ZorgAB.Api.Client.model.Individual).%New()
		Set ..status = ..Individual.%JSONImport(httpResponse.Data)
		Return sc
	}
	Return sc
}

Storage Default
{
<Data name="individualsPOSTDefaultData">
<Subscript>"individualsPOST"</Subscript>
<Value name="1">
<Value>Individual</Value>
</Value>
</Data>
<DefaultData>individualsPOSTDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
