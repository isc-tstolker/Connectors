Class ZorgAB.Api.Client.requests.organizationsGET Extends Ens.Request [ ProcedureBlock ]
{

Parameter METHOD = "get";

Parameter URL = "/organizations";

Property %Consume As %String(MAXLEN = "");

Property %ContentType As %String(MAXLEN = "");

Property %URL As %String(MAXLEN = "") [ InitialExpression = {..#URL} ];

Property queryfilter As %String(MAXLEN = "");

Property queryincludeinactive As %Boolean;

/// Only valid in combination with $filter=identification_type eq 'MedMij'
Property queryincludesuborg As %Boolean;

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
	If (..queryincludeinactive '= "") {
		Do httpRequest.SetParam("include-inactive",..queryincludeinactive)
	}
	If (..queryincludesuborg '= "") {
		Do httpRequest.SetParam("include-suborg",..queryincludesuborg)
	}
	Quit sc
}

Storage Default
{
<Data name="organizationsGETDefaultData">
<Subscript>"organizationsGET"</Subscript>
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
<Value>queryincludeinactive</Value>
</Value>
<Value name="6">
<Value>queryincludesuborg</Value>
</Value>
<Value name="7">
<Value>querysearch</Value>
</Value>
<Value name="8">
<Value>queryselect</Value>
</Value>
</Data>
<DefaultData>organizationsGETDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
