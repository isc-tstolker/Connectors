Class DTSensors.Api.Client.requests.projectsprojectdevicesdevicelabelslabelDELETE Extends Ens.Request [ ProcedureBlock ]
{

Parameter METHOD = "delete";

Parameter URL = "/projects/{project}/devices/{device}/labels/{label}";

Property %Consume As %String(MAXLEN = "");

Property %ContentType As %String(MAXLEN = "");

Property %URL As %String(MAXLEN = "") [ InitialExpression = {..#URL} ];

/// The identifier of the Device.
Property pathdevice As %String(MAXLEN = "");

/// The identifier of the Device Label.
Property pathlabel As %String(MAXLEN = "");

/// The identifier of the Project.
Property pathproject As %String(MAXLEN = "");

/// Load %Net.HttpRequest with this property object.
Method LoadHttpRequestObject(ByRef httpRequest As %Net.HttpRequest) As %Status
{
	Set sc = $$$OK
	Set httpRequest.ContentType = ..%ContentType
	Do httpRequest.SetHeader("accept", ..%Consume)
	Set ..%URL = $Replace(..#URL,"{project}", ..pathproject)
	Set ..%URL = $Replace(..%URL,"{device}", ..pathdevice)
	Set ..%URL = $Replace(..%URL,"{label}", ..pathlabel)
	Quit sc
}

Storage Default
{
<Data name="projectsprojectdevicesdevicelabelslabelDELETEDefaultData">
<Subscript>"projectsprojectdevicesdevicelabelslabelDELETE"</Subscript>
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
<Value>pathlabel</Value>
</Value>
<Value name="6">
<Value>pathproject</Value>
</Value>
</Data>
<DefaultData>projectsprojectdevicesdevicelabelslabelDELETEDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
