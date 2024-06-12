Class DTSensors.Api.Client.model.Member Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

/// - `USER` - Indicates that the Account linked to the Member is a User Account.
/// - `SERVICE_ACCOUNT` - Indicates that the Account linked to the Member is a Service Account.
/// * This property is required.
Property accountType As %String(MAXLEN = "", VALUELIST = ",USER,SERVICE_ACCOUNT");

/// When the Member was created.
/// * This property is required.
Property createTime As %String(MAXLEN = "");

/// The display name for the Member.
/// 
/// Will be email for User accounts and set display name for Service Accounts.
/// * This property is required.
Property displayName As %String(MAXLEN = "");

/// The email of the Account linked to the Member.
/// * This property is required.
Property email As %String(MAXLEN = "");

/// The resource name of the Member.
/// 
/// Format is one of:
/// - `organizations/{organization_id}/members/{member_id}`
/// - `projects/{project_id}/members/{member_id}`
/// * This property is required.
Property name As %String(MAXLEN = "");

/// The resource name of the Role.
/// 
/// Format is `roles/{role}`.
/// * This property is required.
Property roles As list Of %String(MAXLEN = "");

/// - `PENDING` - Pending on the User to acknowledge the Membership. The UI can use this to indicate that the Member is not yet active.
/// - `ACCEPTED` - User has accepted the Membership. Will always be the status for Service Account Memberships.
/// * This property is required.
Property status As %String(MAXLEN = "", VALUELIST = ",PENDING,ACCEPTED");

Storage Default
{
<Data name="MemberState">
<Value name="1">
<Value>accountType</Value>
</Value>
<Value name="2">
<Value>createTime</Value>
</Value>
<Value name="3">
<Value>displayName</Value>
</Value>
<Value name="4">
<Value>email</Value>
</Value>
<Value name="5">
<Value>name</Value>
</Value>
<Value name="6">
<Value>roles</Value>
</Value>
<Value name="7">
<Value>status</Value>
</Value>
</Data>
<State>MemberState</State>
<StreamLocation>^DTSensors.Api.ClienD1EA.MemberS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
