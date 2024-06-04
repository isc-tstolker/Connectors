Class ZorgAB.Api.Client.requests.subOrganizationPATCH Extends Ens.Request [ ProcedureBlock ]
{

Parameter METHOD = "patch";

Parameter URL = "/subOrganization";

Property %Consume As %String(MAXLEN = "");

Property %ContentType As %String(MAXLEN = "") [ InitialExpression = "application/json" ];

Property %URL As %String(MAXLEN = "") [ InitialExpression = {..#URL} ];

/// Use this property for body content with content-type = application/json.
Property SubOrganizationInput As ZorgAB.Api.Client.model.SubOrganizationInput;

/// Load %Net.HttpRequest with this property object.
Method LoadHttpRequestObject(ByRef httpRequest As %Net.HttpRequest) As %Status
{
	Set sc = $$$OK
	Set httpRequest.ContentType = ..%ContentType
	Do httpRequest.SetHeader("accept", ..%Consume)
	If $Piece($$$LOWER(..%ContentType),";",1) = "application/json" Return ..SubOrganizationInput.%JSONExportToStream(httpRequest.EntityBody)
	Quit sc
}

Storage Default
{
<Data name="subOrganizationPATCHDefaultData">
<Subscript>"subOrganizationPATCH"</Subscript>
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
</Data>
<DefaultData>subOrganizationPATCHDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
