Class DTSensors.Api.Client.model.inlineresponse2007 Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

/// A token to use for retrieving the next page of results.
/// 
/// Next result can be fetched using this value inside `pageToken` for the next call. If the field is empty there are no results.
/// * This property is required.
Property nextPageToken As %String(MAXLEN = "");

/// 
/// * This property is required.
Property organizations As list Of DTSensors.Api.Client.model.Organization;

Storage Default
{
<Data name="inlineresponse2007State">
<Value name="1">
<Value>nextPageToken</Value>
</Value>
<Value name="2">
<Value>organizations</Value>
</Value>
</Data>
<State>inlineresponse2007State</State>
<StreamLocation>^DTSensorsD1EA.inlinerespoA2F2S</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
