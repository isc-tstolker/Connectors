Class CONNECTORSPKG.VektisAGB.Api.Client.responses.ZorgverlenerBasisMetPeildatum Extends CONNECTORSPKG.VektisAGB.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 200 content-type = application/json
/// Zorgverlenerhttp status code = 200 content-type = text/json
/// Zorgverlenerhttp status code = 200 content-type = application/problem+json
/// Zorgverlenerhttp status code = 200 content-type = application/xml
/// Zorgverlenerhttp status code = 200 content-type = text/xml
/// Zorgverlener
Property v2ZorgverlenerZorgverlener As CONNECTORSPKG.VektisAGB.Api.Client.model.v2ZorgverlenerZorgverlener(XMLNAME = "Zorgverlener");

/// Implement operationId : ZorgverlenerBasisMetPeildatum
/// get /v2/zorgverleners/{agbcode}/{peildatum}
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "200" {
		Set ..v2ZorgverlenerZorgverlener = ##class(CONNECTORSPKG.VektisAGB.Api.Client.model.v2ZorgverlenerZorgverlener).%New()
		Set ..status = ..v2ZorgverlenerZorgverlener.%JSONImport(httpResponse.Data)
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
		Do reader.Correlate("Zorgverlener","CONNECTORSPKG.VektisAGB.Api.Client.model.v2ZorgverlenerZorgverlener")
		Do reader.Next(.v2ZorgverlenerZorgverlener, .sc)
		If $$$ISERR(sc) Quit sc
		Set ..v2ZorgverlenerZorgverlener = v2ZorgverlenerZorgverlener
		Return sc
	}
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="text/xml",httpResponse.StatusCode = "200" {
		$$$ThrowStatus($$$ERROR($$$NotImplemented))
	}
	Return sc
}

Storage Default
{
<Data name="ZorgverlenerBasisMetPeildatumDefaultData">
<Subscript>"ZorgverlenerBasisMetPeildatum"</Subscript>
<Value name="1">
<Value>v2ZorgverlenerZorgverlener</Value>
</Value>
</Data>
<DefaultData>ZorgverlenerBasisMetPeildatumDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
