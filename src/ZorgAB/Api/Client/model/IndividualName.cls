Class ZorgAB.Api.Client.model.IndividualName Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

Property active As %Boolean [ InitialExpression = "1" ];

Property author As %String(MAXLEN = "");

Property familyName As %String(MAXLEN = "");

Property firstName As %String(MAXLEN = "");

Property fullName As %String(MAXLEN = "");

Property index As %String(MAXLEN = "");

Property preferred As %Boolean [ InitialExpression = "0" ];

Property prefix As %String(MAXLEN = "");

Property timestamp As %String(MAXLEN = "");

Property type As %String(MAXLEN = "");

Storage Default
{
<Data name="IndividualNameState">
<Value name="1">
<Value>active</Value>
</Value>
<Value name="2">
<Value>author</Value>
</Value>
<Value name="3">
<Value>familyName</Value>
</Value>
<Value name="4">
<Value>firstName</Value>
</Value>
<Value name="5">
<Value>fullName</Value>
</Value>
<Value name="6">
<Value>index</Value>
</Value>
<Value name="7">
<Value>preferred</Value>
</Value>
<Value name="8">
<Value>prefix</Value>
</Value>
<Value name="9">
<Value>timestamp</Value>
</Value>
<Value name="10">
<Value>type</Value>
</Value>
</Data>
<State>IndividualNameState</State>
<StreamLocation>^CONNECTORSP34FF.IndividualNameS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
