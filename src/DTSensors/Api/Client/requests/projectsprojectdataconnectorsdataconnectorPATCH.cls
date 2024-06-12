Class DTSensors.Api.Client.requests.projectsprojectdataconnectorsdataconnectorPATCH Extends Ens.Request [ ProcedureBlock ]
{

Parameter METHOD = "patch";

Parameter URL = "/projects/{project}/dataconnectors/{dataconnector}";

Property %Consume As %String(MAXLEN = "");

Property %ContentType As %String(MAXLEN = "") [ InitialExpression = "application/json" ];

Property %URL As %String(MAXLEN = "") [ InitialExpression = {..#URL} ];

/// Use this property for body content with content-type = application/json.
Property DataConnector As DTSensors.Api.Client.model.DataConnector;

/// The identifier of the Data Connector.
Property pathdataconnector As %String(MAXLEN = "");

/// The identifier of the Project.
Property pathproject As %String(MAXLEN = "");

/// Load %Net.HttpRequest with this property object.
Method LoadHttpRequestObject(ByRef httpRequest As %Net.HttpRequest) As %Status
{
	Set sc = $$$OK
	Set httpRequest.ContentType = ..%ContentType
	Do httpRequest.SetHeader("accept", ..%Consume)
	Set ..%URL = $Replace(..#URL,"{project}", ..pathproject)
	Set ..%URL = $Replace(..%URL,"{dataconnector}", ..pathdataconnector)
	If $Piece($$$LOWER(..%ContentType),";",1) = "application/json" Return ..DataConnector.%JSONExportToStream(httpRequest.EntityBody)
	Quit sc
}

Storage Default
{
<Data name="projectsprojectdataconnectorsdataconnectorPATCHDefaultData">
<Subscript>"projectsprojectdataconnectorsdataconnectorPATCH"</Subscript>
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
<Value>DataConnector</Value>
</Value>
<Value name="5">
<Value>pathdataconnector</Value>
</Value>
<Value name="6">
<Value>pathproject</Value>
</Value>
</Data>
<DefaultData>projectsprojectdataconnectorsdataconnectorPATCHDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
