Class CONNECTORSPKG.ZorgAB.Api.Client.requests.organizationsidattachmentsindexPATCH Extends Ens.Request [ ProcedureBlock ]
{

Parameter METHOD = "patch";

Parameter URL = "/organizations/{id}/attachments/{index}";

Property %Consume As %String(MAXLEN = "");

Property %ContentType As %String(MAXLEN = "") [ InitialExpression = "application/json" ];

Property %URL As %String(MAXLEN = "") [ InitialExpression = {..#URL} ];

/// Use this property for body content with content-type = application/json.
Property AttachmentInput As CONNECTORSPKG.ZorgAB.Api.Client.model.AttachmentInput;

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
	If $Piece($$$LOWER(..%ContentType),";",1) = "application/json" Return ..AttachmentInput.%JSONExportToStream(httpRequest.EntityBody)
	Quit sc
}

Storage Default
{
<Data name="organizationsidattachmentsindexPATCHDefaultData">
<Subscript>"organizationsidattachmentsindexPATCH"</Subscript>
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
<Value>AttachmentInput</Value>
</Value>
<Value name="5">
<Value>pathid</Value>
</Value>
<Value name="6">
<Value>pathindex</Value>
</Value>
</Data>
<DefaultData>organizationsidattachmentsindexPATCHDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
