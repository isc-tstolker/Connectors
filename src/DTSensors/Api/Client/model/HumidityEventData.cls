Class DTSensors.Api.Client.model.HumidityEventData Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

Property humidity As DTSensors.Api.Client.model.Humidity;

Storage Default
{
<Data name="HumidityEventDataState">
<Value name="1">
<Value>humidity</Value>
</Value>
</Data>
<State>HumidityEventDataState</State>
<StreamLocation>^DTSensorsD1EA.HumidityEve704DS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
