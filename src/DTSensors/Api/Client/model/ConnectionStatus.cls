Class DTSensors.Api.Client.model.ConnectionStatus Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

Property available As list Of %String(MAXLEN = "");

/// `OFFLINE` - The Sensor or Cloud Connector is offline.
/// `ETHERNET` - The Cloud Connector is connected to the internet through an Ethernet cable.
/// `CELLULAR` - The Cloud Connector is connected to the internet through a cellular connection.
/// `SDS` - The Sensor is online and communicates through the [Secure Data Shot](https://www.disruptive-technologies.com/explore/platform-security-how-we-make-sure-sensor-data-is-private-and-secure) protocol.
Property connection As %String(MAXLEN = "", VALUELIST = ",OFFLINE,ETHERNET,CELLULAR,SDS");

/// The timestamp (UTC) for the connection status update.
Property updateTime As %String(MAXLEN = "");

Storage Default
{
<Data name="ConnectionStatusState">
<Value name="1">
<Value>available</Value>
</Value>
<Value name="2">
<Value>connection</Value>
</Value>
<Value name="3">
<Value>updateTime</Value>
</Value>
</Data>
<State>ConnectionStatusState</State>
<StreamLocation>^DTSensorsD1EA.ConnectionS9D17S</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
