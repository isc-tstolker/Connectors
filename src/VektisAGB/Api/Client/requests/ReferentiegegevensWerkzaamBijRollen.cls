Class CONNECTORSPKG.VektisAGB.Api.Client.requests.ReferentiegegevensWerkzaamBijRollen Extends Ens.Request [ ProcedureBlock ]
{

Parameter METHOD = "get";

Parameter URL = "/v2/relaties/werkzaambij/zorgverlener/rollen";

Property %Consume As %String(MAXLEN = "");

Property %ContentType As %String(MAXLEN = "");

Property %URL As %String(MAXLEN = "") [ InitialExpression = {..#URL} ];

/// Load %Net.HttpRequest with this property object.
Method LoadHttpRequestObject(ByRef httpRequest As %Net.HttpRequest) As %Status
{
	Set sc = $$$OK
	Set httpRequest.ContentType = ..%ContentType
	Do httpRequest.SetHeader("accept", ..%Consume)
	Quit sc
}

Storage Default
{
<Data name="ReferentiegegevensWerkzaamBijRollenDefaultData">
<Subscript>"ReferentiegegevensWerkzaamBijRollen"</Subscript>
<Value name="1">
<Value>%Consume</Value>
</Value>
<Value name="2">
<Value>%ContentType</Value>
</Value>
<Value name="3">
<Value>%URL</Value>
</Value>
</Data>
<DefaultData>ReferentiegegevensWerkzaamBijRollenDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
