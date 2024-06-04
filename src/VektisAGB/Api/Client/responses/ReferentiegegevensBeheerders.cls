Class VektisAGB.Api.Client.responses.ReferentiegegevensBeheerders Extends VektisAGB.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 200 content-type = application/json
/// Beheerdershttp status code = 200 content-type = text/json
/// Beheerdershttp status code = 200 content-type = application/problem+json
/// Beheerdershttp status code = 200 content-type = application/xml
/// Beheerdershttp status code = 200 content-type = text/xml
/// Beheerders
Property ListOfReferentiegegevensBeheerder As list Of VektisAGB.Api.Client.model.ReferentiegegevensBeheerder;

/// Implement operationId : ReferentiegegevensBeheerders
/// get /v2/beheerders
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "200" {
		Set array = [].%FromJSON(httpResponse.Data), iterator = array.%GetIterator()
		While iterator.%GetNext(.index, .item) {
			Set obj = ##class(VektisAGB.Api.Client.model.ReferentiegegevensBeheerder).%New()
			Do obj.%JSONImport(item), ..ListOfReferentiegegevensBeheerder.Insert(obj)
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
		Do reader.Correlate("Beheerder","VektisAGB.Api.Client.model.ReferentiegegevensBeheerder")
		While reader.Next(.ReferentiegegevensBeheerder, .sc) {
			Return:$$$ISERR(sc) sc
			Do ..ListOfReferentiegegevensBeheerder.Insert(ReferentiegegevensBeheerder)
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
<Data name="ReferentiegegevensBeheerdersDefaultData">
<Subscript>"ReferentiegegevensBeheerders"</Subscript>
<Value name="1">
<Value>ListOfReferentiegegevensBeheerder</Value>
</Value>
</Data>
<DefaultData>ReferentiegegevensBeheerdersDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
