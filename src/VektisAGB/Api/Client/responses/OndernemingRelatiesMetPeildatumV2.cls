Class VektisAGB.Api.Client.responses.OndernemingRelatiesMetPeildatumV2 Extends VektisAGB.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 200 content-type = application/json
/// Relatieshttp status code = 200 content-type = text/json
/// Relatieshttp status code = 200 content-type = application/problem+json
/// Relatieshttp status code = 200 content-type = application/xml
/// Relatieshttp status code = 200 content-type = text/xml
/// Relaties
Property v2RelatieZorgpartijRelaties As VektisAGB.Api.Client.model.v2RelatieZorgpartijRelaties(XMLNAME = "Zorgpartij");

/// Implement operationId : OndernemingRelatiesMetPeildatumV2
/// get /v2/ondernemingen/{agbcode}/relaties/{peildatum}
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "200" {
		Set ..v2RelatieZorgpartijRelaties = ##class(VektisAGB.Api.Client.model.v2RelatieZorgpartijRelaties).%New()
		Set ..status = ..v2RelatieZorgpartijRelaties.%JSONImport(httpResponse.Data)
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
		Do reader.Correlate("Zorgpartij","VektisAGB.Api.Client.model.v2RelatieZorgpartijRelaties")
		Do reader.Next(.v2RelatieZorgpartijRelaties, .sc)
		If $$$ISERR(sc) Quit sc
		Set ..v2RelatieZorgpartijRelaties = v2RelatieZorgpartijRelaties
		Return sc
	}
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="text/xml",httpResponse.StatusCode = "200" {
		$$$ThrowStatus($$$ERROR($$$NotImplemented))
	}
	Return sc
}

Storage Default
{
<Data name="OndernemingRelatiesMetPeildatumV2DefaultData">
<Subscript>"OndernemingRelatiesMetPeildatumV2"</Subscript>
<Value name="1">
<Value>v2RelatieZorgpartijRelaties</Value>
</Value>
</Data>
<DefaultData>OndernemingRelatiesMetPeildatumV2DefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
