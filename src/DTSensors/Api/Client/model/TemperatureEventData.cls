Class DTSensors.Api.Client.model.TemperatureEventData Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

Property temperature As DTSensors.Api.Client.model.Temperature;

Storage Default
{
<Data name="TemperatureEventDataState">
<Value name="1">
<Value>temperature</Value>
</Value>
</Data>
<State>TemperatureEventDataState</State>
<StreamLocation>^DTSensorsD1EA.Temperature4156S</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
