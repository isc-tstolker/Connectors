Class DTSensors.Api.Client.model.ServiceAccountKey Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

/// When the Service Account Key was created.
/// * This property is required.
Property createTime As %String(MAXLEN = "");

/// The unique identifier of the Key.
/// 
/// If the Service Account accepts Basic Auth, the identifier will be used as user 
/// name in the request.
/// * This property is required.
Property id As %String(MAXLEN = "");

/// The resource name of the Service Account Key
/// 
/// Format is `projects/{project}/serviceaccounts/{serviceaccount}/keys/{serviceaccountkey}`.
/// * This property is required.
Property name As %String(MAXLEN = "");

Storage Default
{
<Data name="ServiceAccountKeyState">
<Value name="1">
<Value>createTime</Value>
</Value>
<Value name="2">
<Value>id</Value>
</Value>
<Value name="3">
<Value>name</Value>
</Value>
</Data>
<State>ServiceAccountKeyState</State>
<StreamLocation>^DTSensorsD1EA.ServiceAccou900S</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
