Class CONNECTORSPKG.ZorgAB.Api.Client.model.Systeemrol Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

Property resourceEndpoint As CONNECTORSPKG.ZorgAB.Api.Client.model.ResourceEndpoint;

Property systeemrolcode As %String(MAXLEN = "");

Storage Default
{
<Data name="SysteemrolState">
<Value name="1">
<Value>resourceEndpoint</Value>
</Value>
<Value name="2">
<Value>systeemrolcode</Value>
</Value>
</Data>
<State>SysteemrolState</State>
<StreamLocation>^CONNECTORSPKG.Z34FF.SysteemrolS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
