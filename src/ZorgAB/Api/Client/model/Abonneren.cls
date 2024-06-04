Class CONNECTORSPKG.ZorgAB.Api.Client.model.Abonneren Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

Property maximaleDuur As %String(MAXLEN = "");

Property subscriptionEndpointuri As %String(MAXLEN = "");

Storage Default
{
<Data name="AbonnerenState">
<Value name="1">
<Value>maximaleDuur</Value>
</Value>
<Value name="2">
<Value>subscriptionEndpointuri</Value>
</Value>
</Data>
<State>AbonnerenState</State>
<StreamLocation>^CONNECTORSPKG.Zo34FF.AbonnerenS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
