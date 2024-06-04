Class VektisAGB.Api.Client.responses.ReferentiegegevensGeslachten Extends VektisAGB.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 200 content-type = application/json
/// Geslachtenhttp status code = 200 content-type = text/json
/// Geslachtenhttp status code = 200 content-type = application/problem+json
/// Geslachtenhttp status code = 200 content-type = application/xml
/// Geslachtenhttp status code = 200 content-type = text/xml
/// Geslachten
Property ListOfReferentiegegevensGeslacht As list Of VektisAGB.Api.Client.model.ReferentiegegevensGeslacht;

/// Implement operationId : ReferentiegegevensGeslachten
/// get /v2/geslachten
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "200" {
		Set array = [].%FromJSON(httpResponse.Data), iterator = array.%GetIterator()
		While iterator.%GetNext(.index, .item) {
			Set obj = ##class(VektisAGB.Api.Client.model.ReferentiegegevensGeslacht).%New()
			Do obj.%JSONImport(item), ..ListOfReferentiegegevensGeslacht.Insert(obj)
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
		Do reader.Correlate("Geslacht","VektisAGB.Api.Client.model.ReferentiegegevensGeslacht")
		While reader.Next(.ReferentiegegevensGeslacht, .sc) {
			Return:$$$ISERR(sc) sc
			Do ..ListOfReferentiegegevensGeslacht.Insert(ReferentiegegevensGeslacht)
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
<Data name="ReferentiegegevensGeslachtenDefaultData">
<Subscript>"ReferentiegegevensGeslachten"</Subscript>
<Value name="1">
<Value>ListOfReferentiegegevensGeslacht</Value>
</Value>
</Data>
<DefaultData>ReferentiegegevensGeslachtenDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
