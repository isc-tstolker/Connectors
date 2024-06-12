Class DTSensors.Api.Client.responses.projectsprojectdevicesclaimPOST Extends DTSensors.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 200 content-type = application/json
/// The claiming request was successful, but it's possible that some of the devices couldn't be claimed.
/// Check the `claimErrors` for any potential errors during claiming.
/// 
/// | Field                            | Type      | Description |
/// | ----------                       | --------- | ----------- |
/// | `claimedDevices`                 | `array`   | A list of all the devices that got successfully claimed. This list will contain devices from both the `deviceIds` and `kitIds` list of the request. |
/// | `claimedDevices.deviceId`        | `string`  | The identifier of the claimed device. |
/// | `claimedDevices.deviceType`      | `string`  | The device type of the claimed device (eg. `temperature`). See our [Device Types](https://developer.disruptive-technologies.com/docs/concepts/devices) page for all possible values. |
/// | `claimedDevices.productNumber`   | `string`  | The product number of the claimed device. This is the same product number that can be found on the support pages for both [Sensors](https://support.disruptive-technologies.com/hc/en-us/sections/360003211399-Sensors) and [Cloud Connectors](https://support.disruptive-technologies.com/hc/en-us/sections/360003168340-Cloud-Connectors). |
/// | `claimedDevices.isClaimed`       | `boolean` | Since the device was just claimed, this will always be `true`. It's included only to make the data structure consistent with the `/claimInfo` endpoint. |
/// | `claimErrors`                    | `object`  | An object containing anything that went wrong during claiming. |
/// | `claimErrors.devices`            | `array`   | A list claim errors for specific devices. |
/// | `claimErrors.devices[].deviceId` | `string`  | The identifier of the device that failed to be claimed. |
/// | `claimErrors.devices[].code`     | `string`  | Possible values: `["NOT_FOUND", "ALREADY_CLAIMED"]`. <br />If it's `NOT_FOUND`, a device in the `deviceIds` list in the request couldn't be found. If it's `ALREADY_CLAIMED`, either one of the devices in `kitIds` or in `deviceIds` of the request was already claimed (`isClaimed` was `true`). |
/// | `claimErrors.devices[].message`  | `string`  | A user presentable error message of why this specific device couldn't be claimed. |
/// | `claimErrors.kits`               | `array`   | A list of claim errors for specific kits. |
/// | `claimErrors.kits[].kitId`       | `string`  | The identifier of the kit that failed to be claimed. | 
/// | `claimErrors.kits[].code`        | `string`  | Possible values: `["NOT_FOUND"]`. <br />When the error code is `NOT_FOUND` it means that a kit in `kitIds` in the request couldn't be found. | 
/// | `claimErrors.kits[].message`     | `string`  | A user presentable error message of why devices in this specific kit couldn't be claimed. |
Property inlineresponse20013 As DTSensors.Api.Client.model.inlineresponse20013;

/// Implement operationId : projectsprojectdevicesclaimPOST
/// post /projects/{project}/devices:claim
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "200" {
		Set ..inlineresponse20013 = ##class(DTSensors.Api.Client.model.inlineresponse20013).%New()
		Set ..status = ..inlineresponse20013.%JSONImport(httpResponse.Data)
		Return sc
	}
	Return sc
}

Storage Default
{
<Data name="projectsprojectdevicesclaimPOSTDefaultData">
<Subscript>"projectsprojectdevicesclaimPOST"</Subscript>
<Value name="1">
<Value>inlineresponse20013</Value>
</Value>
</Data>
<DefaultData>projectsprojectdevicesclaimPOSTDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
