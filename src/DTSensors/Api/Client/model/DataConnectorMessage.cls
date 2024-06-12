Class DTSensors.Api.Client.model.DataConnectorMessage Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

/// 
/// * This property is required.
Property event As DTSensors.Api.Client.model.Event;

/// White-listed labels included from the target resource.
/// * This property is required.
Property labels As DTSensors.Api.Client.model.EventLabels;

Storage Default
{
<Data name="DataConnectorMessageState">
<Value name="1">
<Value>event</Value>
</Value>
<Value name="2">
<Value>labels</Value>
</Value>
</Data>
<State>DataConnectorMessageState</State>
<StreamLocation>^DTSensorsD1EA.DataConnect35B9S</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
