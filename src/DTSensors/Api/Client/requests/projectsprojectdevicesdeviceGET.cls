Class DTSensors.Api.Client.requests.projectsprojectdevicesdeviceGET Extends Ens.Request [ ProcedureBlock ]
{

Parameter METHOD = "get";

Parameter URL = "/projects/{project}/devices/{device}";

Property %Consume As %String(MAXLEN = "");

Property %ContentType As %String(MAXLEN = "");

Property %URL As %String(MAXLEN = "") [ InitialExpression = {..#URL} ];

/// The identifier of the Device.
Property pathdevice As %String(MAXLEN = "");

/// The identifier of the Project. Optionally use `-` as a wildcard if you don't want to specify 
/// the identifier of the Project.
Property pathproject As %String(MAXLEN = "");

/// Load %Net.HttpRequest with this property object.
Method LoadHttpRequestObject(ByRef httpRequest As %Net.HttpRequest) As %Status
{
	Set sc = $$$OK
	Set httpRequest.ContentType = ..%ContentType
	Do httpRequest.SetHeader("accept", ..%Consume)
	Set ..%URL = $Replace(..#URL,"{project}", ..pathproject)
	Set ..%URL = $Replace(..%URL,"{device}", ..pathdevice)
	Quit sc
}

Storage Default
{
<Data name="projectsprojectdevicesdeviceGETDefaultData">
<Subscript>"projectsprojectdevicesdeviceGET"</Subscript>
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
<Value>pathdevice</Value>
</Value>
<Value name="5">
<Value>pathproject</Value>
</Value>
</Data>
<DefaultData>projectsprojectdevicesdeviceGETDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
