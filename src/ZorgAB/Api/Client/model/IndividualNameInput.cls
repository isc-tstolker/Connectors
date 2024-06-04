Class ZorgAB.Api.Client.model.IndividualNameInput Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

Property active As %Boolean [ InitialExpression = "1" ];

Property familyName As %String(MAXLEN = "");

Property firstName As %String(MAXLEN = "");

Property fullName As %String(MAXLEN = "");

Property preferred As %Boolean [ InitialExpression = "0" ];

Property prefix As %String(MAXLEN = "");

Property type As %String(MAXLEN = "");

Storage Default
{
<Data name="IndividualNameInputState">
<Value name="1">
<Value>active</Value>
</Value>
<Value name="2">
<Value>familyName</Value>
</Value>
<Value name="3">
<Value>firstName</Value>
</Value>
<Value name="4">
<Value>fullName</Value>
</Value>
<Value name="5">
<Value>preferred</Value>
</Value>
<Value name="6">
<Value>prefix</Value>
</Value>
<Value name="7">
<Value>type</Value>
</Value>
</Data>
<State>IndividualNameInputState</State>
<StreamLocation>^CONNECTORS34FF.IndividualN5CBFS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
