Class DTSensors.Api.Client.model.inlineresponse2002 Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

/// 
/// * This property is required.
Property events As list Of DTSensors.Api.Client.model.HistoryEvent;

/// A token to use for retrieving the next page of results.
/// 
/// Next result can be fetched using this value inside `pageToken` for the next call. If the field is empty there are no results.
/// * This property is required.
Property nextPageToken As %String(MAXLEN = "");

Storage Default
{
<Data name="inlineresponse2002State">
<Value name="1">
<Value>events</Value>
</Value>
<Value name="2">
<Value>nextPageToken</Value>
</Value>
</Data>
<State>inlineresponse2002State</State>
<StreamLocation>^DTSensorsD1EA.inlinerespoA132S</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
