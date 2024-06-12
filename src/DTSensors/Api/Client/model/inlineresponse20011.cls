Class DTSensors.Api.Client.model.inlineresponse20011 Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

/// A Key grants access to act as the Service Account the Key belongs to.
/// 
/// The secret of a Service Account Key is only returned once on creation of
/// the key, and cannot be recreated or downloaded later.
/// * This property is required.
Property keys As list Of DTSensors.Api.Client.model.ServiceAccountKey;

/// A token to use for retrieving the next page of results.
/// 
/// Next result can be fetched using this value inside `pageToken` for the next call. If the field is empty there are no results.
/// * This property is required.
Property nextPageToken As %String(MAXLEN = "");

Storage Default
{
<Data name="inlineresponse20011State">
<Value name="1">
<Value>keys</Value>
</Value>
<Value name="2">
<Value>nextPageToken</Value>
</Value>
</Data>
<State>inlineresponse20011State</State>
<StreamLocation>^DTSensorsD1EA.inlinerespoF1E1S</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
