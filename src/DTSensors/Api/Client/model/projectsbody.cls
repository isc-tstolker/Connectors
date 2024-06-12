Class DTSensors.Api.Client.model.projectsbody Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

/// The display name of the Project.
/// * This property is required.
Property displayName As %String(MAXLEN = "");

/// The resource name of the organization to own the project.
/// * This property is required.
Property organization As %String(MAXLEN = "");

Storage Default
{
<Data name="projectsbodyState">
<Value name="1">
<Value>displayName</Value>
</Value>
<Value name="2">
<Value>organization</Value>
</Value>
</Data>
<State>projectsbodyState</State>
<StreamLocation>^DTSensors.ApiD1EA.projectsbodyS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
