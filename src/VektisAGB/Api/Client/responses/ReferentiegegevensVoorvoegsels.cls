Class CONNECTORSPKG.VektisAGB.Api.Client.responses.ReferentiegegevensVoorvoegsels Extends CONNECTORSPKG.VektisAGB.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 200 content-type = application/json
/// Voorvoegselshttp status code = 200 content-type = text/json
/// Voorvoegselshttp status code = 200 content-type = application/problem+json
/// Voorvoegselshttp status code = 200 content-type = application/xml
/// Voorvoegselshttp status code = 200 content-type = text/xml
/// Voorvoegsels
Property ListOfReferentiegegevensVoorvoegsel As list Of CONNECTORSPKG.VektisAGB.Api.Client.model.ReferentiegegevensVoorvoegsel;

/// Implement operationId : ReferentiegegevensVoorvoegsels
/// get /v2/voorvoegsels
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "200" {
		Set array = [].%FromJSON(httpResponse.Data), iterator = array.%GetIterator()
		While iterator.%GetNext(.index, .item) {
			Set obj = ##class(CONNECTORSPKG.VektisAGB.Api.Client.model.ReferentiegegevensVoorvoegsel).%New()
			Do obj.%JSONImport(item), ..ListOfReferentiegegevensVoorvoegsel.Insert(obj)
		}
		Return sc
	}
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="text/json",httpResponse.StatusCode = "200" {
		$$$ThrowStatus($$$ERROR($$$NotImplemented))
	}
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/problem+json",httpResponse.StatusCode = "200" {
		$$$ThrowStatus($$$ERROR($$$NotImplemented))
	}
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/xml",httpResponse.StatusCode = "200" {
		Set reader = ##class(%XML.Reader).%New()
		$$$QuitOnError(reader.OpenStream(httpResponse.Data))
		Do reader.Correlate("Voorvoegsel","CONNECTORSPKG.VektisAGB.Api.Client.model.ReferentiegegevensVoorvoegsel")
		While reader.Next(.ReferentiegegevensVoorvoegsel, .sc) {
			Return:$$$ISERR(sc) sc
			Do ..ListOfReferentiegegevensVoorvoegsel.Insert(ReferentiegegevensVoorvoegsel)
		}
		Return sc
	}
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="text/xml",httpResponse.StatusCode = "200" {
		$$$ThrowStatus($$$ERROR($$$NotImplemented))
	}
	Return sc
}

Storage Default
{
<Data name="ReferentiegegevensVoorvoegselsDefaultData">
<Subscript>"ReferentiegegevensVoorvoegsels"</Subscript>
<Value name="1">
<Value>ListOfReferentiegegevensVoorvoegsel</Value>
</Value>
</Data>
<DefaultData>ReferentiegegevensVoorvoegselsDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
