Class DTSensors.Api.Client.model.inlineresponse20010 Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

/// A token to use for retrieving the next page of results.
/// 
/// Next result can be fetched using this value inside `pageToken` for the next call. If the field is empty there are no results.
/// * This property is required.
Property nextPageToken As %String(MAXLEN = "");

/// Account representing a computer system that can be granted Membership to Projects and Organizations.
/// * This property is required.
Property serviceAccounts As list Of DTSensors.Api.Client.model.ServiceAccount;

Storage Default
{
<Data name="inlineresponse20010State">
<Value name="1">
<Value>nextPageToken</Value>
</Value>
<Value name="2">
<Value>serviceAccounts</Value>
</Value>
</Data>
<State>inlineresponse20010State</State>
<StreamLocation>^DTSensorsD1EA.inlinerespo3120S</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
