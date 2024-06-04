Class VektisAGB.Api.Client.responses.ReferentiegegevensAcademischeTitels Extends VektisAGB.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 200 content-type = application/json
/// Academische titelshttp status code = 200 content-type = text/json
/// Academische titelshttp status code = 200 content-type = application/problem+json
/// Academische titelshttp status code = 200 content-type = application/xml
/// Academische titelshttp status code = 200 content-type = text/xml
/// Academische titels
Property ListOfReferentiegegevensAcademischeTitel As list Of VektisAGB.Api.Client.model.ReferentiegegevensAcademischeTitel;

/// Implement operationId : ReferentiegegevensAcademischeTitels
/// get /v2/academischetitels
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "200" {
		Set array = [].%FromJSON(httpResponse.Data), iterator = array.%GetIterator()
		While iterator.%GetNext(.index, .item) {
			Set obj = ##class(VektisAGB.Api.Client.model.ReferentiegegevensAcademischeTitel).%New()
			Do obj.%JSONImport(item), ..ListOfReferentiegegevensAcademischeTitel.Insert(obj)
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
		Do reader.Correlate("Academischetitel","VektisAGB.Api.Client.model.ReferentiegegevensAcademischeTitel")
		While reader.Next(.ReferentiegegevensAcademischeTitel, .sc) {
			Return:$$$ISERR(sc) sc
			Do ..ListOfReferentiegegevensAcademischeTitel.Insert(ReferentiegegevensAcademischeTitel)
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
<Data name="ReferentiegegevensAcademischeTitelsDefaultData">
<Subscript>"ReferentiegegevensAcademischeTitels"</Subscript>
<Value name="1">
<Value>ListOfReferentiegegevensAcademischeTitel</Value>
</Value>
</Data>
<DefaultData>ReferentiegegevensAcademischeTitelsDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
