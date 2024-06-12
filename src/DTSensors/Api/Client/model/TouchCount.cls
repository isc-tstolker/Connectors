Class DTSensors.Api.Client.model.TouchCount Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

/// The total number of touches registered through the lifetime of the sensor.
/// * This property is required.
Property total As %Integer;

/// The timestamp (UTC) of when the Touch Count Event was received by a Cloud Connector.
/// * This property is required.
Property updateTime As %String(MAXLEN = "");

Storage Default
{
<Data name="TouchCountState">
<Value name="1">
<Value>total</Value>
</Value>
<Value name="2">
<Value>updateTime</Value>
</Value>
</Data>
<State>TouchCountState</State>
<StreamLocation>^DTSensors.Api.CD1EA.TouchCountS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
