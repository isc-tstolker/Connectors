Class DTSensors.Api.Client.model.EthernetStatus Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

/// 
/// * This property is required.
Property errors As list Of DTSensors.Api.Client.model.ConnectivityError;

/// 
/// * This property is required.
Property ipAddress As %String(MAXLEN = "");

/// 
/// * This property is required.
Property macAddress As %String(MAXLEN = "");

/// The timestamp (UTC) for the connection status update.
/// * This property is required.
Property updateTime As %String(MAXLEN = "");

Storage Default
{
<Data name="EthernetStatusState">
<Value name="1">
<Value>errors</Value>
</Value>
<Value name="2">
<Value>ipAddress</Value>
</Value>
<Value name="3">
<Value>macAddress</Value>
</Value>
<Value name="4">
<Value>updateTime</Value>
</Value>
</Data>
<State>EthernetStatusState</State>
<StreamLocation>^DTSensors.AD1EA.EthernetStatusS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
