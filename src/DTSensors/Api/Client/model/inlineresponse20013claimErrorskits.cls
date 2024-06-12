Class DTSensors.Api.Client.model.inlineresponse20013claimErrorskits Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

/// When the error code is `NOT_FOUND` it means that a kit in `kitIds` 
/// in the request couldn't be found.
Property code As %String(MAXLEN = "", VALUELIST = ",NOT_FOUND");

/// The identifier of the kit that failed to be claimed.
Property kitIds As %String(MAXLEN = "");

/// A user presentable error message of why devices in this specific kit couldn't be claimed.
Property message As %String(MAXLEN = "");

Storage Default
{
<Data name="inlineresponse20013claimErrorskitsState">
<Value name="1">
<Value>code</Value>
</Value>
<Value name="2">
<Value>kitIds</Value>
</Value>
<Value name="3">
<Value>message</Value>
</Value>
</Data>
<State>inlineresponse20013claimErrorskitsState</State>
<StreamLocation>^DTSensorsD1EA.inlinerespo1417S</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
