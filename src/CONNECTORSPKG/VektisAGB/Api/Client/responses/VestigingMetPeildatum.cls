Class CONNECTORSPKG.VektisAGB.Api.Client.responses.VestigingMetPeildatum Extends CONNECTORSPKG.VektisAGB.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 200 content-type = application/json
/// Vestiginghttp status code = 200 content-type = text/json
/// Vestiginghttp status code = 200 content-type = application/problem+json
/// Vestiginghttp status code = 200 content-type = application/xml
/// Vestiginghttp status code = 200 content-type = text/xml
/// Vestiging
Property v2VestigingVestiging As CONNECTORSPKG.VektisAGB.Api.Client.model.v2VestigingVestiging(XMLNAME = "Vestiging");

/// Implement operationId : VestigingMetPeildatum
/// get /v2/vestigingen/{agbcode}/{peildatum}
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "200" {
		Set ..v2VestigingVestiging = ##class(CONNECTORSPKG.VektisAGB.Api.Client.model.v2VestigingVestiging).%New()
		Set ..status = ..v2VestigingVestiging.%JSONImport(httpResponse.Data)
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
		Do reader.Correlate("Vestiging","CONNECTORSPKG.VektisAGB.Api.Client.model.v2VestigingVestiging")
		Do reader.Next(.v2VestigingVestiging, .sc)
		If $$$ISERR(sc) Quit sc
		Set ..v2VestigingVestiging = v2VestigingVestiging
		Return sc
	}
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="text/xml",httpResponse.StatusCode = "200" {
		$$$ThrowStatus($$$ERROR($$$NotImplemented))
	}
	Return sc
}

Storage Default
{
<Data name="VestigingMetPeildatumDefaultData">
<Subscript>"VestigingMetPeildatum"</Subscript>
<Value name="1">
<Value>v2VestigingVestiging</Value>
</Value>
</Data>
<DefaultData>VestigingMetPeildatumDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
