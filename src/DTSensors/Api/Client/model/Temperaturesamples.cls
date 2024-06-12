Class DTSensors.Api.Client.model.Temperaturesamples Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

/// The sampleTime (UTC) is estimated by DT Cloud. The samples within the `samples` array will be evenly distributed
/// in time since the last heartbeat of the sensor. The first item in the array will be equivalent to the outer `updateTime`
/// of the event, which is the timestamp of when the Temperature Event was received by a Cloud Connector.
Property sampleTime As %String(MAXLEN = "");

/// The temperature value in celsius.
Property value As %Decimal;

Storage Default
{
<Data name="TemperaturesamplesState">
<Value name="1">
<Value>sampleTime</Value>
</Value>
<Value name="2">
<Value>value</Value>
</Value>
</Data>
<State>TemperaturesamplesState</State>
<StreamLocation>^DTSensorsD1EA.TemperatureCA17S</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
