Class ZorgAB.Api.Client.requests.worksAtPOST Extends Ens.Request [ ProcedureBlock ]
{

Parameter METHOD = "post";

Parameter URL = "/worksAt";

Property %Consume As %String(MAXLEN = "");

Property %ContentType As %String(MAXLEN = "") [ InitialExpression = "application/json" ];

Property %URL As %String(MAXLEN = "") [ InitialExpression = {..#URL} ];

/// Use this property for body content with content-type = application/json.
Property WorksAtInput As ZorgAB.Api.Client.model.WorksAtInput;

Property queryindividualId As %String(MAXLEN = "");

Property queryorganizationId As %String(MAXLEN = "");

/// Load %Net.HttpRequest with this property object.
Method LoadHttpRequestObject(ByRef httpRequest As %Net.HttpRequest) As %Status
{
	Set sc = $$$OK
	Set httpRequest.ContentType = ..%ContentType
	Do httpRequest.SetHeader("accept", ..%Consume)
	If (..queryorganizationId '= "") {
		Do httpRequest.SetParam("organizationId",..queryorganizationId)
	}
	If (..queryindividualId '= "") {
		Do httpRequest.SetParam("individualId",..queryindividualId)
	}
	If $Piece($$$LOWER(..%ContentType),";",1) = "application/json" Return ..WorksAtInput.%JSONExportToStream(httpRequest.EntityBody)
	Quit sc
}

Storage Default
{
<Data name="worksAtPOSTDefaultData">
<Subscript>"worksAtPOST"</Subscript>
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
<Value>WorksAtInput</Value>
</Value>
<Value name="5">
<Value>queryindividualId</Value>
</Value>
<Value name="6">
<Value>queryorganizationId</Value>
</Value>
</Data>
<DefaultData>worksAtPOSTDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
