Class DTSensors.Api.Client.model.DeskOccupancy Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

/// Additional information about the estimated `state` field.
/// 
/// See the [Events](https://developer.disruptive-technologies.com/docs/concepts/events#remarks) page
/// in the Developer Docs for more information.
Property remarks As list Of %String(MAXLEN = "");

/// `OCCUPIED` - The desk is currently occupied.
/// `NOT_OCCUPIED` - The desk is no longer occupied.
/// * This property is required.
Property state As %String(MAXLEN = "", VALUELIST = ",OCCUPIED,NOT_OCCUPIED");

/// The timestamp (UTC) of when the Desk Occupancy Event was received by a Cloud Connector.
/// * This property is required.
Property updateTime As %String(MAXLEN = "");

Storage Default
{
<Data name="DeskOccupancyState">
<Value name="1">
<Value>remarks</Value>
</Value>
<Value name="2">
<Value>state</Value>
</Value>
<Value name="3">
<Value>updateTime</Value>
</Value>
</Data>
<State>DeskOccupancyState</State>
<StreamLocation>^DTSensors.ApD1EA.DeskOccupancyS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
