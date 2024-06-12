Class DTSensors.Api.Client.model.DataConnectorhttpConfig Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

/// HTTP headers to include in outgoing Data Connector requests.
Property headers As DTSensors.Api.Client.model.DataConnectorhttpConfigheaders;

/// Use a custom secret to sign the data.
Property signatureSecret As %String(MAXLEN = "");

/// Valid URL using HTTPS.
Property url As %String(MAXLEN = "");

Storage Default
{
<Data name="DataConnectorhttpConfigState">
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
<State>DataConnectorhttpConfigState</State>
<StreamLocation>^DTSensorsD1EA.DataConnectBB0FS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
