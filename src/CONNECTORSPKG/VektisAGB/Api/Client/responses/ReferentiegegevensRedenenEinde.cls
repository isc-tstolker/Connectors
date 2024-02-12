Class CONNECTORSPKG.VektisAGB.Api.Client.responses.ReferentiegegevensRedenenEinde Extends CONNECTORSPKG.VektisAGB.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 200 content-type = application/json
/// Redenen voor beeindigen erkenningenhttp status code = 200 content-type = text/json
/// Redenen voor beeindigen erkenningenhttp status code = 200 content-type = application/problem+json
/// Redenen voor beeindigen erkenningenhttp status code = 200 content-type = application/xml
/// Redenen voor beeindigen erkenningenhttp status code = 200 content-type = text/xml
/// Redenen voor beeindigen erkenningen
Property ListOfReferentiegegevensRedenenEinde As list Of CONNECTORSPKG.VektisAGB.Api.Client.model.ReferentiegegevensRedenenEinde;

/// Implement operationId : ReferentiegegevensRedenenEinde
/// get /v2/redeneneinde
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "200" {
		Set array = [].%FromJSON(httpResponse.Data), iterator = array.%GetIterator()
		While iterator.%GetNext(.index, .item) {
			Set obj = ##class(CONNECTORSPKG.VektisAGB.Api.Client.model.ReferentiegegevensRedenenEinde).%New()
			Do obj.%JSONImport(item), ..ListOfReferentiegegevensRedenenEinde.Insert(obj)
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
		Do reader.Correlate("RedenenEinde","CONNECTORSPKG.VektisAGB.Api.Client.model.ReferentiegegevensRedenenEinde")
		While reader.Next(.ReferentiegegevensRedenenEinde, .sc) {
			Return:$$$ISERR(sc) sc
			Do ..ListOfReferentiegegevensRedenenEinde.Insert(ReferentiegegevensRedenenEinde)
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
<Data name="ReferentiegegevensRedenenEindeDefaultData">
<Subscript>"ReferentiegegevensRedenenEinde"</Subscript>
<Value name="1">
<Value>ListOfReferentiegegevensRedenenEinde</Value>
</Value>
</Data>
<DefaultData>ReferentiegegevensRedenenEindeDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
