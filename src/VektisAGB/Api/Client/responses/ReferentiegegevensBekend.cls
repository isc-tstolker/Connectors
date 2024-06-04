Class CONNECTORSPKG.VektisAGB.Api.Client.responses.ReferentiegegevensBekend Extends CONNECTORSPKG.VektisAGB.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// Implement operationId : ReferentiegegevensBekend
/// get /v2/adres/correspondentie/{postcode}/{huisnummer}
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	Return sc
}

Storage Default
{
<Type>%Storage.Persistent</Type>
}

}
