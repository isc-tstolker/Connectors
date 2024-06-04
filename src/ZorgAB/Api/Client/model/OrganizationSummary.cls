Class ZorgAB.Api.Client.model.OrganizationSummary Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

Property applicationIds As list Of %String(MAXLEN = "");

Property displayName As %String(MAXLEN = "");

Property id As %String(%JSONFIELDNAME = "_id", MAXLEN = "");

Property self As %String(%JSONFIELDNAME = "_self", MAXLEN = "");

/// Deprecated. Supported until 31-12-2020
Property type As list Of %String(MAXLEN = "");

Property types As list Of ZorgAB.Api.Client.model.Type;

Property ura As %String(MAXLEN = "");

Storage Default
{
<Data name="OrganizationSummaryState">
<Value name="1">
<Value>applicationIds</Value>
</Value>
<Value name="2">
<Value>displayName</Value>
</Value>
<Value name="3">
<Value>id</Value>
</Value>
<Value name="4">
<Value>self</Value>
</Value>
<Value name="5">
<Value>type</Value>
</Value>
<Value name="6">
<Value>types</Value>
</Value>
<Value name="7">
<Value>ura</Value>
</Value>
</Data>
<State>OrganizationSummaryState</State>
<StreamLocation>^CONNECTORS34FF.OrganizatioBDB8S</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
