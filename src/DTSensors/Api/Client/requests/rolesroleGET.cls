Class DTSensors.Api.Client.requests.rolesroleGET Extends Ens.Request [ ProcedureBlock ]
{

Parameter METHOD = "get";

Parameter URL = "/roles/{role}";

Property %Consume As %String(MAXLEN = "");

Property %ContentType As %String(MAXLEN = "");

Property %URL As %String(MAXLEN = "") [ InitialExpression = {..#URL} ];

/// The identifier of the Role (eg. `project.admin`).
Property pathrole As %String(MAXLEN = "");

/// Load %Net.HttpRequest with this property object.
Method LoadHttpRequestObject(ByRef httpRequest As %Net.HttpRequest) As %Status
{
	Set sc = $$$OK
	Set httpRequest.ContentType = ..%ContentType
	Do httpRequest.SetHeader("accept", ..%Consume)
	Set ..%URL = $Replace(..#URL,"{role}", ..pathrole)
	Quit sc
}

Storage Default
{
<Data name="rolesroleGETDefaultData">
<Subscript>"rolesroleGET"</Subscript>
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
<Value>pathrole</Value>
</Value>
</Data>
<DefaultData>rolesroleGETDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
