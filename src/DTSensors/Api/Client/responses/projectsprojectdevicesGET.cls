Class DTSensors.Api.Client.responses.projectsprojectdevicesGET Extends DTSensors.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 200 content-type = application/json
/// List of Sensors and Cloud Connectors
/// 
/// A Device object has the following fields:
/// | Field           | Description |
/// | ----------      | ----------- |
/// | `name`          | The resource name of the Device. Has the format `projects/{project_id}/devices/{device_id}`. |
/// | `type`          | The type of Device this is. See the [Devices](https://developer.disruptive-technologies.com/docs/concepts/devices) page in the Developer Docs for full details. |
/// | `labels`        | The current Device Labels. |
/// | `reported`      | Contains the last Event of each event type received for this Device. See the [Events](https://developer.disruptive-technologies.com/docs/concepts/events) page in the Developer Docs for full details.|
/// | `productNumber` | The product number of the device. This is the same product number that can be found on the support pages for both [Sensors](https://support.disruptive-technologies.com/hc/en-us/sections/360003211399-Sensors) and [Cloud Connectors](https://support.disruptive-technologies.com/hc/en-us/sections/360003168340-Cloud-Connectors). |
Property inlineresponse200 As DTSensors.Api.Client.model.inlineresponse200;

/// Implement operationId : projectsprojectdevicesGET
/// get /projects/{project}/devices
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "200" {
		Set ..inlineresponse200 = ##class(DTSensors.Api.Client.model.inlineresponse200).%New()
		Set ..status = ..inlineresponse200.%JSONImport(httpResponse.Data)
		Return sc
	}
	Return sc
}

Storage Default
{
<Data name="projectsprojectdevicesGETDefaultData">
<Subscript>"projectsprojectdevicesGET"</Subscript>
<Value name="1">
<Value>inlineresponse200</Value>
</Value>
</Data>
<DefaultData>projectsprojectdevicesGETDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
