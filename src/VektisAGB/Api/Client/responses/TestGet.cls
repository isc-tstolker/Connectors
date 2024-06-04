Class VektisAGB.Api.Client.responses.TestGet Extends VektisAGB.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 200 content-type = application/json
/// Testmodelhttp status code = 200 content-type = text/json
/// Testmodelhttp status code = 200 content-type = application/problem+json
/// Testmodelhttp status code = 200 content-type = application/xml
/// Testmodelhttp status code = 200 content-type = text/xml
/// Testmodel
Property TestModel As VektisAGB.Api.Client.model.TestModel(XMLNAME = "TestModel");

/// Implement operationId : TestGet
/// get /v2/test/{number}
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "200" {
		Set ..TestModel = ##class(VektisAGB.Api.Client.model.TestModel).%New()
		Set ..status = ..TestModel.%JSONImport(httpResponse.Data)
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
		Do reader.Correlate("TestModel","VektisAGB.Api.Client.model.TestModel")
		Do reader.Next(.TestModel, .sc)
		If $$$ISERR(sc) Quit sc
		Set ..TestModel = TestModel
		Return sc
	}
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="text/xml",httpResponse.StatusCode = "200" {
		$$$ThrowStatus($$$ERROR($$$NotImplemented))
	}
	Return sc
}

Storage Default
{
<Data name="TestGetDefaultData">
<Subscript>"TestGet"</Subscript>
<Value name="1">
<Value>TestModel</Value>
</Value>
</Data>
<DefaultData>TestGetDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
