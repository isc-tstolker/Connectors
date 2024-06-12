Class DTSensors.Api.Client.model.CO2Event Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

/// 
/// * This property is required.
Property data As DTSensors.Api.Client.model.CO2EventData;

/// Unique identifier of the event.
/// * This property is required.
Property eventId As %String(MAXLEN = "");

/// 
/// * This property is required.
Property eventType As %String(MAXLEN = "", VALUELIST = ",co2");

/// White-listed labels included from the target resource.
Property labels As DTSensors.Api.Client.model.EventLabels;

/// The resource name of the related object.
/// 
/// Format is "projects/{project}/devices/{device}"
/// * This property is required.
Property targetName As %String(MAXLEN = "");

/// The timestamp (UTC) of when the event was received by a Cloud Connector.
/// * This property is required.
Property timestamp As %String(MAXLEN = "");

Storage Default
{
<Data name="CO2EventState">
<Value name="1">
<Value>data</Value>
</Value>
<Value name="2">
<Value>eventId</Value>
</Value>
<Value name="3">
<Value>eventType</Value>
</Value>
<Value name="4">
<Value>labels</Value>
</Value>
<Value name="5">
<Value>targetName</Value>
</Value>
<Value name="6">
<Value>timestamp</Value>
</Value>
</Data>
<State>CO2EventState</State>
<StreamLocation>^DTSensors.Api.CliD1EA.CO2EventS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
