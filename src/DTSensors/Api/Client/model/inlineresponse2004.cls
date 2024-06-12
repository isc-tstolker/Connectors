Class DTSensors.Api.Client.model.inlineresponse2004 Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

/// 
/// * This property is required.
Property dataConnectors As list Of DTSensors.Api.Client.model.DataConnector;

/// A token to use for retrieving the next page of results.
/// 
/// Next result can be fetched using this value inside `pageToken` for the next call. If the field is empty there are no results.
/// * This property is required.
Property nextPageToken As %String(MAXLEN = "");

Storage Default
{
<Data name="inlineresponse2004State">
<Value name="1">
<Value>dataConnectors</Value>
</Value>
<Value name="2">
<Value>nextPageToken</Value>
</Value>
</Data>
<State>inlineresponse2004State</State>
<StreamLocation>^DTSensorsD1EA.inlinerespoA3B2S</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
