Class DTSensors.Api.Client.model.ClaimDevice Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

/// The identifier of the device.
Property deviceId As %String(MAXLEN = "");

/// The device type (eg. `temperature`). See our 
/// [Device Types](https://developer.disruptive-technologies.com/docs/concepts/devices) 
/// page for all possible values.
Property deviceType As %String(MAXLEN = "");

/// Whether the device was already claimed. If this is true, you will 
/// receive an ALREADY_CLAIMED error when attempting to claim it.
Property isClaimed As %Boolean;

/// The product number of the device. This is the same product number that can 
/// be found on the support pages for both 
/// [Sensors](https://support.disruptive-technologies.com/hc/en-us/sections/360003211399-Sensors) and [Cloud Connectors](https://support.disruptive-technologies.com/hc/en-us/sections/360003168340-Cloud-Connectors).
Property productNumber As %String(MAXLEN = "");

Storage Default
{
<Data name="ClaimDeviceState">
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
<State>ClaimDeviceState</State>
<StreamLocation>^DTSensors.ApiD1EA.ClaimDeviceS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
