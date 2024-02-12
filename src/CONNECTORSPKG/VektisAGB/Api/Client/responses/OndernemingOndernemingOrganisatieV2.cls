Class CONNECTORSPKG.VektisAGB.Api.Client.responses.OndernemingOndernemingOrganisatieV2 Extends CONNECTORSPKG.VektisAGB.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 200 content-type = application/json
/// Onderneminghttp status code = 200 content-type = text/json
/// Onderneminghttp status code = 200 content-type = application/problem+json
/// Onderneminghttp status code = 200 content-type = application/xml
/// Onderneminghttp status code = 200 content-type = text/xml
/// Onderneming
Property v2OndernemingOndernemingOrganisatie As CONNECTORSPKG.VektisAGB.Api.Client.model.v2OndernemingOndernemingOrganisatie(XMLNAME = "Onderneming");

/// Implement operationId : OndernemingOndernemingOrganisatieV2
/// get /v2/ondernemingen/{agbcode}/relaties/organisatie
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "200" {
		Set ..v2OndernemingOndernemingOrganisatie = ##class(CONNECTORSPKG.VektisAGB.Api.Client.model.v2OndernemingOndernemingOrganisatie).%New()
		Set ..status = ..v2OndernemingOndernemingOrganisatie.%JSONImport(httpResponse.Data)
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
		Do reader.Correlate("Onderneming","CONNECTORSPKG.VektisAGB.Api.Client.model.v2OndernemingOndernemingOrganisatie")
		Do reader.Next(.v2OndernemingOndernemingOrganisatie, .sc)
		If $$$ISERR(sc) Quit sc
		Set ..v2OndernemingOndernemingOrganisatie = v2OndernemingOndernemingOrganisatie
		Return sc
	}
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="text/xml",httpResponse.StatusCode = "200" {
		$$$ThrowStatus($$$ERROR($$$NotImplemented))
	}
	Return sc
}

Storage Default
{
<Data name="OndernemingOndernemingOrganisatieV2DefaultData">
<Subscript>"OndernemingOndernemingOrganisatieV2"</Subscript>
<Value name="1">
<Value>v2OndernemingOndernemingOrganisatie</Value>
</Value>
</Data>
<DefaultData>OndernemingOndernemingOrganisatieV2DefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
