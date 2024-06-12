Class DTSensors.Api.Client.model.inlineresponse2001batchErrors Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

/// Resource name of the device on which the operation failed.
Property device As %String(MAXLEN = "");

/// Status provides the failure status of an operation.
Property status As DTSensors.Api.Client.model.Status;

Storage Default
{
<Data name="inlineresponse2001batchErrorsState">
<Value name="1">
<Value>device</Value>
</Value>
<Value name="2">
<Value>status</Value>
</Value>
</Data>
<State>inlineresponse2001batchErrorsState</State>
<StreamLocation>^DTSensorsD1EA.inlinerespo7E80S</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
