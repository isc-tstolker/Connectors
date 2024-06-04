Class VektisAGB.Api.Client.responses.ReferentiegegevensErkenningen Extends VektisAGB.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 200 content-type = application/json
/// Erkenningenhttp status code = 200 content-type = text/json
/// Erkenningenhttp status code = 200 content-type = application/problem+json
/// Erkenningenhttp status code = 200 content-type = application/xml
/// Erkenningenhttp status code = 200 content-type = text/xml
/// Erkenningen
Property ListOfReferentiegegevensErkenning As list Of VektisAGB.Api.Client.model.ReferentiegegevensErkenning;

/// Implement operationId : ReferentiegegevensErkenningen
/// get /v2/erkenningen
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "200" {
		Set array = [].%FromJSON(httpResponse.Data), iterator = array.%GetIterator()
		While iterator.%GetNext(.index, .item) {
			Set obj = ##class(VektisAGB.Api.Client.model.ReferentiegegevensErkenning).%New()
			Do obj.%JSONImport(item), ..ListOfReferentiegegevensErkenning.Insert(obj)
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
		Do reader.Correlate("Erkenning","VektisAGB.Api.Client.model.ReferentiegegevensErkenning")
		While reader.Next(.ReferentiegegevensErkenning, .sc) {
			Return:$$$ISERR(sc) sc
			Do ..ListOfReferentiegegevensErkenning.Insert(ReferentiegegevensErkenning)
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
<Data name="ReferentiegegevensErkenningenDefaultData">
<Subscript>"ReferentiegegevensErkenningen"</Subscript>
<Value name="1">
<Value>ListOfReferentiegegevensErkenning</Value>
</Value>
</Data>
<DefaultData>ReferentiegegevensErkenningenDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
