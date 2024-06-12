Class DTSensors.Api.Client.model.projectmembersbody Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

/// Email for the user to grant access.
/// * This property is required.
Property email As %String(MAXLEN = "");

/// The resource name of the Role.
/// 
/// Format is `roles/{role}`.
/// * This property is required.
Property roles As list Of %String(MAXLEN = "");

Storage Default
{
<Data name="projectmembersbodyState">
<Value name="1">
<Value>email</Value>
</Value>
<Value name="2">
<Value>roles</Value>
</Value>
</Data>
<State>projectmembersbodyState</State>
<StreamLocation>^DTSensorsD1EA.projectmembDD17S</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
