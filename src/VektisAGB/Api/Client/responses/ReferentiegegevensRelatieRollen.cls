Class CONNECTORSPKG.VektisAGB.Api.Client.responses.ReferentiegegevensRelatieRollen Extends CONNECTORSPKG.VektisAGB.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 200 content-type = application/json
/// Relatierollenhttp status code = 200 content-type = text/json
/// Relatierollenhttp status code = 200 content-type = application/problem+json
/// Relatierollenhttp status code = 200 content-type = application/xml
/// Relatierollenhttp status code = 200 content-type = text/xml
/// Relatierollen
Property ListOfReferentiegegevensRelatieRol As list Of CONNECTORSPKG.VektisAGB.Api.Client.model.ReferentiegegevensRelatieRol;

/// Implement operationId : ReferentiegegevensRelatieRollen
/// get /v2/relatierollen
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "200" {
		Set array = [].%FromJSON(httpResponse.Data), iterator = array.%GetIterator()
		While iterator.%GetNext(.index, .item) {
			Set obj = ##class(CONNECTORSPKG.VektisAGB.Api.Client.model.ReferentiegegevensRelatieRol).%New()
			Do obj.%JSONImport(item), ..ListOfReferentiegegevensRelatieRol.Insert(obj)
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
		Do reader.Correlate("Rol","CONNECTORSPKG.VektisAGB.Api.Client.model.ReferentiegegevensRelatieRol")
		While reader.Next(.ReferentiegegevensRelatieRol, .sc) {
			Return:$$$ISERR(sc) sc
			Do ..ListOfReferentiegegevensRelatieRol.Insert(ReferentiegegevensRelatieRol)
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
<Data name="ReferentiegegevensRelatieRollenDefaultData">
<Subscript>"ReferentiegegevensRelatieRollen"</Subscript>
<Value name="1">
<Value>ListOfReferentiegegevensRelatieRol</Value>
</Value>
</Data>
<DefaultData>ReferentiegegevensRelatieRollenDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
