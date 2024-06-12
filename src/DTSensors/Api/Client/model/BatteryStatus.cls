Class DTSensors.Api.Client.model.BatteryStatus Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

/// 
/// * This property is required.
Property percentage As %Integer(MAXVAL = 100, MINVAL = 0);

/// The timestamp (UTC) of when the Battery Status Event was received by a Cloud Connector.
/// * This property is required.
Property updateTime As %String(MAXLEN = "");

Storage Default
{
<Data name="BatteryStatusState">
<Value name="1">
<Value>percentage</Value>
</Value>
<Value name="2">
<Value>updateTime</Value>
</Value>
</Data>
<State>BatteryStatusState</State>
<StreamLocation>^DTSensors.ApD1EA.BatteryStatusS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
