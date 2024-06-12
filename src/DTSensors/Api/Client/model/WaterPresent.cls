Class DTSensors.Api.Client.model.WaterPresent Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

/// `PRESENT` - Water is present on the sensor.
/// `NOT_PRESENT` - Water is not present on the sensor.
/// * This property is required.
Property state As %String(MAXLEN = "", VALUELIST = ",PRESENT,NOT_PRESENT");

/// The timestamp (UTC) of when the Water Present Event was received by a Cloud Connector.
/// * This property is required.
Property updateTime As %String(MAXLEN = "");

Storage Default
{
<Data name="WaterPresentState">
<Value name="1">
<Value>state</Value>
</Value>
<Value name="2">
<Value>updateTime</Value>
</Value>
</Data>
<State>WaterPresentState</State>
<StreamLocation>^DTSensors.ApiD1EA.WaterPresentS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
