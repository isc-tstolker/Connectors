Class DTSensors.Api.Client.model.inlineresponse2006 Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

/// A token to use for retrieving the next page of results.
/// 
/// Next result can be fetched using this value inside `pageToken` for the next call. If the field is empty there are no results.
/// * This property is required.
Property nextPageToken As %String(MAXLEN = "");

/// 
/// * This property is required.
Property roles As list Of DTSensors.Api.Client.model.Role;

Storage Default
{
<Data name="inlineresponse2006State">
<Value name="1">
<Value>nextPageToken</Value>
</Value>
<Value name="2">
<Value>roles</Value>
</Value>
</Data>
<State>inlineresponse2006State</State>
<StreamLocation>^DTSensorsD1EA.inlinerespo6233S</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
