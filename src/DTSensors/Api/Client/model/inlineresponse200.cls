Class DTSensors.Api.Client.model.inlineresponse200 Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

/// 
/// * This property is required.
Property devices As list Of DTSensors.Api.Client.model.Device;

/// A token to use for retrieving the next page of results.
/// 
/// Next result can be fetched using this value inside `pageToken` for the next call. If the field is empty there are no results.
Property nextPageToken As %String(MAXLEN = "");

Storage Default
{
<Data name="inlineresponse200State">
<Value name="1">
<Value>devices</Value>
</Value>
<Value name="2">
<Value>nextPageToken</Value>
</Value>
</Data>
<State>inlineresponse200State</State>
<StreamLocation>^DTSensorsD1EA.inlinerespo73B1S</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
