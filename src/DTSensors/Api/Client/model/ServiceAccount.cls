Class DTSensors.Api.Client.model.ServiceAccount Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

/// When the service account was created
/// * This property is required.
Property createTime As %String(MAXLEN = "");

/// The display name of the service account.
/// * This property is required.
Property displayName As %String(MAXLEN = "");

/// An automatically generated email address for the Service Account. Use this email
/// to give the Service Account access to Projects and Organizations by adding it 
/// as a Member.
/// 
/// Format is: `{service_account_id}@{parent_project_id}.serviceaccount.d21s.com`.
/// * This property is required.
Property email As %String(MAXLEN = "");

/// If true, this account will accept using the secret as a password in basic auth.
/// 
/// This is not recommended for production use, but may make it easier
/// to get prototypes quickly up and running.
/// * This property is required.
Property enableBasicAuth As %Boolean;

/// The resource name of the Service Account
/// 
/// Format is `projects/{project}/serviceaccounts/{serviceaccount}`.
/// * This property is required.
Property name As %String(MAXLEN = "");

/// When the service account was last updated
/// * This property is required.
Property updateTime As %String(MAXLEN = "");

Storage Default
{
<Data name="ServiceAccountState">
<Value name="1">
<Value>createTime</Value>
</Value>
<Value name="2">
<Value>displayName</Value>
</Value>
<Value name="3">
<Value>email</Value>
</Value>
<Value name="4">
<Value>enableBasicAuth</Value>
</Value>
<Value name="5">
<Value>name</Value>
</Value>
<Value name="6">
<Value>updateTime</Value>
</Value>
</Data>
<State>ServiceAccountState</State>
<StreamLocation>^DTSensors.AD1EA.ServiceAccountS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
