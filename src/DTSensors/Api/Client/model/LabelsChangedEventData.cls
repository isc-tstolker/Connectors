Class DTSensors.Api.Client.model.LabelsChangedEventData Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

/// Map of Label key-value pairs added to the Sensor.
Property added As DTSensors.Api.Client.model.LabelsChangedEventDataadded;

/// Map of Label key-value pairs modified on the Sensor.
Property modified As DTSensors.Api.Client.model.LabelsChangedEventDatamodified;

/// List of Labels that have been removed.
Property removed As list Of %String(MAXLEN = "");

Storage Default
{
<Data name="LabelsChangedEventDataState">
<Value name="1">
<Value>added</Value>
</Value>
<Value name="2">
<Value>modified</Value>
</Value>
<Value name="3">
<Value>removed</Value>
</Value>
</Data>
<State>LabelsChangedEventDataState</State>
<StreamLocation>^DTSensorsD1EA.LabelsChang6BCAS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
