Class ZorgAB.Api.Client.model.OrganizationNameInput Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

Property active As %Boolean [ InitialExpression = "1" ];

Property fullName As %String(MAXLEN = "");

Property preferred As %Boolean [ InitialExpression = "0" ];

Property type As %String(MAXLEN = "");

Storage Default
{
<Data name="OrganizationNameInputState">
<Value name="1">
<Value>active</Value>
</Value>
<Value name="2">
<Value>fullName</Value>
</Value>
<Value name="3">
<Value>preferred</Value>
</Value>
<Value name="4">
<Value>type</Value>
</Value>
</Data>
<State>OrganizationNameInputState</State>
<StreamLocation>^CONNECTORS34FF.OrganizatioB5B7S</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
