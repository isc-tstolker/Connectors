Class DTSensors.Api.Client.model.Organization Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

/// The display name of the Organization.
/// * This property is required.
Property displayName As %String(MAXLEN = "");

/// The resource name of the Organization.
/// 
/// Format is `organizations/{organization}`.
/// * This property is required.
Property name As %String(MAXLEN = "");

Storage Default
{
<Data name="OrganizationState">
<Value name="1">
<Value>displayName</Value>
</Value>
<Value name="2">
<Value>name</Value>
</Value>
</Data>
<State>OrganizationState</State>
<StreamLocation>^DTSensors.ApiD1EA.OrganizationS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
