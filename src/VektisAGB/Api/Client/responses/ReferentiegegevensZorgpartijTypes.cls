Class VektisAGB.Api.Client.responses.ReferentiegegevensZorgpartijTypes Extends VektisAGB.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 200 content-type = application/json
/// Zorgpartijtypeshttp status code = 200 content-type = text/json
/// Zorgpartijtypeshttp status code = 200 content-type = application/problem+json
/// Zorgpartijtypeshttp status code = 200 content-type = application/xml
/// Zorgpartijtypeshttp status code = 200 content-type = text/xml
/// Zorgpartijtypes
Property ListOfReferentiegegevensZorgpartijType As list Of VektisAGB.Api.Client.model.ReferentiegegevensZorgpartijType;

/// Implement operationId : ReferentiegegevensZorgpartijTypes
/// get /v2/zorgpartijtypes
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "200" {
		Set array = [].%FromJSON(httpResponse.Data), iterator = array.%GetIterator()
		While iterator.%GetNext(.index, .item) {
			Set obj = ##class(VektisAGB.Api.Client.model.ReferentiegegevensZorgpartijType).%New()
			Do obj.%JSONImport(item), ..ListOfReferentiegegevensZorgpartijType.Insert(obj)
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
		Do reader.Correlate("ZorgpartijType","VektisAGB.Api.Client.model.ReferentiegegevensZorgpartijType")
		While reader.Next(.ReferentiegegevensZorgpartijType, .sc) {
			Return:$$$ISERR(sc) sc
			Do ..ListOfReferentiegegevensZorgpartijType.Insert(ReferentiegegevensZorgpartijType)
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
<Data name="ReferentiegegevensZorgpartijTypesDefaultData">
<Subscript>"ReferentiegegevensZorgpartijTypes"</Subscript>
<Value name="1">
<Value>ListOfReferentiegegevensZorgpartijType</Value>
</Value>
</Data>
<DefaultData>ReferentiegegevensZorgpartijTypesDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
