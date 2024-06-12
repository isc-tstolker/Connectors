Class DTSensors.Api.Client.model.NetworkStatus Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

Property cloudConnectors As list Of DTSensors.Api.Client.model.NetworkStatusCloudConnector;

Property rssi As %Integer;

Property signalStrength As %Integer;

/// `LOW_POWER_STANDARD_MODE` - Message was sent on preferred frequency, using low power.
/// `HIGH_POWER_BOOST_MODE` - Message was sent using more energy expensive frequency band. Indicates connectivity difficulties.
Property transmissionMode As %String(MAXLEN = "", VALUELIST = ",LOW_POWER_STANDARD_MODE,HIGH_POWER_BOOST_MODE");

/// The timestamp (UTC) of when the network status was last modified.
Property updateTime As %String(MAXLEN = "");

Storage Default
{
<Data name="NetworkStatusState">
<Value name="1">
<Value>cloudConnectors</Value>
</Value>
<Value name="2">
<Value>rssi</Value>
</Value>
<Value name="3">
<Value>signalStrength</Value>
</Value>
<Value name="4">
<Value>transmissionMode</Value>
</Value>
<Value name="5">
<Value>updateTime</Value>
</Value>
</Data>
<State>NetworkStatusState</State>
<StreamLocation>^DTSensors.ApD1EA.NetworkStatusS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
