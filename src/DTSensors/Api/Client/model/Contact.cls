Class DTSensors.Api.Client.model.Contact Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

/// `OPEN` - The door or window is open.
/// `CLOSED` - The door or window is closed.
/// * This property is required.
Property state As %String(MAXLEN = "", VALUELIST = ",OPEN,CLOSED");

/// The timestamp (UTC) of when the Contact Event was received by a Cloud Connector.
/// * This property is required.
Property updateTime As %String(MAXLEN = "");

Storage Default
{
<Data name="ContactState">
<Value name="1">
<Value>state</Value>
</Value>
<Value name="2">
<Value>updateTime</Value>
</Value>
</Data>
<State>ContactState</State>
<StreamLocation>^DTSensors.Api.ClieD1EA.ContactS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
