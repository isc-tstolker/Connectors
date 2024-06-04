Class CONNECTORSPKG.VektisAGB.Api.Client.responses.ReferentiegegevensDoelen Extends CONNECTORSPKG.VektisAGB.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 200 content-type = application/json
/// Doelenhttp status code = 200 content-type = text/json
/// Doelenhttp status code = 200 content-type = application/problem+json
/// Doelenhttp status code = 200 content-type = application/xml
/// Doelenhttp status code = 200 content-type = text/xml
/// Doelen
Property ListOfReferentiegegevensDoel As list Of CONNECTORSPKG.VektisAGB.Api.Client.model.ReferentiegegevensDoel;

/// Implement operationId : ReferentiegegevensDoelen
/// get /v2/doelen
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "200" {
		Set array = [].%FromJSON(httpResponse.Data), iterator = array.%GetIterator()
		While iterator.%GetNext(.index, .item) {
			Set obj = ##class(CONNECTORSPKG.VektisAGB.Api.Client.model.ReferentiegegevensDoel).%New()
			Do obj.%JSONImport(item), ..ListOfReferentiegegevensDoel.Insert(obj)
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
		Do reader.Correlate("Doel","CONNECTORSPKG.VektisAGB.Api.Client.model.ReferentiegegevensDoel")
		While reader.Next(.ReferentiegegevensDoel, .sc) {
			Return:$$$ISERR(sc) sc
			Do ..ListOfReferentiegegevensDoel.Insert(ReferentiegegevensDoel)
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
<Data name="ReferentiegegevensDoelenDefaultData">
<Subscript>"ReferentiegegevensDoelen"</Subscript>
<Value name="1">
<Value>ListOfReferentiegegevensDoel</Value>
</Value>
</Data>
<DefaultData>ReferentiegegevensDoelenDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
