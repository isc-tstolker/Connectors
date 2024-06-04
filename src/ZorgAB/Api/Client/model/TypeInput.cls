Class ZorgAB.Api.Client.model.TypeInput Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

Property active As %Boolean [ InitialExpression = "1" ];

Property code As %String(MAXLEN = "");

Property displayName As %String(MAXLEN = "");

Property type As %String(MAXLEN = "");

Storage Default
{
<Data name="TypeInputState">
<Value name="1">
<Value>active</Value>
</Value>
<Value name="2">
<Value>code</Value>
</Value>
<Value name="3">
<Value>displayName</Value>
</Value>
<Value name="4">
<Value>type</Value>
</Value>
</Data>
<State>TypeInputState</State>
<StreamLocation>^CONNECTORSPKG.Zo34FF.TypeInputS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
