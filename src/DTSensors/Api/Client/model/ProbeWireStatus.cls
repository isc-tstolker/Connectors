Class DTSensors.Api.Client.model.ProbeWireStatus Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

/// `INVALID_WIRE_CONFIGURATION` - Check the 'Safety & Use' leaflet or DT Studio for valid configurations.
/// `TWO_WIRE` - Two wires are plugged into the probe sensor.
/// `THREE_WIRE` - Three wires are plugged into the probe sensor.
/// `FOUR_WIRE` - Four wires are plugged into the probe sensor.
/// * This property is required.
Property state As %String(MAXLEN = "", VALUELIST = ",INVALID_WIRE_CONFIGURATION,TWO_WIRE,THREE_WIRE,FOUR_WIRE");

/// The timestamp (UTC) of when the Probe Wire Status Event was received by a Cloud Connector.
/// * This property is required.
Property updateTime As %String(MAXLEN = "");

Storage Default
{
<Data name="ProbeWireStatusState">
<Value name="1">
<Value>state</Value>
</Value>
<Value name="2">
<Value>updateTime</Value>
</Value>
</Data>
<State>ProbeWireStatusState</State>
<StreamLocation>^DTSensorsD1EA.ProbeWireStA266S</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
