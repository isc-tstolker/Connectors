Class DTSensors.Api.Client.model.ObjectPresent Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

/// `PRESENT` - An object is present on the sensor.
/// `NOT_PRESENT` - No objects are present on the sensor.
/// * This property is required.
Property state As %String(MAXLEN = "", VALUELIST = ",PRESENT,NOT_PRESENT");

/// The timestamp (UTC) of when the Object Present Event was received by a Cloud Connector.
/// * This property is required.
Property updateTime As %String(MAXLEN = "");

Storage Default
{
<Data name="ObjectPresentState">
<Value name="1">
<Value>state</Value>
</Value>
<Value name="2">
<Value>updateTime</Value>
</Value>
</Data>
<State>ObjectPresentState</State>
<StreamLocation>^DTSensors.ApD1EA.ObjectPresentS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
