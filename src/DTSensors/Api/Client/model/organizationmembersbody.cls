Class DTSensors.Api.Client.model.organizationmembersbody Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

/// The email address of the account linked to the membership.
/// * This property is required.
Property email As %String(MAXLEN = "");

/// The resource name of the Role.
/// 
/// Format is `roles/{role}`.
/// * This property is required.
Property roles As list Of %String(MAXLEN = "");

Storage Default
{
<Data name="organizationmembersbodyState">
<Value name="1">
<Value>email</Value>
</Value>
<Value name="2">
<Value>roles</Value>
</Value>
</Data>
<State>organizationmembersbodyState</State>
<StreamLocation>^DTSensorsD1EA.organizatioE6BDS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
