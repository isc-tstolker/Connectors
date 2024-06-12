Class DTSensors.Api.Client.model.Touch Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

/// The timestamp (UTC) of when the Touch Event was received by a Cloud Connector.
/// * This property is required.
Property updateTime As %String(MAXLEN = "");

Storage Default
{
<Data name="TouchState">
<Value name="1">
<Value>updateTime</Value>
</Value>
</Data>
<State>TouchState</State>
<StreamLocation>^DTSensors.Api.ClientD1EA.TouchS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
