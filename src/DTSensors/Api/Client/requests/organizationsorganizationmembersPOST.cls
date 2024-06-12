Class DTSensors.Api.Client.requests.organizationsorganizationmembersPOST Extends Ens.Request [ ProcedureBlock ]
{

Parameter METHOD = "post";

Parameter URL = "/organizations/{organization}/members";

Property %Consume As %String(MAXLEN = "");

Property %ContentType As %String(MAXLEN = "") [ InitialExpression = "application/json" ];

Property %URL As %String(MAXLEN = "") [ InitialExpression = {..#URL} ];

/// Use this property for body content with content-type = application/json.
Property organizationmembersbody As DTSensors.Api.Client.model.organizationmembersbody;

/// The identifier of the Organization.
Property pathorganization As %String(MAXLEN = "");

/// Load %Net.HttpRequest with this property object.
Method LoadHttpRequestObject(ByRef httpRequest As %Net.HttpRequest) As %Status
{
	Set sc = $$$OK
	Set httpRequest.ContentType = ..%ContentType
	Do httpRequest.SetHeader("accept", ..%Consume)
	Set ..%URL = $Replace(..#URL,"{organization}", ..pathorganization)
	If $Piece($$$LOWER(..%ContentType),";",1) = "application/json" Return ..organizationmembersbody.%JSONExportToStream(httpRequest.EntityBody)
	Quit sc
}

Storage Default
{
<Data name="organizationsorganizationmembersPOSTDefaultData">
<Subscript>"organizationsorganizationmembersPOST"</Subscript>
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
<Value>organizationmembersbody</Value>
</Value>
<Value name="5">
<Value>pathorganization</Value>
</Value>
</Data>
<DefaultData>organizationsorganizationmembersPOSTDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
