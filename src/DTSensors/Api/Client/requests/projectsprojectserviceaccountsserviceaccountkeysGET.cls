Class DTSensors.Api.Client.requests.projectsprojectserviceaccountsserviceaccountkeysGET Extends Ens.Request [ ProcedureBlock ]
{

Parameter METHOD = "get";

Parameter URL = "/projects/{project}/serviceaccounts/{serviceaccount}/keys";

Property %Consume As %String(MAXLEN = "");

Property %ContentType As %String(MAXLEN = "");

Property %URL As %String(MAXLEN = "") [ InitialExpression = {..#URL} ];

/// The identifier of the Service Account.
Property pathserviceaccount As %String(MAXLEN = "");

/// Requested page size.
/// 
/// Maximum page size is 100, which is also the default.
Property querypageSize As %Integer;

/// A token identifying a page of results to return.
/// 
/// Should be a `nextPageToken` value returned from a previous call. If not specified, the first page of results will be returned.
Property querypageToken As %String(MAXLEN = "");

/// Load %Net.HttpRequest with this property object.
Method LoadHttpRequestObject(ByRef httpRequest As %Net.HttpRequest) As %Status
{
	Set sc = $$$OK
	Set httpRequest.ContentType = ..%ContentType
	Do httpRequest.SetHeader("accept", ..%Consume)
	Set ..%URL = $Replace(..#URL,"{serviceaccount}", ..pathserviceaccount)
	If (..querypageSize '= "") {
		Do httpRequest.SetParam("pageSize",..querypageSize)
	}
	If (..querypageToken '= "") {
		Do httpRequest.SetParam("pageToken",..querypageToken)
	}
	Quit sc
}

Storage Default
{
<Data name="projectsprojectserviceaccountsserviceaccountkeysGETDefaultData">
<Subscript>"projectsprojectserviceaccountsserviceaccountkeysGET"</Subscript>
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
<Value>pathserviceaccount</Value>
</Value>
<Value name="5">
<Value>querypageSize</Value>
</Value>
<Value name="6">
<Value>querypageToken</Value>
</Value>
</Data>
<DefaultData>projectsprojectserviceaccountsserviceaccountkeysGETDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
