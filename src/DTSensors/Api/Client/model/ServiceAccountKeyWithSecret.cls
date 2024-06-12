Class DTSensors.Api.Client.model.ServiceAccountKeyWithSecret Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

/// A Key grants access to act as the Service Account the Key belongs to.
/// 
/// The secret of a Service Account Key is only returned once on creation of
/// the key, and cannot be recreated or downloaded later.
/// * This property is required.
Property key As DTSensors.Api.Client.model.ServiceAccountKey;

/// The secret for the created key.
/// 
/// This will only be returned once and cannot be recreated or retrieved later.
/// * This property is required.
Property secret As %String(MAXLEN = "");

Storage Default
{
<Data name="ServiceAccountKeyWithSecretState">
<Value name="1">
<Value>key</Value>
</Value>
<Value name="2">
<Value>secret</Value>
</Value>
</Data>
<State>ServiceAccountKeyWithSecretState</State>
<StreamLocation>^DTSensorsD1EA.ServiceAccoCB20S</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
