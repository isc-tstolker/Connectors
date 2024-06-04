Class ZorgAB.Api.Client.model.Type Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

Property active As %Boolean [ InitialExpression = "1" ];

Property author As %String(MAXLEN = "");

Property code As %String(MAXLEN = "");

Property displayName As %String(MAXLEN = "");

Property index As %String(MAXLEN = "");

Property timestamp As %String(MAXLEN = "");

Property type As %String(MAXLEN = "");

Storage Default
{
<Data name="TypeState">
<Value name="1">
<Value>active</Value>
</Value>
<Value name="2">
<Value>author</Value>
</Value>
<Value name="3">
<Value>code</Value>
</Value>
<Value name="4">
<Value>displayName</Value>
</Value>
<Value name="5">
<Value>index</Value>
</Value>
<Value name="6">
<Value>timestamp</Value>
</Value>
<Value name="7">
<Value>type</Value>
</Value>
</Data>
<State>TypeState</State>
<StreamLocation>^ZorgAB34FF.TypeS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
