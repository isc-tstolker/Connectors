Class CONNECTORSPKG.VektisAGB.Api.Client.responses.ReferentiegegevensRelatieTypes Extends CONNECTORSPKG.VektisAGB.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 200 content-type = application/json
/// Relatietypeshttp status code = 200 content-type = text/json
/// Relatietypeshttp status code = 200 content-type = application/problem+json
/// Relatietypeshttp status code = 200 content-type = application/xml
/// Relatietypeshttp status code = 200 content-type = text/xml
/// Relatietypes
Property ListOfReferentiegegevensRelatieType As list Of CONNECTORSPKG.VektisAGB.Api.Client.model.ReferentiegegevensRelatieType;

/// Implement operationId : ReferentiegegevensRelatieTypes
/// get /v2/relatietypes
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "200" {
		Set array = [].%FromJSON(httpResponse.Data), iterator = array.%GetIterator()
		While iterator.%GetNext(.index, .item) {
			Set obj = ##class(CONNECTORSPKG.VektisAGB.Api.Client.model.ReferentiegegevensRelatieType).%New()
			Do obj.%JSONImport(item), ..ListOfReferentiegegevensRelatieType.Insert(obj)
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
		Do reader.Correlate("Type","CONNECTORSPKG.VektisAGB.Api.Client.model.ReferentiegegevensRelatieType")
		While reader.Next(.ReferentiegegevensRelatieType, .sc) {
			Return:$$$ISERR(sc) sc
			Do ..ListOfReferentiegegevensRelatieType.Insert(ReferentiegegevensRelatieType)
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
<Data name="ReferentiegegevensRelatieTypesDefaultData">
<Subscript>"ReferentiegegevensRelatieTypes"</Subscript>
<Value name="1">
<Value>ListOfReferentiegegevensRelatieType</Value>
</Value>
</Data>
<DefaultData>ReferentiegegevensRelatieTypesDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
