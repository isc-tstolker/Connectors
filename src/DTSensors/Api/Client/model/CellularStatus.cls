Class DTSensors.Api.Client.model.CellularStatus Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

Property errors As list Of DTSensors.Api.Client.model.ConnectivityError;

/// 
/// * This property is required.
Property signalStrength As %Integer;

/// The timestamp (UTC) for the connection status update.
Property updateTime As %String(MAXLEN = "");

Storage Default
{
<Data name="CellularStatusState">
<Value name="1">
<Value>errors</Value>
</Value>
<Value name="2">
<Value>signalStrength</Value>
</Value>
<Value name="3">
<Value>updateTime</Value>
</Value>
</Data>
<State>CellularStatusState</State>
<StreamLocation>^DTSensors.AD1EA.CellularStatusS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
