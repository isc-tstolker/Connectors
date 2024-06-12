Class DTSensors.Api.Client.model.Label Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

/// The key of the Device Label.
/// * This property is required.
Property key As %String(MAXLEN = "");

/// The full resource name of the Device Label.
/// * This property is required.
Property name As %String(MAXLEN = "");

/// The value of the Device Label.
/// * This property is required.
Property value As %String(MAXLEN = "");

Storage Default
{
<Data name="LabelState">
<Value name="1">
<Value>key</Value>
</Value>
<Value name="2">
<Value>name</Value>
</Value>
<Value name="3">
<Value>value</Value>
</Value>
</Data>
<State>LabelState</State>
<StreamLocation>^DTSensors.Api.ClientD1EA.LabelS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
