Class CONNECTORSPKG.Fitbit.Api.Client.requests.getHrvSummaryDate Extends Ens.Request [ ProcedureBlock ]
{

Parameter METHOD = "get";

Parameter URL = "/1/user/-/hrv/date/{date}.json";

Property %Consume As %String(MAXLEN = "");

Property %ContentType As %String(MAXLEN = "");

Property %URL As %String(MAXLEN = "") [ InitialExpression = {..#URL} ];

/// The date in the format of yyyy-MM-dd or today.
Property pathdate As %String;

/// Load %Net.HttpRequest with this property object.
Method LoadHttpRequestObject(ByRef httpRequest As %Net.HttpRequest) As %Status
{
	Set sc = $$$OK
	Set httpRequest.ContentType = ..%ContentType
	Do httpRequest.SetHeader("accept", ..%Consume)
	Set ..%URL = $Replace(..#URL,"{date}", ..pathdate)
	Quit sc
}

Storage Default
{
<Data name="getHrvSummaryDateDefaultData">
<Subscript>"getHrvSummaryDate"</Subscript>
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
<Value>pathdate</Value>
</Value>
</Data>
<DefaultData>getHrvSummaryDateDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}