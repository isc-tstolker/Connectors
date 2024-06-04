Class CONNECTORSPKG.ZorgAB.Api.Client.model.ElectronicService Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

Property abonneren As CONNECTORSPKG.ZorgAB.Api.Client.model.Abonneren;

/// Deprecated for objects of type LSP Application. Supported for objects of type LSP Application until 31-12-2021
Property active As %Boolean [ InitialExpression = "1" ];

Property address As %String(MAXLEN = "");

Property applicationId As %String(MAXLEN = "");

Property author As %String(MAXLEN = "");

Property authorizationEndpoint As CONNECTORSPKG.ZorgAB.Api.Client.model.AuthorizationEndpoint;

Property className As %String(%JSONFIELDNAME = "_className", MAXLEN = "");

Property conformances As list Of CONNECTORSPKG.ZorgAB.Api.Client.model.Conformance;

Property description As %String(MAXLEN = "");

Property gegevensdienstId As %String(MAXLEN = "");

Property id As %String(MAXLEN = "");

Property index As %String(MAXLEN = "");

Property interfaceversies As list Of CONNECTORSPKG.ZorgAB.Api.Client.model.Interfaceversie;

Property status As %String(MAXLEN = "");

Property systeemrollen As list Of CONNECTORSPKG.ZorgAB.Api.Client.model.Systeemrol;

Property systemRoles As list Of %String(MAXLEN = "");

Property timestamp As %String(MAXLEN = "");

Property tokenEndpoint As CONNECTORSPKG.ZorgAB.Api.Client.model.TokenEndpoint;

Property type As %String(MAXLEN = "");

Property value As %String(MAXLEN = "");

Property weergavenaam As %String(MAXLEN = "");

Storage Default
{
<Data name="ElectronicServiceState">
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
<Value>applicationId</Value>
</Value>
<Value name="5">
<Value>author</Value>
</Value>
<Value name="6">
<Value>authorizationEndpoint</Value>
</Value>
<Value name="7">
<Value>className</Value>
</Value>
<Value name="8">
<Value>conformances</Value>
</Value>
<Value name="9">
<Value>description</Value>
</Value>
<Value name="10">
<Value>gegevensdienstId</Value>
</Value>
<Value name="11">
<Value>id</Value>
</Value>
<Value name="12">
<Value>index</Value>
</Value>
<Value name="13">
<Value>interfaceversies</Value>
</Value>
<Value name="14">
<Value>status</Value>
</Value>
<Value name="15">
<Value>systeemrollen</Value>
</Value>
<Value name="16">
<Value>systemRoles</Value>
</Value>
<Value name="17">
<Value>timestamp</Value>
</Value>
<Value name="18">
<Value>tokenEndpoint</Value>
</Value>
<Value name="19">
<Value>type</Value>
</Value>
<Value name="20">
<Value>value</Value>
</Value>
<Value name="21">
<Value>weergavenaam</Value>
</Value>
</Data>
<State>ElectronicServiceState</State>
<StreamLocation>^CONNECTORS34FF.ElectronicSA998S</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
