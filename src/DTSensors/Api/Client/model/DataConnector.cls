Class DTSensors.Api.Client.model.DataConnector Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

/// The name to display for the data connector.
Property displayName As %String(MAXLEN = "");

Property events As list Of %String(MAXLEN = "", VALUELIST = ",touch,temperature,objectPresent,humidity,objectPresentCount,touchCount,waterPresent,co2,pressure,motion,contact,probeWireStatus,deskOccupancy,networkStatus,batteryStatus,labelsChanged,connectionStatus,ethernetStatus,cellularStatus");

/// Configuration settings for HTTP connectors.
/// * This property is required.
Property httpConfig As DTSensors.Api.Client.model.DataConnectorhttpConfig;

/// Label keys to include in the event payload.
Property labels As list Of %String(MAXLEN = "");

/// The resource name of the Data Connector.
/// 
/// Format is `projects/{project}/dataconnectors/{connector}`
/// * This property is required.
Property name As %String(MAXLEN = "");

/// Current status of the connector.
/// 
/// - `ACTIVE` - Currently active and serving.
/// - `USER_DISABLED` - No longer active. Disabled by the user.
/// - `SYSTEM_DISABLED` - No longer active. Disabled by the system.
Property status As %String(MAXLEN = "", VALUELIST = ",ACTIVE,USER_DISABLED,SYSTEM_DISABLED");

/// Type of connector.
/// 
/// - `HTTP_PUSH` - The connector will deliver events over HTTP Push.
/// * This property is required.
Property type As %String(MAXLEN = "", VALUELIST = ",HTTP_PUSH");

Storage Default
{
<Data name="DataConnectorState">
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
<Value>name</Value>
</Value>
<Value name="6">
<Value>status</Value>
</Value>
<Value name="7">
<Value>type</Value>
</Value>
</Data>
<State>DataConnectorState</State>
<StreamLocation>^DTSensors.ApD1EA.DataConnectorS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
