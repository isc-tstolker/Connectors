Class ZorgAB.Api.Client.model.LSPApplication Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

/// Deprecated. Supported until 31-12-2021
Property active As %Boolean [ InitialExpression = "1" ];

Property address As %String(MAXLEN = "");

Property applicationId As %String(MAXLEN = "");

Property author As %String(MAXLEN = "");

Property className As %String(%JSONFIELDNAME = "_className", MAXLEN = "");

Property conformances As list Of ZorgAB.Api.Client.model.Conformance;

Property description As %String(MAXLEN = "");

Property self As %String(%JSONFIELDNAME = "_self", MAXLEN = "");

Property status As %String(MAXLEN = "");

Property systemRoles As list Of %String(MAXLEN = "");

Property timestamp As %String(MAXLEN = "");

Storage Default
{
<Data name="LSPApplicationState">
<Value name="1">
<Value>active</Value>
</Value>
<Value name="2">
<Value>address</Value>
</Value>
<Value name="3">
<Value>applicationId</Value>
</Value>
<Value name="4">
<Value>author</Value>
</Value>
<Value name="5">
<Value>className</Value>
</Value>
<Value name="6">
<Value>conformances</Value>
</Value>
<Value name="7">
<Value>description</Value>
</Value>
<Value name="8">
<Value>self</Value>
</Value>
<Value name="9">
<Value>status</Value>
</Value>
<Value name="10">
<Value>systemRoles</Value>
</Value>
<Value name="11">
<Value>timestamp</Value>
</Value>
</Data>
<State>LSPApplicationState</State>
<StreamLocation>^CONNECTORSP34FF.LSPApplicationS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
