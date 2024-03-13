Class CONNECTORSPKG.ZorgAB.Api.Client.requests.subOrganizationPOST Extends Ens.Request [ ProcedureBlock ]
{

Parameter METHOD = "post";

Parameter URL = "/subOrganization";

Property %Consume As %String(MAXLEN = "");

Property %ContentType As %String(MAXLEN = "") [ InitialExpression = "application/json" ];

Property %URL As %String(MAXLEN = "") [ InitialExpression = {..#URL} ];

/// Use this property for body content with content-type = application/json.
Property SubOrganizationInput As CONNECTORSPKG.ZorgAB.Api.Client.model.SubOrganizationInput;

Property querymainOrganizationId As %String(MAXLEN = "");

Property querysubOrganizationId As %String(MAXLEN = "");

/// Load %Net.HttpRequest with this property object.
Method LoadHttpRequestObject(ByRef httpRequest As %Net.HttpRequest) As %Status
{
	Set sc = $$$OK
	Set httpRequest.ContentType = ..%ContentType
	Do httpRequest.SetHeader("accept", ..%Consume)
	If (..querymainOrganizationId '= "") {
		Do httpRequest.SetParam("mainOrganizationId",..querymainOrganizationId)
	}
	If (..querysubOrganizationId '= "") {
		Do httpRequest.SetParam("subOrganizationId",..querysubOrganizationId)
	}
	If $Piece($$$LOWER(..%ContentType),";",1) = "application/json" Return ..SubOrganizationInput.%JSONExportToStream(httpRequest.EntityBody)
	Quit sc
}

Storage Default
{
<Data name="subOrganizationPOSTDefaultData">
<Subscript>"subOrganizationPOST"</Subscript>
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
<Value>SubOrganizationInput</Value>
</Value>
<Value name="5">
<Value>querymainOrganizationId</Value>
</Value>
<Value name="6">
<Value>querysubOrganizationId</Value>
</Value>
</Data>
<DefaultData>subOrganizationPOSTDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
