Class DTSensors.Api.Client.requests.projectsprojectdevicesdevicelabelsPOST Extends Ens.Request [ ProcedureBlock ]
{

Parameter METHOD = "post";

Parameter URL = "/projects/{project}/devices/{device}/labels";

Property %Consume As %String(MAXLEN = "");

Property %ContentType As %String(MAXLEN = "") [ InitialExpression = "application/json" ];

Property %URL As %String(MAXLEN = "") [ InitialExpression = {..#URL} ];

/// Use this property for body content with content-type = application/json.
Property NewLabel As DTSensors.Api.Client.model.NewLabel;

/// The identifier of the Device.
Property pathdevice As %String(MAXLEN = "");

/// The identifier of the Project.
Property pathproject As %String(MAXLEN = "");

/// Load %Net.HttpRequest with this property object.
Method LoadHttpRequestObject(ByRef httpRequest As %Net.HttpRequest) As %Status
{
	Set sc = $$$OK
	Set httpRequest.ContentType = ..%ContentType
	Do httpRequest.SetHeader("accept", ..%Consume)
	Set ..%URL = $Replace(..#URL,"{project}", ..pathproject)
	Set ..%URL = $Replace(..%URL,"{device}", ..pathdevice)
	If $Piece($$$LOWER(..%ContentType),";",1) = "application/json" Return ..NewLabel.%JSONExportToStream(httpRequest.EntityBody)
	Quit sc
}

Storage Default
{
<Data name="projectsprojectdevicesdevicelabelsPOSTDefaultData">
<Subscript>"projectsprojectdevicesdevicelabelsPOST"</Subscript>
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
<Value>NewLabel</Value>
</Value>
<Value name="5">
<Value>pathdevice</Value>
</Value>
<Value name="6">
<Value>pathproject</Value>
</Value>
</Data>
<DefaultData>projectsprojectdevicesdevicelabelsPOSTDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
