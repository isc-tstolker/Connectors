Class DTSensors.Api.Client.model.NetworkStatusCloudConnector Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

Property id As %String(MAXLEN = "");

Property rssi As %Integer;

Property signalStrength As %Integer;

Storage Default
{
<Data name="NetworkStatusCloudConnectorState">
<Value name="1">
<Value>id</Value>
</Value>
<Value name="2">
<Value>rssi</Value>
</Value>
<Value name="3">
<Value>signalStrength</Value>
</Value>
</Data>
<State>NetworkStatusCloudConnectorState</State>
<StreamLocation>^DTSensorsD1EA.NetworkStat25FDS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
