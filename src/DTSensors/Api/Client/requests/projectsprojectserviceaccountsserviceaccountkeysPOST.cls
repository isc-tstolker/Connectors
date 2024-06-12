Class DTSensors.Api.Client.requests.projectsprojectserviceaccountsserviceaccountkeysPOST Extends Ens.Request [ ProcedureBlock ]
{

Parameter METHOD = "post";

Parameter URL = "/projects/{project}/serviceaccounts/{serviceaccount}/keys";

Property %Consume As %String(MAXLEN = "");

Property %ContentType As %String(MAXLEN = "");

Property %URL As %String(MAXLEN = "") [ InitialExpression = {..#URL} ];

/// The identifier of the Project.
Property pathproject As %String(MAXLEN = "");

/// The identifier of the Service Account.
Property pathserviceaccount As %String(MAXLEN = "");

/// Load %Net.HttpRequest with this property object.
Method LoadHttpRequestObject(ByRef httpRequest As %Net.HttpRequest) As %Status
{
	Set sc = $$$OK
	Set httpRequest.ContentType = ..%ContentType
	Do httpRequest.SetHeader("accept", ..%Consume)
	Set ..%URL = $Replace(..#URL,"{project}", ..pathproject)
	Set ..%URL = $Replace(..%URL,"{serviceaccount}", ..pathserviceaccount)
	Quit sc
}

Storage Default
{
<Data name="projectsprojectserviceaccountsserviceaccountkeysPOSTDefaultData">
<Subscript>"projectsprojectserviceaccountsserviceaccountkeysPOST"</Subscript>
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
<Value>pathproject</Value>
</Value>
<Value name="5">
<Value>pathserviceaccount</Value>
</Value>
</Data>
<DefaultData>projectsprojectserviceaccountsserviceaccountkeysPOSTDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
