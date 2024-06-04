Class ZorgAB.Api.Client.responses.applicationsapplicationIdGET Extends ZorgAB.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 200 content-type = application/json
/// Status 200
Property LSPApplication As ZorgAB.Api.Client.model.LSPApplication;

/// Implement operationId : applicationsapplicationIdGET
/// get /applications/{applicationId}
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "200" {
		Set ..LSPApplication = ##class(ZorgAB.Api.Client.model.LSPApplication).%New()
		Set ..status = ..LSPApplication.%JSONImport(httpResponse.Data)
		Return sc
	}
	Return sc
}

Storage Default
{
<Data name="applicationsapplicationIdGETDefaultData">
<Subscript>"applicationsapplicationIdGET"</Subscript>
<Value name="1">
<Value>LSPApplication</Value>
</Value>
</Data>
<DefaultData>applicationsapplicationIdGETDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
