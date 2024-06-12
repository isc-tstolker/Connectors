Class DTSensors.Api.Client.model.inlineresponse2009 Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

/// A token to use for retrieving the next page of results.
/// 
/// Next result can be fetched using this value inside `pageToken` for the next call. If the field is empty there are no results.
/// * This property is required.
Property nextPageToken As %String(MAXLEN = "");

/// 
/// * This property is required.
Property projects As list Of DTSensors.Api.Client.model.Project;

Storage Default
{
<Data name="inlineresponse2009State">
<Value name="1">
<Value>nextPageToken</Value>
</Value>
<Value name="2">
<Value>projects</Value>
</Value>
</Data>
<State>inlineresponse2009State</State>
<StreamLocation>^DTSensorsD1EA.inlinerespo6673S</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
