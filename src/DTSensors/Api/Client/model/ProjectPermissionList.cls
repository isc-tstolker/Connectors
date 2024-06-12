Class DTSensors.Api.Client.model.ProjectPermissionList Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

/// List of permissions that defines which actions are allowed for a given project.
/// * This property is required.
Property permissions As list Of %String(MAXLEN = "");

Storage Default
{
<Data name="ProjectPermissionListState">
<Value name="1">
<Value>permissions</Value>
</Value>
</Data>
<State>ProjectPermissionListState</State>
<StreamLocation>^DTSensorsD1EA.ProjectPerm9D02S</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
