Class VektisAGB.Api.Client.responses.ReferentiegegevensProvincies Extends VektisAGB.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 200 content-type = application/json
/// Provincieshttp status code = 200 content-type = text/json
/// Provincieshttp status code = 200 content-type = application/problem+json
/// Provincieshttp status code = 200 content-type = application/xml
/// Provincieshttp status code = 200 content-type = text/xml
/// Provincies
Property ListOfReferentiegegevensProvincie As list Of VektisAGB.Api.Client.model.ReferentiegegevensProvincie;

/// Implement operationId : ReferentiegegevensProvincies
/// get /v2/provincies
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "200" {
		Set array = [].%FromJSON(httpResponse.Data), iterator = array.%GetIterator()
		While iterator.%GetNext(.index, .item) {
			Set obj = ##class(VektisAGB.Api.Client.model.ReferentiegegevensProvincie).%New()
			Do obj.%JSONImport(item), ..ListOfReferentiegegevensProvincie.Insert(obj)
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
		Do reader.Correlate("Provincie","VektisAGB.Api.Client.model.ReferentiegegevensProvincie")
		While reader.Next(.ReferentiegegevensProvincie, .sc) {
			Return:$$$ISERR(sc) sc
			Do ..ListOfReferentiegegevensProvincie.Insert(ReferentiegegevensProvincie)
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
<Data name="ReferentiegegevensProvinciesDefaultData">
<Subscript>"ReferentiegegevensProvincies"</Subscript>
<Value name="1">
<Value>ListOfReferentiegegevensProvincie</Value>
</Value>
</Data>
<DefaultData>ReferentiegegevensProvinciesDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
