Class CONNECTORSPKG.Fitbit.Api.Client.requests.deleteWaterLog Extends Ens.Request [ ProcedureBlock ]
{

Parameter METHOD = "delete";

Parameter URL = "/1/user/-/foods/log/water/{water-log-id}.json";

Property %Consume As %String(MAXLEN = "");

Property %ContentType As %String(MAXLEN = "");

Property %URL As %String(MAXLEN = "") [ InitialExpression = {..#URL} ];

/// The ID of the waterUnit log entry to be deleted.
Property pathwaterlogid As %String(MAXLEN = "");

/// Load %Net.HttpRequest with this property object.
Method LoadHttpRequestObject(ByRef httpRequest As %Net.HttpRequest) As %Status
{
	Set sc = $$$OK
	Set httpRequest.ContentType = ..%ContentType
	Do httpRequest.SetHeader("accept", ..%Consume)
	Set ..%URL = $Replace(..#URL,"{water-log-id}", ..pathwaterlogid)
	Quit sc
}

Storage Default
{
<Data name="deleteWaterLogDefaultData">
<Subscript>"deleteWaterLog"</Subscript>
<Value name="1">
<Value>%Consume</Value>
</Value>
<Value name="2">
<Value>%ContentType</Value>
</Value>
<Value name="3">
<Value>%URL</Value>
</Value>
<Value name="4">
<Value>pathwaterlogid</Value>
</Value>
</Data>
<DefaultData>deleteWaterLogDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}