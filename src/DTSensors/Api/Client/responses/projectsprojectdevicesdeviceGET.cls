Class DTSensors.Api.Client.responses.projectsprojectdevicesdeviceGET Extends DTSensors.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 200 content-type = application/json
/// A Device object has the following fields:
/// | Field           | Description |
/// | ----------      | ----------- |
/// | `name`          | The resource name of the Device. Has the format `projects/{project_id}/devices/{device_id}`. |
/// | `type`          | The type of Device this is. See the [Devices](https://developer.disruptive-technologies.com/docs/concepts/devices) page in the Developer Docs for full details. |
/// | `labels`        | The current Device Labels. |
/// | `reported`      | Contains the last Event of each event type received for this Device. See the [Events](https://developer.disruptive-technologies.com/docs/concepts/events) page in the Developer Docs for full details.|
/// | `productNumber` | The product number of the device. This is the same product number that can be found on the support pages for both [Sensors](https://support.disruptive-technologies.com/hc/en-us/sections/360003211399-Sensors) and [Cloud Connectors](https://support.disruptive-technologies.com/hc/en-us/sections/360003168340-Cloud-Connectors). |
Property Device As DTSensors.Api.Client.model.Device;

/// Implement operationId : projectsprojectdevicesdeviceGET
/// get /projects/{project}/devices/{device}
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "200" {
		Set ..Device = ##class(DTSensors.Api.Client.model.Device).%New()
		Set ..status = ..Device.%JSONImport(httpResponse.Data)
		Return sc
	}
	Return sc
}

Storage Default
{
<Data name="projectsprojectdevicesdeviceGETDefaultData">
<Subscript>"projectsprojectdevicesdeviceGET"</Subscript>
<Value name="1">
<Value>Device</Value>
</Value>
</Data>
<DefaultData>projectsprojectdevicesdeviceGETDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
