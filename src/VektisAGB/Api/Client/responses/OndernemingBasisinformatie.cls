Class VektisAGB.Api.Client.responses.OndernemingBasisinformatie Extends VektisAGB.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 200 content-type = application/json
/// Onderneminghttp status code = 200 content-type = text/json
/// Onderneminghttp status code = 200 content-type = application/problem+json
/// Onderneminghttp status code = 200 content-type = application/xml
/// Onderneminghttp status code = 200 content-type = text/xml
/// Onderneming
Property v2OndernemingOnderneming As VektisAGB.Api.Client.model.v2OndernemingOnderneming(XMLNAME = "Onderneming");

/// Implement operationId : OndernemingBasisinformatie
/// get /v2/ondernemingen/{agbcode}
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "200" {
		Set ..v2OndernemingOnderneming = ##class(VektisAGB.Api.Client.model.v2OndernemingOnderneming).%New()
		Set ..status = ..v2OndernemingOnderneming.%JSONImport(httpResponse.Data)
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
		Do reader.Correlate("Onderneming","VektisAGB.Api.Client.model.v2OndernemingOnderneming")
		Do reader.Next(.v2OndernemingOnderneming, .sc)
		If $$$ISERR(sc) Quit sc
		Set ..v2OndernemingOnderneming = v2OndernemingOnderneming
		Return sc
	}
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="text/xml",httpResponse.StatusCode = "200" {
		$$$ThrowStatus($$$ERROR($$$NotImplemented))
	}
	Return sc
}

Storage Default
{
<Data name="OndernemingBasisinformatieDefaultData">
<Subscript>"OndernemingBasisinformatie"</Subscript>
<Value name="1">
<Value>v2OndernemingOnderneming</Value>
</Value>
</Data>
<DefaultData>OndernemingBasisinformatieDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
