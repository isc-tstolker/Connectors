Class CONNECTORSPKG.ZorgAB.Api.Client.requests.organizationsidtypesPOST Extends Ens.Request [ ProcedureBlock ]
{

Parameter METHOD = "post";

Parameter URL = "/organizations/{id}/types";

Property %Consume As %String(MAXLEN = "");

Property %ContentType As %String(MAXLEN = "") [ InitialExpression = "application/json" ];

Property %URL As %String(MAXLEN = "") [ InitialExpression = {..#URL} ];

/// Use this property for body content with content-type = application/json.
Property TypeInput As CONNECTORSPKG.ZorgAB.Api.Client.model.TypeInput;

Property pathid As %String(MAXLEN = "");

/// Load %Net.HttpRequest with this property object.
Method LoadHttpRequestObject(ByRef httpRequest As %Net.HttpRequest) As %Status
{
	Set sc = $$$OK
	Set httpRequest.ContentType = ..%ContentType
	Do httpRequest.SetHeader("accept", ..%Consume)
	Set ..%URL = $Replace(..#URL,"{id}", ..pathid)
	If $Piece($$$LOWER(..%ContentType),";",1) = "application/json" Return ..TypeInput.%JSONExportToStream(httpRequest.EntityBody)
	Quit sc
}

Storage Default
{
<Data name="organizationsidtypesPOSTDefaultData">
<Subscript>"organizationsidtypesPOST"</Subscript>
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
<Value>TypeInput</Value>
</Value>
<Value name="5">
<Value>pathid</Value>
</Value>
</Data>
<DefaultData>organizationsidtypesPOSTDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
