Class DTSensors.Api.Client.model.projectdevicestransferbody Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

/// List of device resource names to be transferred.
Property devices As list Of %String(MAXLEN = "");

Storage Default
{
<Data name="projectdevicestransferbodyState">
<Value name="1">
<Value>devices</Value>
</Value>
</Data>
<State>projectdevicestransferbodyState</State>
<StreamLocation>^DTSensorsD1EA.projectdevi9AD7S</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
