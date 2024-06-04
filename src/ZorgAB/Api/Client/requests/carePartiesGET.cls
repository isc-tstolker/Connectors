Class CONNECTORSPKG.ZorgAB.Api.Client.requests.carePartiesGET Extends Ens.Request [ ProcedureBlock ]
{

Parameter METHOD = "get";

Parameter URL = "/careParties";

Property %Consume As %String(MAXLEN = "");

Property %ContentType As %String(MAXLEN = "");

Property %URL As %String(MAXLEN = "") [ InitialExpression = {..#URL} ];

Property querycity As %String(MAXLEN = "");

Property queryindividualname As %String(MAXLEN = "");

Property queryonlymedmij As %Boolean;

Property queryorganizationname As %String(MAXLEN = "");

Property querypostalcode As %String(MAXLEN = "");

/// Load %Net.HttpRequest with this property object.
Method LoadHttpRequestObject(ByRef httpRequest As %Net.HttpRequest) As %Status
{
	Set sc = $$$OK
	Set httpRequest.ContentType = ..%ContentType
	Do httpRequest.SetHeader("accept", ..%Consume)
	If (..queryorganizationname '= "") {
		Do httpRequest.SetParam("organization-name",..queryorganizationname)
	}
	If (..queryindividualname '= "") {
		Do httpRequest.SetParam("individual-name",..queryindividualname)
	}
	If (..querycity '= "") {
		Do httpRequest.SetParam("city",..querycity)
	}
	If (..querypostalcode '= "") {
		Do httpRequest.SetParam("postalcode",..querypostalcode)
	}
	If (..queryonlymedmij '= "") {
		Do httpRequest.SetParam("only-medmij",..queryonlymedmij)
	}
	Quit sc
}

Storage Default
{
<Data name="carePartiesGETDefaultData">
<Subscript>"carePartiesGET"</Subscript>
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
<Value>querycity</Value>
</Value>
<Value name="5">
<Value>queryindividualname</Value>
</Value>
<Value name="6">
<Value>queryonlymedmij</Value>
</Value>
<Value name="7">
<Value>queryorganizationname</Value>
</Value>
<Value name="8">
<Value>querypostalcode</Value>
</Value>
</Data>
<DefaultData>carePartiesGETDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
