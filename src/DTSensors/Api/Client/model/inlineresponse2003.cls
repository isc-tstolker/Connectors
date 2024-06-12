Class DTSensors.Api.Client.model.inlineresponse2003 Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

Property transferErrors As list Of DTSensors.Api.Client.model.inlineresponse2001batchErrors;

/// List of devices that was successfully transferred.
Property transferredDevices As list Of %String(MAXLEN = "");

Storage Default
{
<Data name="inlineresponse2003State">
<Value name="1">
<Value>transferErrors</Value>
</Value>
<Value name="2">
<Value>transferredDevices</Value>
</Value>
</Data>
<State>inlineresponse2003State</State>
<StreamLocation>^DTSensorsD1EA.inlinerespo61F3S</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
