Class DTSensors.Api.Client.model.Humidity Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

/// The relative humidity in percent.
/// * This property is required.
Property relativeHumidity As %Decimal;

/// The temperature in degrees Celsius.
/// * This property is required.
Property temperature As %Decimal;

/// The timestamp (UTC) of when the Humidity Event was received by a Cloud Connector.
/// * This property is required.
Property updateTime As %String(MAXLEN = "");

Storage Default
{
<Data name="HumidityState">
<Value name="1">
<Value>relativeHumidity</Value>
</Value>
<Value name="2">
<Value>temperature</Value>
</Value>
<Value name="3">
<Value>updateTime</Value>
</Value>
</Data>
<State>HumidityState</State>
<StreamLocation>^DTSensors.Api.CliD1EA.HumidityS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
