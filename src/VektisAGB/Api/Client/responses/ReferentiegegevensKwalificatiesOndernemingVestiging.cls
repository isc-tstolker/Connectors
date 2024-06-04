Class VektisAGB.Api.Client.responses.ReferentiegegevensKwalificatiesOndernemingVestiging Extends VektisAGB.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 200 content-type = application/json
/// Kwalificatieshttp status code = 200 content-type = text/json
/// Kwalificatieshttp status code = 200 content-type = application/problem+json
/// Kwalificatieshttp status code = 200 content-type = application/xml
/// Kwalificatieshttp status code = 200 content-type = text/xml
/// Kwalificaties
Property ListOfReferentiegegevensKwalificatie As list Of VektisAGB.Api.Client.model.ReferentiegegevensKwalificatie;

/// Implement operationId : ReferentiegegevensKwalificatiesOndernemingVestiging
/// get /v2/kwalificaties/ondernemingvestiging
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "200" {
		Set array = [].%FromJSON(httpResponse.Data), iterator = array.%GetIterator()
		While iterator.%GetNext(.index, .item) {
			Set obj = ##class(VektisAGB.Api.Client.model.ReferentiegegevensKwalificatie).%New()
			Do obj.%JSONImport(item), ..ListOfReferentiegegevensKwalificatie.Insert(obj)
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
		Do reader.Correlate("Kwalificatie","VektisAGB.Api.Client.model.ReferentiegegevensKwalificatie")
		While reader.Next(.ReferentiegegevensKwalificatie, .sc) {
			Return:$$$ISERR(sc) sc
			Do ..ListOfReferentiegegevensKwalificatie.Insert(ReferentiegegevensKwalificatie)
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
<Data name="ReferentiegegevensKwalificatiesOndernemingVestigingDefaultData">
<Subscript>"ReferentiegegevensKwalificatiesOndernemingVestiging"</Subscript>
<Value name="1">
<Value>ListOfReferentiegegevensKwalificatie</Value>
</Value>
</Data>
<DefaultData>ReferentiegegevensKwalificatiesOndernemingVestigingDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
