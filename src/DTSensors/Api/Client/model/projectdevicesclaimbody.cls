Class DTSensors.Api.Client.model.projectdevicesclaimbody Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

/// An array of device identifiers
Property deviceIds As list Of %String(MAXLEN = "");

/// An array of kit identifiers
Property kitIds As list Of %String(MAXLEN = "");

Storage Default
{
<Data name="projectdevicesclaimbodyState">
<Value name="1">
<Value>deviceIds</Value>
</Value>
<Value name="2">
<Value>kitIds</Value>
</Value>
</Data>
<State>projectdevicesclaimbodyState</State>
<StreamLocation>^DTSensorsD1EA.projectdevi4EBCS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
