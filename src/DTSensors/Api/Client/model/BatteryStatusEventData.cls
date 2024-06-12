Class DTSensors.Api.Client.model.BatteryStatusEventData Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

Property batteryStatus As DTSensors.Api.Client.model.BatteryStatus;

Storage Default
{
<Data name="BatteryStatusEventDataState">
<Value name="1">
<Value>batteryStatus</Value>
</Value>
</Data>
<State>BatteryStatusEventDataState</State>
<StreamLocation>^DTSensorsD1EA.BatteryStat2D5CS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
