Class DTSensors.Api.Client.model.Role Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

/// Description of the Role.
/// * This property is required.
Property description As %String(MAXLEN = "");

/// The name to display for the given Role.
/// * This property is required.
Property displayName As %String(MAXLEN = "");

/// The resource name of the Role.
/// 
/// Format is `roles/{role}`.
/// * This property is required.
Property name As %String(MAXLEN = "");

/// Permissions allowed by the Role.
/// * This property is required.
Property permissions As list Of %String(MAXLEN = "");

Storage Default
{
<Data name="RoleState">
<Value name="1">
<Value>description</Value>
</Value>
<Value name="2">
<Value>displayName</Value>
</Value>
<Value name="3">
<Value>name</Value>
</Value>
<Value name="4">
<Value>permissions</Value>
</Value>
</Data>
<State>RoleState</State>
<StreamLocation>^DTSensors.Api.ClientD1EA.RoleS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
