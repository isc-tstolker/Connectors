Class DTSensors.Api.Client.model.Temperature Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

/// Indicates if the temperature event is backfilled. This feature is supported for 
/// [Temperature Probe Sensor](https://support.disruptive-technologies.com/hc/en-us/articles/11432439857948-Temperature-Probe-Sensor) 
/// sensors, and [Temperature Sensors with Data Backfill](https://support.disruptive-technologies.com/hc/en-us/articles/9389983018268-Temperature-Sensor).
/// When this field is `true`, the temperature value was measured while the sensor was out of reach of an online Cloud Connector,
/// and has been backfilled automatically after getting back online.
/// See the [Backfill page](https://support.disruptive-technologies.com/hc/en-us/articles/12707591585564-How-does-Data-Backfill-work)
/// in our Help Center for more information about Data Backfill.
/// * This property is required.
Property isBackfilled As %Boolean;

/// 
/// * This property is required.
Property samples As list Of DTSensors.Api.Client.model.Temperaturesamples;

/// The timestamp (UTC) of when the Temperature Event was received by a Cloud Connector.
/// * This property is required.
Property updateTime As %String(MAXLEN = "");

/// The temperature value in celsius.
/// * This property is required.
Property value As %Decimal;

Storage Default
{
<Data name="TemperatureState">
<Value name="1">
<Value>isBackfilled</Value>
</Value>
<Value name="2">
<Value>samples</Value>
</Value>
<Value name="3">
<Value>updateTime</Value>
</Value>
<Value name="4">
<Value>value</Value>
</Value>
</Data>
<State>TemperatureState</State>
<StreamLocation>^DTSensors.ApiD1EA.TemperatureS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
