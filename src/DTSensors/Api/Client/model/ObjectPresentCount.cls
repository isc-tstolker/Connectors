Class DTSensors.Api.Client.model.ObjectPresentCount Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

/// Total number of times an object is put within or removed from the sensor over the lifetime of the sensor.
/// * This property is required.
Property total As %Integer;

/// The (UTC) timestamp of when the Object Present Count Event was received by a Cloud Connector.
/// * This property is required.
Property updateTime As %String(MAXLEN = "");

Storage Default
{
<Data name="ObjectPresentCountState">
<Value name="1">
<Value>total</Value>
</Value>
<Value name="2">
<Value>updateTime</Value>
</Value>
</Data>
<State>ObjectPresentCountState</State>
<StreamLocation>^DTSensorsD1EA.ObjectPreseC853S</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
