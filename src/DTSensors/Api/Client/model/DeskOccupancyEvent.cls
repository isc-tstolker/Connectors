Class DTSensors.Api.Client.model.DeskOccupancyEvent Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

/// 
/// * This property is required.
Property data As DTSensors.Api.Client.model.DeskOccupancyEventData;

/// Unique identifier of the event.
/// * This property is required.
Property eventId As %String(MAXLEN = "");

/// 
/// * This property is required.
Property eventType As %String(MAXLEN = "", VALUELIST = ",deskOccupancy");

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
<Data name="DeskOccupancyEventState">
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
<State>DeskOccupancyEventState</State>
<StreamLocation>^DTSensorsD1EA.DeskOccupan9847S</StreamLocation>
<Type>%Storage.Serial</Type>
}

}