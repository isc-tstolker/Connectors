Class CONNECTORSPKG.ZorgAB.Api.Client.responses.individualsidPATCH Extends CONNECTORSPKG.ZorgAB.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 202 content-type = application/json
/// Status 202
Property Individual As CONNECTORSPKG.ZorgAB.Api.Client.model.Individual;

/// Implement operationId : individualsidPATCH
/// patch /individuals/{id}
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "202" {
		Set ..Individual = ##class(CONNECTORSPKG.ZorgAB.Api.Client.model.Individual).%New()
		Set ..status = ..Individual.%JSONImport(httpResponse.Data)
		Return sc
	}
	Return sc
}

Storage Default
{
<Data name="individualsidPATCHDefaultData">
<Subscript>"individualsidPATCH"</Subscript>
<Value name="1">
<Value>Individual</Value>
</Value>
</Data>
<DefaultData>individualsidPATCHDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
