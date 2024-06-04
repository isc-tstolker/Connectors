Class ZorgAB.Api.Client.model.Conformance Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

Property interactionId As %String(MAXLEN = "");

Property receive As %Boolean [ InitialExpression = "1" ];

Property send As %Boolean [ InitialExpression = "1" ];

Storage Default
{
<Data name="ConformanceState">
<Value name="1">
<Value>interactionId</Value>
</Value>
<Value name="2">
<Value>receive</Value>
</Value>
<Value name="3">
<Value>send</Value>
</Value>
</Data>
<State>ConformanceState</State>
<StreamLocation>^CONNECTORSPKG34FF.ConformanceS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
