Class DTSensors.Api.Client.model.DataConnectorMetrics Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

/// Number of failed processed events within the last 3 hours.
/// * This property is required.
Property errorCount As %Integer;

/// The 99th percentile latency of events sent within the last 3 hours.
/// * This property is required.
Property latency99p As %String(MAXLEN = "");

/// Number of successfully processed events within the last 3 hours.
/// * This property is required.
Property successCount As %Integer;

Storage Default
{
<Data name="DataConnectorMetricsState">
<Value name="1">
<Value>errorCount</Value>
</Value>
<Value name="2">
<Value>latency99p</Value>
</Value>
<Value name="3">
<Value>successCount</Value>
</Value>
</Data>
<State>DataConnectorMetricsState</State>
<StreamLocation>^DTSensorsD1EA.DataConnectC50FS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
