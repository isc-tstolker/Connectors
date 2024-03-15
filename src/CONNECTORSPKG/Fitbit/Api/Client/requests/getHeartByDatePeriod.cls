Class CONNECTORSPKG.Fitbit.Api.Client.requests.getHeartByDatePeriod Extends Ens.Request [ ProcedureBlock ]
{

Parameter METHOD = "get";

Parameter URL = "/1/user/-/activities/heart/date/{date}/{period}.json";

Property %Consume As %String(MAXLEN = "");

Property %ContentType As %String(MAXLEN = "");

Property %URL As %String(MAXLEN = "") [ InitialExpression = {..#URL} ];

/// The end date of the period specified in the format yyyy-MM-dd or today.
Property pathdate As %String;

/// The range of which data will be returned. Options are 1d, 7d, 30d, 1w, and 1m.
Property pathperiod As %String(MAXLEN = "");

/// Load %Net.HttpRequest with this property object.
Method LoadHttpRequestObject(ByRef httpRequest As %Net.HttpRequest) As %Status
{
	Set sc = $$$OK
	Set httpRequest.ContentType = ..%ContentType
	Do httpRequest.SetHeader("accept", ..%Consume)
	Set ..%URL = $Replace(..#URL,"{date}", ..pathdate)
	Set ..%URL = $Replace(..%URL,"{period}", ..pathperiod)
	Quit sc
}

Storage Default
{
<Data name="getHeartByDatePeriodDefaultData">
<Subscript>"getHeartByDatePeriod"</Subscript>
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
<Value name="5">
<Value>pathperiod</Value>
</Value>
</Data>
<DefaultData>getHeartByDatePeriodDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}