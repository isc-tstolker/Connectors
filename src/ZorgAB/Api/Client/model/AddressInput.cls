Class ZorgAB.Api.Client.model.AddressInput Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

Property active As %Boolean [ InitialExpression = "1" ];

Property address As %String(MAXLEN = "");

Property city As %String(MAXLEN = "");

Property country As %String(MAXLEN = "");

Property firstLine As %String(MAXLEN = "");

Property geolocation As %String(MAXLEN = "");

Property postalCode As %String(MAXLEN = "");

Property state As %String(MAXLEN = "");

Property streetName As %String(MAXLEN = "");

Property streetNumber As %String(MAXLEN = "");

Property type As %String(MAXLEN = "");

Storage Default
{
<Data name="AddressInputState">
<Value name="1">
<Value>active</Value>
</Value>
<Value name="2">
<Value>address</Value>
</Value>
<Value name="3">
<Value>city</Value>
</Value>
<Value name="4">
<Value>country</Value>
</Value>
<Value name="5">
<Value>firstLine</Value>
</Value>
<Value name="6">
<Value>geolocation</Value>
</Value>
<Value name="7">
<Value>postalCode</Value>
</Value>
<Value name="8">
<Value>state</Value>
</Value>
<Value name="9">
<Value>streetName</Value>
</Value>
<Value name="10">
<Value>streetNumber</Value>
</Value>
<Value name="11">
<Value>type</Value>
</Value>
</Data>
<State>AddressInputState</State>
<StreamLocation>^CONNECTORSPKG34FF.AddressInputS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
