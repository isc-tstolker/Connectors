Class VektisAGB.Api.Client.responses.ReferentiegegevensAdresTypes Extends VektisAGB.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 200 content-type = application/json
/// Adrestypeshttp status code = 200 content-type = text/json
/// Adrestypeshttp status code = 200 content-type = application/problem+json
/// Adrestypeshttp status code = 200 content-type = application/xml
/// Adrestypeshttp status code = 200 content-type = text/xml
/// Adrestypes
Property ListOfReferentiegegevensAdresType As list Of VektisAGB.Api.Client.model.ReferentiegegevensAdresType;

/// Implement operationId : ReferentiegegevensAdresTypes
/// get /v2/adrestypes
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "200" {
		Set array = [].%FromJSON(httpResponse.Data), iterator = array.%GetIterator()
		While iterator.%GetNext(.index, .item) {
			Set obj = ##class(VektisAGB.Api.Client.model.ReferentiegegevensAdresType).%New()
			Do obj.%JSONImport(item), ..ListOfReferentiegegevensAdresType.Insert(obj)
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
		Do reader.Correlate("AdresType","VektisAGB.Api.Client.model.ReferentiegegevensAdresType")
		While reader.Next(.ReferentiegegevensAdresType, .sc) {
			Return:$$$ISERR(sc) sc
			Do ..ListOfReferentiegegevensAdresType.Insert(ReferentiegegevensAdresType)
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
<Data name="ReferentiegegevensAdresTypesDefaultData">
<Subscript>"ReferentiegegevensAdresTypes"</Subscript>
<Value name="1">
<Value>ListOfReferentiegegevensAdresType</Value>
</Value>
</Data>
<DefaultData>ReferentiegegevensAdresTypesDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
