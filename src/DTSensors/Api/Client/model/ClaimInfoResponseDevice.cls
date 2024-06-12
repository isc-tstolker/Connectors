Class DTSensors.Api.Client.model.ClaimInfoResponseDevice Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

/// 
/// * This property is required.
Property device As DTSensors.Api.Client.model.ClaimDevice;

/// Will always be "DEVICE" when the request was for a device identifier.
/// * This property is required.
Property type As %String(MAXLEN = "", VALUELIST = ",DEVICE");

Storage Default
{
<Data name="ClaimInfoResponseDeviceState">
<Value name="1">
<Value>device</Value>
</Value>
<Value name="2">
<Value>type</Value>
</Value>
</Data>
<State>ClaimInfoResponseDeviceState</State>
<StreamLocation>^DTSensorsD1EA.ClaimInfoRe4BADS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
