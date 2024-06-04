Class VektisAGB.Api.Client.responses.ReferentiegegevensWerkzaamBijRollen Extends VektisAGB.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 200 content-type = application/json
/// Rollenhttp status code = 200 content-type = text/json
/// Rollenhttp status code = 200 content-type = application/problem+json
/// Rollenhttp status code = 200 content-type = application/xml
/// Rollenhttp status code = 200 content-type = text/xml
/// Rollen
Property ListOfReferentiegegevensRol As list Of VektisAGB.Api.Client.model.ReferentiegegevensRol;

/// Implement operationId : ReferentiegegevensWerkzaamBijRollen
/// get /v2/relaties/werkzaambij/zorgverlener/rollen
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "200" {
		Set array = [].%FromJSON(httpResponse.Data), iterator = array.%GetIterator()
		While iterator.%GetNext(.index, .item) {
			Set obj = ##class(VektisAGB.Api.Client.model.ReferentiegegevensRol).%New()
			Do obj.%JSONImport(item), ..ListOfReferentiegegevensRol.Insert(obj)
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
		Do reader.Correlate("Rol","VektisAGB.Api.Client.model.ReferentiegegevensRol")
		While reader.Next(.ReferentiegegevensRol, .sc) {
			Return:$$$ISERR(sc) sc
			Do ..ListOfReferentiegegevensRol.Insert(ReferentiegegevensRol)
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
<Data name="ReferentiegegevensWerkzaamBijRollenDefaultData">
<Subscript>"ReferentiegegevensWerkzaamBijRollen"</Subscript>
<Value name="1">
<Value>ListOfReferentiegegevensRol</Value>
</Value>
</Data>
<DefaultData>ReferentiegegevensWerkzaamBijRollenDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
