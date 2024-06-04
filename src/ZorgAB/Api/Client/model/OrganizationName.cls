Class ZorgAB.Api.Client.model.OrganizationName Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

Property active As %Boolean [ InitialExpression = "1" ];

Property author As %String(MAXLEN = "");

Property fullName As %String(MAXLEN = "");

Property index As %String(MAXLEN = "");

Property preferred As %Boolean [ InitialExpression = "0" ];

Property timestamp As %String(MAXLEN = "");

Property type As %String(MAXLEN = "");

Storage Default
{
<Data name="OrganizationNameState">
<Value name="1">
<Value>active</Value>
</Value>
<Value name="2">
<Value>author</Value>
</Value>
<Value name="3">
<Value>fullName</Value>
</Value>
<Value name="4">
<Value>index</Value>
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
</Data>
<State>OrganizationNameState</State>
<StreamLocation>^CONNECTORS34FF.OrganizatioFEE8S</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
