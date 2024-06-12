Class DTSensors.Api.Client.model.Pressure Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

/// Barometric pressure in pascal.
/// * This property is required.
Property pascal As %Decimal;

/// The timestamp (UTC) of when the Pressure Event was received by a Cloud Connector.
/// * This property is required.
Property updateTime As %String(MAXLEN = "");

Storage Default
{
<Data name="PressureState">
<Value name="1">
<Value>pascal</Value>
</Value>
<Value name="2">
<Value>updateTime</Value>
</Value>
</Data>
<State>PressureState</State>
<StreamLocation>^DTSensors.Api.CliD1EA.PressureS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
