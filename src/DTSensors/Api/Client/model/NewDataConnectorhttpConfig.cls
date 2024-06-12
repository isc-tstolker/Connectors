Class DTSensors.Api.Client.model.NewDataConnectorhttpConfig Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

/// HTTP headers to include in outgoing Data Connector requests.
Property headers As DTSensors.Api.Client.model.NewDataConnectorhttpConfigheaders;

/// Use a custom secret to sign the data.
Property signatureSecret As %String(MAXLEN = "");

/// URL the Data Connector will send HTTPS POST requests to.
Property url As %String(MAXLEN = "");

Storage Default
{
<Data name="NewDataConnectorhttpConfigState">
<Value name="1">
<Value>headers</Value>
</Value>
<Value name="2">
<Value>signatureSecret</Value>
</Value>
<Value name="3">
<Value>url</Value>
</Value>
</Data>
<State>NewDataConnectorhttpConfigState</State>
<StreamLocation>^DTSensorsD1EA.NewDataConn1A8AS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
