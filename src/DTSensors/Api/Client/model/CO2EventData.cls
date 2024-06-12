Class DTSensors.Api.Client.model.CO2EventData Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

Property co2 As DTSensors.Api.Client.model.CO2;

Storage Default
{
<Data name="CO2EventDataState">
<Value name="1">
<Value>co2</Value>
</Value>
</Data>
<State>CO2EventDataState</State>
<StreamLocation>^DTSensors.ApiD1EA.CO2EventDataS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
