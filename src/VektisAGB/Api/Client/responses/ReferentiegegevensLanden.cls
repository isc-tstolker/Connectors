Class CONNECTORSPKG.VektisAGB.Api.Client.responses.ReferentiegegevensLanden Extends CONNECTORSPKG.VektisAGB.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 200 content-type = application/json
/// Landenhttp status code = 200 content-type = text/json
/// Landenhttp status code = 200 content-type = application/problem+json
/// Landenhttp status code = 200 content-type = application/xml
/// Landenhttp status code = 200 content-type = text/xml
/// Landen
Property ListOfReferentiegegevensLand As list Of CONNECTORSPKG.VektisAGB.Api.Client.model.ReferentiegegevensLand;

/// Implement operationId : ReferentiegegevensLanden
/// get /v2/landen
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "200" {
		Set array = [].%FromJSON(httpResponse.Data), iterator = array.%GetIterator()
		While iterator.%GetNext(.index, .item) {
			Set obj = ##class(CONNECTORSPKG.VektisAGB.Api.Client.model.ReferentiegegevensLand).%New()
			Do obj.%JSONImport(item), ..ListOfReferentiegegevensLand.Insert(obj)
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
		Do reader.Correlate("Land","CONNECTORSPKG.VektisAGB.Api.Client.model.ReferentiegegevensLand")
		While reader.Next(.ReferentiegegevensLand, .sc) {
			Return:$$$ISERR(sc) sc
			Do ..ListOfReferentiegegevensLand.Insert(ReferentiegegevensLand)
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
<Data name="ReferentiegegevensLandenDefaultData">
<Subscript>"ReferentiegegevensLanden"</Subscript>
<Value name="1">
<Value>ListOfReferentiegegevensLand</Value>
</Value>
</Data>
<DefaultData>ReferentiegegevensLandenDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
