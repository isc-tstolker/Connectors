Class DTSensors.Api.Client.model.labelslabelbody Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

/// The new value to set for the existing label.
Property value As %String(MAXLEN = "");

Storage Default
{
<Data name="labelslabelbodyState">
<Value name="1">
<Value>value</Value>
</Value>
</Data>
<State>labelslabelbodyState</State>
<StreamLocation>^DTSensorsD1EA.labelslabelCC11S</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
