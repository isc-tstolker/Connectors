Class DTSensors.Api.Client.model.Project Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

/// The number of Cloud Connectors within the Project.
/// * This property is required.
Property cloudConnectorCount As %Integer;

/// The display name of the Project.
/// * This property is required.
Property displayName As %String(MAXLEN = "");

/// All Organizations have a single inventory Project.
/// * This property is required.
Property inventory As %Boolean;

/// The resource name of the Project
/// 
/// Format is `projects/{project}`.
/// * This property is required.
Property name As %String(MAXLEN = "");

/// The Organization owning the Project.
/// 
/// Format is `organizations/{organization}`.
/// * This property is required.
Property organization As %String(MAXLEN = "");

/// The Organization display name.
/// * This property is required.
Property organizationDisplayName As %String(MAXLEN = "");

/// The number of sensors within the Project.
/// * This property is required.
Property sensorCount As %Integer;

Storage Default
{
<Data name="ProjectState">
<Value name="1">
<Value>cloudConnectorCount</Value>
</Value>
<Value name="2">
<Value>displayName</Value>
</Value>
<Value name="3">
<Value>inventory</Value>
</Value>
<Value name="4">
<Value>name</Value>
</Value>
<Value name="5">
<Value>organization</Value>
</Value>
<Value name="6">
<Value>organizationDisplayName</Value>
</Value>
<Value name="7">
<Value>sensorCount</Value>
</Value>
</Data>
<State>ProjectState</State>
<StreamLocation>^DTSensors.Api.ClieD1EA.ProjectS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
