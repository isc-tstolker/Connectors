Class DTSensors.Api.Client.model.PressureEventData Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

Property pressure As DTSensors.Api.Client.model.Pressure;

Storage Default
{
<Data name="PressureEventDataState">
<Value name="1">
<Value>pressure</Value>
</Value>
</Data>
<State>PressureEventDataState</State>
<StreamLocation>^DTSensorsD1EA.PressureEve83ADS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
