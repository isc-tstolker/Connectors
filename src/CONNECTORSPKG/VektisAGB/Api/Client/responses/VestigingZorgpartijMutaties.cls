Class CONNECTORSPKG.VektisAGB.Api.Client.responses.VestigingZorgpartijMutaties Extends CONNECTORSPKG.VektisAGB.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 200 content-type = application/json
/// Mutatieshttp status code = 200 content-type = text/json
/// Mutatieshttp status code = 200 content-type = application/problem+json
/// Mutatieshttp status code = 200 content-type = application/xml
/// Mutatieshttp status code = 200 content-type = text/xml
/// Mutaties
Property v1ZorgpartijZorgpartijMutaties As CONNECTORSPKG.VektisAGB.Api.Client.model.v1ZorgpartijZorgpartijMutaties(XMLNAME = "Mutaties");

/// Implement operationId : VestigingZorgpartijMutaties
/// get /v2/vestigingen/mutaties/{vanaf}
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "200" {
		Set ..v1ZorgpartijZorgpartijMutaties = ##class(CONNECTORSPKG.VektisAGB.Api.Client.model.v1ZorgpartijZorgpartijMutaties).%New()
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
		Do reader.Correlate("Mutaties","CONNECTORSPKG.VektisAGB.Api.Client.model.v1ZorgpartijZorgpartijMutaties")
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
<Data name="VestigingZorgpartijMutatiesDefaultData">
<Subscript>"VestigingZorgpartijMutaties"</Subscript>
<Value name="1">
<Value>v1ZorgpartijZorgpartijMutaties</Value>
</Value>
</Data>
<DefaultData>VestigingZorgpartijMutatiesDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
