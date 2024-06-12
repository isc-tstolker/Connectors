Class DTSensors.Api.Client.model.Motion Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

/// `MOTION_DETECTED` - The motion sensor has detected motion.
/// `NO_MOTION_DETECTED` - The motion sensor is no longer detecting motion.
/// * This property is required.
Property state As %String(MAXLEN = "", VALUELIST = ",MOTION_DETECTED,NO_MOTION_DETECTED");

/// The timestamp (UTC) of when the Motion Event was received by a Cloud Connector.
/// * This property is required.
Property updateTime As %String(MAXLEN = "");

Storage Default
{
<Data name="MotionState">
<Value name="1">
<Value>state</Value>
</Value>
<Value name="2">
<Value>updateTime</Value>
</Value>
</Data>
<State>MotionState</State>
<StreamLocation>^DTSensors.Api.ClienD1EA.MotionS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
