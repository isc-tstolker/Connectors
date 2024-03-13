Class CONNECTORSPKG.ZorgAB.Api.Client.responses.uziuziNumberGET Extends CONNECTORSPKG.ZorgAB.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 200 content-type = application/json
/// Status 200
Property Individual As CONNECTORSPKG.ZorgAB.Api.Client.model.Individual;

/// Implement operationId : uziuziNumberGET
/// get /uzi/{uziNumber}
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "200" {
		Set ..Individual = ##class(CONNECTORSPKG.ZorgAB.Api.Client.model.Individual).%New()
		Set ..status = ..Individual.%JSONImport(httpResponse.Data)
		Return sc
	}
	Return sc
}

Storage Default
{
<Data name="uziuziNumberGETDefaultData">
<Subscript>"uziuziNumberGET"</Subscript>
<Value name="1">
<Value>Individual</Value>
</Value>
</Data>
<DefaultData>uziuziNumberGETDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
