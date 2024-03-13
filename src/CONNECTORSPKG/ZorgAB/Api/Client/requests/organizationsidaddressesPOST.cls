Class CONNECTORSPKG.ZorgAB.Api.Client.requests.organizationsidaddressesPOST Extends Ens.Request [ ProcedureBlock ]
{

Parameter METHOD = "post";

Parameter URL = "/organizations/{id}/addresses";

Property %Consume As %String(MAXLEN = "");

Property %ContentType As %String(MAXLEN = "") [ InitialExpression = "application/json" ];

Property %URL As %String(MAXLEN = "") [ InitialExpression = {..#URL} ];

/// Use this property for body content with content-type = application/json.
Property AddressInput As CONNECTORSPKG.ZorgAB.Api.Client.model.AddressInput;

Property pathid As %String(MAXLEN = "");

/// Load %Net.HttpRequest with this property object.
Method LoadHttpRequestObject(ByRef httpRequest As %Net.HttpRequest) As %Status
{
	Set sc = $$$OK
	Set httpRequest.ContentType = ..%ContentType
	Do httpRequest.SetHeader("accept", ..%Consume)
	Set ..%URL = $Replace(..#URL,"{id}", ..pathid)
	If $Piece($$$LOWER(..%ContentType),";",1) = "application/json" Return ..AddressInput.%JSONExportToStream(httpRequest.EntityBody)
	Quit sc
}

Storage Default
{
<Data name="organizationsidaddressesPOSTDefaultData">
<Subscript>"organizationsidaddressesPOST"</Subscript>
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
<Value>AddressInput</Value>
</Value>
<Value name="5">
<Value>pathid</Value>
</Value>
</Data>
<DefaultData>organizationsidaddressesPOSTDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
