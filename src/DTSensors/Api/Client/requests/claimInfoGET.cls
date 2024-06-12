Class DTSensors.Api.Client.requests.claimInfoGET Extends Ens.Request [ ProcedureBlock ]
{

Parameter METHOD = "get";

Parameter URL = "/claimInfo";

Property %Consume As %String(MAXLEN = "");

Property %ContentType As %String(MAXLEN = "");

Property %URL As %String(MAXLEN = "") [ InitialExpression = {..#URL} ];

/// The identifier to get claim information for. This could either be the identifier of a kit or a device,
/// and would typically be the result of scanning a QR code.
Property queryidentifier As %String(MAXLEN = "");

/// The resource name of the organization that will claim the devices or kits.
/// 
/// Must be in the format `organizations/{organization}`.
Property queryorganization As %String(MAXLEN = "");

/// Load %Net.HttpRequest with this property object.
Method LoadHttpRequestObject(ByRef httpRequest As %Net.HttpRequest) As %Status
{
	Set sc = $$$OK
	Set httpRequest.ContentType = ..%ContentType
	Do httpRequest.SetHeader("accept", ..%Consume)
	If (..queryidentifier '= "") {
		Do httpRequest.SetParam("identifier",..queryidentifier)
	}
	If (..queryorganization '= "") {
		Do httpRequest.SetParam("organization",..queryorganization)
	}
	Quit sc
}

Storage Default
{
<Data name="claimInfoGETDefaultData">
<Subscript>"claimInfoGET"</Subscript>
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
<Value>queryidentifier</Value>
</Value>
<Value name="5">
<Value>queryorganization</Value>
</Value>
</Data>
<DefaultData>claimInfoGETDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
