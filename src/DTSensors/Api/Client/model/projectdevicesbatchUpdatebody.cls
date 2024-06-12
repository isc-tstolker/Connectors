Class DTSensors.Api.Client.model.projectdevicesbatchUpdatebody Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

Property addLabels As DTSensors.Api.Client.model.projectdevicesbatchUpdatebodyaddLabels;

/// List of device resource names to be updated. A maximum of 100 devices 
/// are allowed per request.
Property devices As list Of %String(MAXLEN = "");

/// List of label keys that should be removed.
/// 
/// If a label does not exist in some (or any) of the devices, the operation 
/// will still succeed with status code 200.
Property removeLabels As list Of %String(MAXLEN = "");

Storage Default
{
<Data name="projectdevicesbatchUpdatebodyState">
<Value name="1">
<Value>addLabels</Value>
</Value>
<Value name="2">
<Value>devices</Value>
</Value>
<Value name="3">
<Value>removeLabels</Value>
</Value>
</Data>
<State>projectdevicesbatchUpdatebodyState</State>
<StreamLocation>^DTSensorsD1EA.projectdevi51A3S</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
