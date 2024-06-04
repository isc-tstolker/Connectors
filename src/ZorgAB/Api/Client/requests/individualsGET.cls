Class CONNECTORSPKG.ZorgAB.Api.Client.requests.individualsGET Extends Ens.Request [ ProcedureBlock ]
{

Parameter METHOD = "get";

Parameter URL = "/individuals";

Property %Consume As %String(MAXLEN = "");

Property %ContentType As %String(MAXLEN = "");

Property %URL As %String(MAXLEN = "") [ InitialExpression = {..#URL} ];

Property queryfilter As %String(MAXLEN = "");

Property querysearch As %String(MAXLEN = "");

Property queryselect As %String(MAXLEN = "");

/// Load %Net.HttpRequest with this property object.
Method LoadHttpRequestObject(ByRef httpRequest As %Net.HttpRequest) As %Status
{
	Set sc = $$$OK
	Set httpRequest.ContentType = ..%ContentType
	Do httpRequest.SetHeader("accept", ..%Consume)
	If (..queryfilter '= "") {
		Do httpRequest.SetParam("$filter",..queryfilter)
	}
	If (..querysearch '= "") {
		Do httpRequest.SetParam("$search",..querysearch)
	}
	If (..queryselect '= "") {
		Do httpRequest.SetParam("$select",..queryselect)
	}
	Quit sc
}

Storage Default
{
<Data name="individualsGETDefaultData">
<Subscript>"individualsGET"</Subscript>
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
<Value>queryfilter</Value>
</Value>
<Value name="5">
<Value>querysearch</Value>
</Value>
<Value name="6">
<Value>queryselect</Value>
</Value>
</Data>
<DefaultData>individualsGETDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
