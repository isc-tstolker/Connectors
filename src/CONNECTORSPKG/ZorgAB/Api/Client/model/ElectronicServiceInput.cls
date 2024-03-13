Class CONNECTORSPKG.ZorgAB.Api.Client.model.ElectronicServiceInput Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

Property abonneren As CONNECTORSPKG.ZorgAB.Api.Client.model.Abonneren;

Property active As %Boolean [ InitialExpression = "1" ];

Property address As %String(MAXLEN = "");

Property authorizationEndpoint As CONNECTORSPKG.ZorgAB.Api.Client.model.AuthorizationEndpoint;

Property className As %String(%JSONFIELDNAME = "_className", MAXLEN = "");

Property description As %String(MAXLEN = "");

Property gegevensdienstId As %String(MAXLEN = "");

Property interfaceversies As list Of CONNECTORSPKG.ZorgAB.Api.Client.model.Interfaceversie;

Property systeemrollen As list Of CONNECTORSPKG.ZorgAB.Api.Client.model.Systeemrol;

Property tokenEndpoint As CONNECTORSPKG.ZorgAB.Api.Client.model.TokenEndpoint;

Property type As %String(MAXLEN = "");

Property value As %String(MAXLEN = "");

Property weergavenaam As %String(MAXLEN = "");

Storage Default
{
<Data name="ElectronicServiceInputState">
<Value name="1">
<Value>abonneren</Value>
</Value>
<Value name="2">
<Value>active</Value>
</Value>
<Value name="3">
<Value>address</Value>
</Value>
<Value name="4">
<Value>authorizationEndpoint</Value>
</Value>
<Value name="5">
<Value>className</Value>
</Value>
<Value name="6">
<Value>description</Value>
</Value>
<Value name="7">
<Value>gegevensdienstId</Value>
</Value>
<Value name="8">
<Value>interfaceversies</Value>
</Value>
<Value name="9">
<Value>systeemrollen</Value>
</Value>
<Value name="10">
<Value>tokenEndpoint</Value>
</Value>
<Value name="11">
<Value>type</Value>
</Value>
<Value name="12">
<Value>value</Value>
</Value>
<Value name="13">
<Value>weergavenaam</Value>
</Value>
</Data>
<State>ElectronicServiceInputState</State>
<StreamLocation>^CONNECTORS34FF.ElectronicSeAE6S</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
