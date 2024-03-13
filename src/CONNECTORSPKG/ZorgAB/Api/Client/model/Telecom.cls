Class CONNECTORSPKG.ZorgAB.Api.Client.model.Telecom Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

Property active As %Boolean [ InitialExpression = "1" ];

Property author As %String(MAXLEN = "");

Property index As %String(MAXLEN = "");

Property name As %String(MAXLEN = "");

Property preferred As %Boolean [ InitialExpression = "0" ];

Property timestamp As %String(MAXLEN = "");

Property type As %String(MAXLEN = "");

Property value As %String(MAXLEN = "");

Storage Default
{
<Data name="TelecomState">
<Value name="1">
<Value>active</Value>
</Value>
<Value name="2">
<Value>author</Value>
</Value>
<Value name="3">
<Value>index</Value>
</Value>
<Value name="4">
<Value>name</Value>
</Value>
<Value name="5">
<Value>preferred</Value>
</Value>
<Value name="6">
<Value>timestamp</Value>
</Value>
<Value name="7">
<Value>type</Value>
</Value>
<Value name="8">
<Value>value</Value>
</Value>
</Data>
<State>TelecomState</State>
<StreamLocation>^CONNECTORSPKG.Zorg34FF.TelecomS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
