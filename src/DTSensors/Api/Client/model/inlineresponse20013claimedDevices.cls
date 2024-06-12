Class DTSensors.Api.Client.model.inlineresponse20013claimedDevices Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

/// The identifier of the claimed device.
Property deviceId As %String(MAXLEN = "");

/// The device type of the claimed device (eg. `temperature`). See our 
/// [Device Types](https://developer.disruptive-technologies.com/docs/concepts/devices) 
/// page for all possible values.
Property deviceType As %String(MAXLEN = "");

/// Since the device was just claimed, this will always be `true`. It's included 
/// only to make the data structure consistent with the `/claimInfo` endpoint.
Property isClaimed As %Boolean;

/// The product number of the claimed device. This is the same product number that can 
/// be found on the support pages for both 
/// [Sensors](https://support.disruptive-technologies.com/hc/en-us/sections/360003211399-Sensors) and [Cloud Connectors](https://support.disruptive-technologies.com/hc/en-us/sections/360003168340-Cloud-Connectors).
Property productNumber As %String(MAXLEN = "");

Storage Default
{
<Data name="inlineresponse20013claimedDevicesState">
<Value name="1">
<Value>deviceId</Value>
</Value>
<Value name="2">
<Value>deviceType</Value>
</Value>
<Value name="3">
<Value>isClaimed</Value>
</Value>
<Value name="4">
<Value>productNumber</Value>
</Value>
</Data>
<State>inlineresponse20013claimedDevicesState</State>
<StreamLocation>^DTSensorsD1EA.inlinerespo813ES</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
