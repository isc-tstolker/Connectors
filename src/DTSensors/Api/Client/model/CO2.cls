Class DTSensors.Api.Client.model.CO2 Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

/// The amount of measured CO2 in PPM (Parts Per Million).
/// * This property is required.
Property ppm As %Decimal;

/// The timestamp (UTC) of when the CO2 Event was received by a Cloud Connector.
/// * This property is required.
Property updateTime As %String(MAXLEN = "");

Storage Default
{
<Data name="CO2State">
<Value name="1">
<Value>ppm</Value>
</Value>
<Value name="2">
<Value>updateTime</Value>
</Value>
</Data>
<State>CO2State</State>
<StreamLocation>^DTSensors.Api.Client.mD1EA.CO2S</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
