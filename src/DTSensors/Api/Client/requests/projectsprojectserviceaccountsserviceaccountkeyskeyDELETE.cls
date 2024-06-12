Class DTSensors.Api.Client.requests.projectsprojectserviceaccountsserviceaccountkeyskeyDELETE Extends Ens.Request [ ProcedureBlock ]
{

Parameter METHOD = "delete";

Parameter URL = "/projects/{project}/serviceaccounts/{serviceaccount}/keys/{key}";

Property %Consume As %String(MAXLEN = "");

Property %ContentType As %String(MAXLEN = "");

Property %URL As %String(MAXLEN = "") [ InitialExpression = {..#URL} ];

/// The identifier of the Service Account Key.
Property pathkey As %String(MAXLEN = "");

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
	Set ..%URL = $Replace(..%URL,"{key}", ..pathkey)
	Quit sc
}

Storage Default
{
<Data name="projectsprojectserviceaccountsserviceaccountkeyskeyDELETEDefaultData">
<Subscript>"projectsprojectserviceaccountsserviceaccountkeyskeyDELETE"</Subscript>
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
<Value>pathkey</Value>
</Value>
<Value name="5">
<Value>pathproject</Value>
</Value>
<Value name="6">
<Value>pathserviceaccount</Value>
</Value>
</Data>
<DefaultData>projectsprojectserviceaccountsserviceaccountkeyskeyDELETEDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
