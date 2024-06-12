Class DTSensors.Api.Client.model.ProbeWireStatusEventData Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

/// An event that is emitted by a probe `temperature` sensor when the number of wires plugged into the sensor changes.
Property probeWireStatus As DTSensors.Api.Client.model.ProbeWireStatus;

Storage Default
{
<Data name="ProbeWireStatusEventDataState">
<Value name="1">
<Value>probeWireStatus</Value>
</Value>
</Data>
<State>ProbeWireStatusEventDataState</State>
<StreamLocation>^DTSensorsD1EA.ProbeWireStDBAFS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
