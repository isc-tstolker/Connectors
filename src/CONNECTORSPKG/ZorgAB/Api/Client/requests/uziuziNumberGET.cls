Class CONNECTORSPKG.ZorgAB.Api.Client.requests.uziuziNumberGET Extends Ens.Request [ ProcedureBlock ]
{

Parameter METHOD = "get";

Parameter URL = "/uzi/{uziNumber}";

Property %Consume As %String(MAXLEN = "");

Property %ContentType As %String(MAXLEN = "");

Property %URL As %String(MAXLEN = "") [ InitialExpression = {..#URL} ];

Property pathuziNumber As %String(MAXLEN = "");

Property queryselect As %String(MAXLEN = "");

/// Load %Net.HttpRequest with this property object.
Method LoadHttpRequestObject(ByRef httpRequest As %Net.HttpRequest) As %Status
{
	Set sc = $$$OK
	Set httpRequest.ContentType = ..%ContentType
	Do httpRequest.SetHeader("accept", ..%Consume)
	Set ..%URL = $Replace(..#URL,"{uziNumber}", ..pathuziNumber)
	If (..queryselect '= "") {
		Do httpRequest.SetParam("$select",..queryselect)
	}
	Quit sc
}

Storage Default
{
<Data name="uziuziNumberGETDefaultData">
<Subscript>"uziuziNumberGET"</Subscript>
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
<Value>pathuziNumber</Value>
</Value>
<Value name="5">
<Value>queryselect</Value>
</Value>
</Data>
<DefaultData>uziuziNumberGETDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
