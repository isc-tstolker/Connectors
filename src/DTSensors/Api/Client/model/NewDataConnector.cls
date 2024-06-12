Class DTSensors.Api.Client.model.NewDataConnector Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

/// The display name for the new Data Connector.
/// * This property is required.
Property displayName As %String(MAXLEN = "");

Property events As list Of %String(MAXLEN = "", VALUELIST = ",touch,temperature,objectPresent,humidity,objectPresentCount,touchCount,waterPresent,co2,pressure,motion,contact,probeWireStatus,deskOccupancy,networkStatus,batteryStatus,labelsChanged,connectionStatus,ethernetStatus,cellularStatus");

/// Configuration settings for HTTP push Data Connectors
/// * This property is required.
Property httpConfig As DTSensors.Api.Client.model.NewDataConnectorhttpConfig;

/// Device Label keys to include in the event payload.
Property labels As list Of %String(MAXLEN = "");

/// Current status of the Data Connector.
/// 
/// - `ACTIVE` - Currently active and sending events.
/// - `USER_DISABLED` - No longer active. Disabled by the user.
Property status As %String(MAXLEN = "", VALUELIST = ",ACTIVE,USER_DISABLED");

/// Type of Data Connector.
/// 
/// - `HTTP_PUSH` - A Data Connector that will send HTTP POST request to a specific URL.
Property type As %String(MAXLEN = "", VALUELIST = ",HTTP_PUSH");

Storage Default
{
<Data name="NewDataConnectorState">
<Value name="1">
<Value>displayName</Value>
</Value>
<Value name="2">
<Value>events</Value>
</Value>
<Value name="3">
<Value>httpConfig</Value>
</Value>
<Value name="4">
<Value>labels</Value>
</Value>
<Value name="5">
<Value>status</Value>
</Value>
<Value name="6">
<Value>type</Value>
</Value>
</Data>
<State>NewDataConnectorState</State>
<StreamLocation>^DTSensorsD1EA.NewDataConnD55CS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
