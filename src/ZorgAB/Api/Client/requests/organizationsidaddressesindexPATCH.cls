Class ZorgAB.Api.Client.requests.organizationsidaddressesindexPATCH Extends Ens.Request [ ProcedureBlock ]
{

Parameter METHOD = "patch";

Parameter URL = "/organizations/{id}/addresses/{index}";

Property %Consume As %String(MAXLEN = "");

Property %ContentType As %String(MAXLEN = "") [ InitialExpression = "application/json" ];

Property %URL As %String(MAXLEN = "") [ InitialExpression = {..#URL} ];

/// Use this property for body content with content-type = application/json.
Property AddressInput As ZorgAB.Api.Client.model.AddressInput;

Property pathid As %String(MAXLEN = "");

Property pathindex As %String(MAXLEN = "");

/// Load %Net.HttpRequest with this property object.
Method LoadHttpRequestObject(ByRef httpRequest As %Net.HttpRequest) As %Status
{
	Set sc = $$$OK
	Set httpRequest.ContentType = ..%ContentType
	Do httpRequest.SetHeader("accept", ..%Consume)
	Set ..%URL = $Replace(..#URL,"{id}", ..pathid)
	Set ..%URL = $Replace(..%URL,"{index}", ..pathindex)
	If $Piece($$$LOWER(..%ContentType),";",1) = "application/json" Return ..AddressInput.%JSONExportToStream(httpRequest.EntityBody)
	Quit sc
}

Storage Default
{
<Data name="organizationsidaddressesindexPATCHDefaultData">
<Subscript>"organizationsidaddressesindexPATCH"</Subscript>
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
<Value name="6">
<Value>pathindex</Value>
</Value>
</Data>
<DefaultData>organizationsidaddressesindexPATCHDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
