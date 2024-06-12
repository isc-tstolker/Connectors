Class DTSensors.Api.Client.requests.projectsprojectdataconnectorsdataconnectorsyncPOST Extends Ens.Request [ ProcedureBlock ]
{

Parameter METHOD = "post";

Parameter URL = "/projects/{project}/dataconnectors/{dataconnector}:sync";

Property %Consume As %String(MAXLEN = "");

Property %ContentType As %String(MAXLEN = "");

Property %URL As %String(MAXLEN = "") [ InitialExpression = {..#URL} ];

/// The identifier of the Data Connector.
Property pathdataconnector As %String(MAXLEN = "");

/// The identifier of the Project.
Property pathproject As %String(MAXLEN = "");

/// Load %Net.HttpRequest with this property object.
Method LoadHttpRequestObject(ByRef httpRequest As %Net.HttpRequest) As %Status
{
	Set sc = $$$OK
	Set httpRequest.ContentType = ..%ContentType
	Do httpRequest.SetHeader("accept", ..%Consume)
	Set ..%URL = $Replace(..#URL,"{project}", ..pathproject)
	Set ..%URL = $Replace(..%URL,"{dataconnector}", ..pathdataconnector)
	Quit sc
}

Storage Default
{
<Data name="projectsprojectdataconnectorsdataconnectorsyncPOSTDefaultData">
<Subscript>"projectsprojectdataconnectorsdataconnectorsyncPOST"</Subscript>
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
<Value>pathdataconnector</Value>
</Value>
<Value name="5">
<Value>pathproject</Value>
</Value>
</Data>
<DefaultData>projectsprojectdataconnectorsdataconnectorsyncPOSTDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
