Class ZorgAB.Api.Client.model.WorksAtInput Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

Property availability As %String(MAXLEN = "");

/// 
/// * This property is required.
Property individualId As %String(MAXLEN = "");

/// 
/// * This property is required.
Property organizationId As %String(MAXLEN = "");

Property speciality As %String(MAXLEN = "");

Property telecoms As list Of ZorgAB.Api.Client.model.Telecom;

Storage Default
{
<Data name="WorksAtInputState">
<Value name="1">
<Value>availability</Value>
</Value>
<Value name="2">
<Value>individualId</Value>
</Value>
<Value name="3">
<Value>organizationId</Value>
</Value>
<Value name="4">
<Value>speciality</Value>
</Value>
<Value name="5">
<Value>telecoms</Value>
</Value>
</Data>
<State>WorksAtInputState</State>
<StreamLocation>^CONNECTORSPKG34FF.WorksAtInputS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
