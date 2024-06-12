Class DTSensors.Api.Client.responses.projectsprojectdataconnectorsdataconnectorPATCH Extends DTSensors.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 200 content-type = application/json
/// Data Connector updated successfully
Property DataConnector As DTSensors.Api.Client.model.DataConnector;

/// Implement operationId : projectsprojectdataconnectorsdataconnectorPATCH
/// patch /projects/{project}/dataconnectors/{dataconnector}
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
<Data name="projectsprojectdataconnectorsdataconnectorPATCHDefaultData">
<Subscript>"projectsprojectdataconnectorsdataconnectorPATCH"</Subscript>
<Value name="1">
<Value>DataConnector</Value>
</Value>
</Data>
<DefaultData>projectsprojectdataconnectorsdataconnectorPATCHDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
