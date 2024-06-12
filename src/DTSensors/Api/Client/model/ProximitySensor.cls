Class DTSensors.Api.Client.model.ProximitySensor Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

/// Map of labels used for indexing and search of Sensors.
/// * This property is required.
Property labels As DTSensors.Api.Client.model.ProximitySensorlabels;

/// The resource name of a device
/// * This property is required.
Property name As %String(MAXLEN = "");

/// The product number of the device. This is the same product number that can be found on the support pages for both [Sensors](https://support.disruptive-technologies.com/hc/en-us/sections/360003211399-Sensors) and [Cloud Connectors](https://support.disruptive-technologies.com/hc/en-us/sections/360003168340-Cloud-Connectors).
/// * This property is required.
Property productNumber As %String(MAXLEN = "");

/// 
/// * This property is required.
Property reported As DTSensors.Api.Client.model.ProximitySensorreported;

/// For object detection sensors the value is "proximity"
/// * This property is required.
Property type As %String(MAXLEN = "", VALUELIST = ",proximity");

Storage Default
{
<Data name="ProximitySensorState">
<Value name="1">
<Value>labels</Value>
</Value>
<Value name="2">
<Value>name</Value>
</Value>
<Value name="3">
<Value>productNumber</Value>
</Value>
<Value name="4">
<Value>reported</Value>
</Value>
<Value name="5">
<Value>type</Value>
</Value>
</Data>
<State>ProximitySensorState</State>
<StreamLocation>^DTSensorsD1EA.ProximitySe5779S</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
