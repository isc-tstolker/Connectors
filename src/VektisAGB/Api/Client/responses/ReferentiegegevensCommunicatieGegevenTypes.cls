Class VektisAGB.Api.Client.responses.ReferentiegegevensCommunicatieGegevenTypes Extends VektisAGB.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 200 content-type = application/json
/// Communicatiegegeventypeshttp status code = 200 content-type = text/json
/// Communicatiegegeventypeshttp status code = 200 content-type = application/problem+json
/// Communicatiegegeventypeshttp status code = 200 content-type = application/xml
/// Communicatiegegeventypeshttp status code = 200 content-type = text/xml
/// Communicatiegegeventypes
Property ListOfReferentiegegevensCommunicatiegegevenType As list Of VektisAGB.Api.Client.model.ReferentiegegevensCommunicatiegegevenType;

/// Implement operationId : ReferentiegegevensCommunicatieGegevenTypes
/// get /v2/communicatiegegeventypes
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "200" {
		Set array = [].%FromJSON(httpResponse.Data), iterator = array.%GetIterator()
		While iterator.%GetNext(.index, .item) {
			Set obj = ##class(VektisAGB.Api.Client.model.ReferentiegegevensCommunicatiegegevenType).%New()
			Do obj.%JSONImport(item), ..ListOfReferentiegegevensCommunicatiegegevenType.Insert(obj)
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
		Do reader.Correlate("CommunicatiegegevenType","VektisAGB.Api.Client.model.ReferentiegegevensCommunicatiegegevenType")
		While reader.Next(.ReferentiegegevensCommunicatiegegevenType, .sc) {
			Return:$$$ISERR(sc) sc
			Do ..ListOfReferentiegegevensCommunicatiegegevenType.Insert(ReferentiegegevensCommunicatiegegevenType)
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
<Data name="ReferentiegegevensCommunicatieGegevenTypesDefaultData">
<Subscript>"ReferentiegegevensCommunicatieGegevenTypes"</Subscript>
<Value name="1">
<Value>ListOfReferentiegegevensCommunicatiegegevenType</Value>
</Value>
</Data>
<DefaultData>ReferentiegegevensCommunicatieGegevenTypesDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
