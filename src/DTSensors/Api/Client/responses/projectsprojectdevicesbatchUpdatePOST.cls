Class DTSensors.Api.Client.responses.projectsprojectdevicesbatchUpdatePOST Extends DTSensors.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 200 content-type = application/json
/// Batch update response. 
/// 
/// Note that a status code of `200` doesn't necessarily mean that all the Labels were 
/// successfully updated. Check if the `batchErrors` array is empty to make sure that 
/// all the requested changes were successful.
Property inlineresponse2001 As DTSensors.Api.Client.model.inlineresponse2001;

/// Implement operationId : projectsprojectdevicesbatchUpdatePOST
/// post /projects/{project}/devices:batchUpdate
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "200" {
		Set ..inlineresponse2001 = ##class(DTSensors.Api.Client.model.inlineresponse2001).%New()
		Set ..status = ..inlineresponse2001.%JSONImport(httpResponse.Data)
		Return sc
	}
	Return sc
}

Storage Default
{
<Data name="projectsprojectdevicesbatchUpdatePOSTDefaultData">
<Subscript>"projectsprojectdevicesbatchUpdatePOST"</Subscript>
<Value name="1">
<Value>inlineresponse2001</Value>
</Value>
</Data>
<DefaultData>projectsprojectdevicesbatchUpdatePOSTDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
