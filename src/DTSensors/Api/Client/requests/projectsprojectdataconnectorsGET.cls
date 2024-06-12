Class DTSensors.Api.Client.requests.projectsprojectdataconnectorsGET Extends Ens.Request [ ProcedureBlock ]
{

Parameter METHOD = "get";

Parameter URL = "/projects/{project}/dataconnectors";

Property %Consume As %String(MAXLEN = "");

Property %ContentType As %String(MAXLEN = "");

Property %URL As %String(MAXLEN = "") [ InitialExpression = {..#URL} ];

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
<Data name="projectsprojectdataconnectorsGETDefaultData">
<Subscript>"projectsprojectdataconnectorsGET"</Subscript>
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
<Value>querypageSize</Value>
</Value>
<Value name="5">
<Value>querypageToken</Value>
</Value>
</Data>
<DefaultData>projectsprojectdataconnectorsGETDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
