Class DTSensors.Api.Client.responses.projectsprojectdevicestransferPOST Extends DTSensors.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 200 content-type = application/json
/// Transfer response
/// 
/// Note that a status code of `200` doesn't necessarily mean that all the Devices were 
/// successfully transferred. Check if the `transferErrors` array is empty to make sure that 
/// all the requested transfers were successful.
Property inlineresponse2003 As DTSensors.Api.Client.model.inlineresponse2003;

/// Implement operationId : projectsprojectdevicestransferPOST
/// post /projects/{project}/devices:transfer
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "200" {
		Set ..inlineresponse2003 = ##class(DTSensors.Api.Client.model.inlineresponse2003).%New()
		Set ..status = ..inlineresponse2003.%JSONImport(httpResponse.Data)
		Return sc
	}
	Return sc
}

Storage Default
{
<Data name="projectsprojectdevicestransferPOSTDefaultData">
<Subscript>"projectsprojectdevicestransferPOST"</Subscript>
<Value name="1">
<Value>inlineresponse2003</Value>
</Value>
</Data>
<DefaultData>projectsprojectdevicestransferPOSTDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
