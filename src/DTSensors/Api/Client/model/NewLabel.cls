Class DTSensors.Api.Client.model.NewLabel Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

/// The key of the Device Label.
/// * This property is required.
Property key As %String(MAXLEN = "");

/// The value of the Device Label.
/// * This property is required.
Property value As %String(MAXLEN = "");

Storage Default
{
<Data name="NewLabelState">
<Value name="1">
<Value>key</Value>
</Value>
<Value name="2">
<Value>value</Value>
</Value>
</Data>
<State>NewLabelState</State>
<StreamLocation>^DTSensors.Api.CliD1EA.NewLabelS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
