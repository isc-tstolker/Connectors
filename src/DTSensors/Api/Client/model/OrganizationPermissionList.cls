Class DTSensors.Api.Client.model.OrganizationPermissionList Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

/// List of permissions that defines which actions are allowed for a given organization.
/// * This property is required.
Property permissions As list Of %String(MAXLEN = "");

Storage Default
{
<Data name="OrganizationPermissionListState">
<Value name="1">
<Value>permissions</Value>
</Value>
</Data>
<State>OrganizationPermissionListState</State>
<StreamLocation>^DTSensorsD1EA.Organizatio503DS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
