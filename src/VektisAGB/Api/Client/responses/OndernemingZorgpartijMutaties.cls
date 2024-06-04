Class VektisAGB.Api.Client.responses.OndernemingZorgpartijMutaties Extends VektisAGB.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 200 content-type = application/json
/// Mutatieshttp status code = 200 content-type = text/json
/// Mutatieshttp status code = 200 content-type = application/problem+json
/// Mutatieshttp status code = 200 content-type = application/xml
/// Mutatieshttp status code = 200 content-type = text/xml
/// Mutaties
Property v1ZorgpartijZorgpartijMutaties As VektisAGB.Api.Client.model.v1ZorgpartijZorgpartijMutaties(XMLNAME = "Mutaties");

/// Implement operationId : OndernemingZorgpartijMutaties
/// get /v2/ondernemingen/mutaties/{vanaf}
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "200" {
		Set ..v1ZorgpartijZorgpartijMutaties = ##class(VektisAGB.Api.Client.model.v1ZorgpartijZorgpartijMutaties).%New()
		Set ..status = ..v1ZorgpartijZorgpartijMutaties.%JSONImport(httpResponse.Data)
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
		Do reader.Correlate("Mutaties","VektisAGB.Api.Client.model.v1ZorgpartijZorgpartijMutaties")
		Do reader.Next(.v1ZorgpartijZorgpartijMutaties, .sc)
		If $$$ISERR(sc) Quit sc
		Set ..v1ZorgpartijZorgpartijMutaties = v1ZorgpartijZorgpartijMutaties
		Return sc
	}
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="text/xml",httpResponse.StatusCode = "200" {
		$$$ThrowStatus($$$ERROR($$$NotImplemented))
	}
	Return sc
}

Storage Default
{
<Data name="OndernemingZorgpartijMutatiesDefaultData">
<Subscript>"OndernemingZorgpartijMutaties"</Subscript>
<Value name="1">
<Value>v1ZorgpartijZorgpartijMutaties</Value>
</Value>
</Data>
<DefaultData>OndernemingZorgpartijMutatiesDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
