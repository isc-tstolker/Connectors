Class DTSensors.Api.Client.responses.projectsprojectdataconnectorsPOST Extends DTSensors.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 200 content-type = application/json
/// Data Connector created successfully
Property DataConnector As DTSensors.Api.Client.model.DataConnector;

/// Implement operationId : projectsprojectdataconnectorsPOST
/// post /projects/{project}/dataconnectors
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "200" {
		Set ..DataConnector = ##class(DTSensors.Api.Client.model.DataConnector).%New()
		Set ..status = ..DataConnector.%JSONImport(httpResponse.Data)
		Return sc
	}
	Return sc
}

Storage Default
{
<Data name="projectsprojectdataconnectorsPOSTDefaultData">
<Subscript>"projectsprojectdataconnectorsPOST"</Subscript>
<Value name="1">
<Value>DataConnector</Value>
</Value>
</Data>
<DefaultData>projectsprojectdataconnectorsPOSTDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
