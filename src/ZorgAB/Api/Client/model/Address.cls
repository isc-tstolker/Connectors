Class ZorgAB.Api.Client.model.Address Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

Property active As %Boolean [ InitialExpression = "1" ];

Property address As %String(MAXLEN = "");

Property author As %String(MAXLEN = "");

Property city As %String(MAXLEN = "");

Property country As %String(MAXLEN = "");

Property firstLine As %String(MAXLEN = "");

Property geolocation As %String(MAXLEN = "");

Property index As %String(MAXLEN = "");

Property postalCode As %String(MAXLEN = "");

Property state As %String(MAXLEN = "");

Property streetName As %String(MAXLEN = "");

Property streetNumber As %String(MAXLEN = "");

Property timestamp As %String(MAXLEN = "");

Property type As %String(MAXLEN = "");

Storage Default
{
<Data name="AddressState">
<Value name="1">
<Value>active</Value>
</Value>
<Value name="2">
<Value>address</Value>
</Value>
<Value name="3">
<Value>author</Value>
</Value>
<Value name="4">
<Value>city</Value>
</Value>
<Value name="5">
<Value>country</Value>
</Value>
<Value name="6">
<Value>firstLine</Value>
</Value>
<Value name="7">
<Value>geolocation</Value>
</Value>
<Value name="8">
<Value>index</Value>
</Value>
<Value name="9">
<Value>postalCode</Value>
</Value>
<Value name="10">
<Value>state</Value>
</Value>
<Value name="11">
<Value>streetName</Value>
</Value>
<Value name="12">
<Value>streetNumber</Value>
</Value>
<Value name="13">
<Value>timestamp</Value>
</Value>
<Value name="14">
<Value>type</Value>
</Value>
</Data>
<State>AddressState</State>
<StreamLocation>^CONNECTORSPKG.Zorg34FF.AddressS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
