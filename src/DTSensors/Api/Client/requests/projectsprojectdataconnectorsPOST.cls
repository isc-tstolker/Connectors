Class DTSensors.Api.Client.requests.projectsprojectdataconnectorsPOST Extends Ens.Request [ ProcedureBlock ]
{

Parameter METHOD = "post";

Parameter URL = "/projects/{project}/dataconnectors";

Property %Consume As %String(MAXLEN = "");

Property %ContentType As %String(MAXLEN = "") [ InitialExpression = "application/json" ];

Property %URL As %String(MAXLEN = "") [ InitialExpression = {..#URL} ];

/// Use this property for body content with content-type = application/json.
Property NewDataConnector As DTSensors.Api.Client.model.NewDataConnector;

/// The identifier of the Project.
Property pathproject As %String(MAXLEN = "");

/// Load %Net.HttpRequest with this property object.
Method LoadHttpRequestObject(ByRef httpRequest As %Net.HttpRequest) As %Status
{
	Set sc = $$$OK
	Set httpRequest.ContentType = ..%ContentType
	Do httpRequest.SetHeader("accept", ..%Consume)
	Set ..%URL = $Replace(..#URL,"{project}", ..pathproject)
	If $Piece($$$LOWER(..%ContentType),";",1) = "application/json" Return ..NewDataConnector.%JSONExportToStream(httpRequest.EntityBody)
	Quit sc
}

Storage Default
{
<Data name="projectsprojectdataconnectorsPOSTDefaultData">
<Subscript>"projectsprojectdataconnectorsPOST"</Subscript>
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
<Value>NewDataConnector</Value>
</Value>
<Value name="5">
<Value>pathproject</Value>
</Value>
</Data>
<DefaultData>projectsprojectdataconnectorsPOSTDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
