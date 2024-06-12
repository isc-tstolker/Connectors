Class DTSensors.Api.Client.requests.projectsprojectdevicesclaimPOST Extends Ens.Request [ ProcedureBlock ]
{

Parameter METHOD = "post";

Parameter URL = "/projects/{project}/devices:claim";

Property %Consume As %String(MAXLEN = "");

Property %ContentType As %String(MAXLEN = "") [ InitialExpression = "application/json" ];

Property %URL As %String(MAXLEN = "") [ InitialExpression = {..#URL} ];

/// The identifier of the project the devices should be claimed into.
Property pathproject As %String(MAXLEN = "");

/// Use this property for body content with content-type = application/json.
Property projectdevicesclaimbody As DTSensors.Api.Client.model.projectdevicesclaimbody;

/// When dry run is set to `true` for a claim request, the subscription for all the devices 
/// in the request will _not_ be started, and the devices will _not_ be added to the requested project. 
/// This flag is useful during development to validate your implementation of this endpoint, without actually 
/// starting subscriptions of devices. Remember to set it to `false` before deploying your code to production.
Property querydryRun As %Boolean;

/// Load %Net.HttpRequest with this property object.
Method LoadHttpRequestObject(ByRef httpRequest As %Net.HttpRequest) As %Status
{
	Set sc = $$$OK
	Set httpRequest.ContentType = ..%ContentType
	Do httpRequest.SetHeader("accept", ..%Consume)
	If (..querydryRun '= "") {
		Do httpRequest.SetParam("dryRun",..querydryRun)
	}
	Set ..%URL = $Replace(..#URL,"{project}", ..pathproject)
	If $Piece($$$LOWER(..%ContentType),";",1) = "application/json" Return ..projectdevicesclaimbody.%JSONExportToStream(httpRequest.EntityBody)
	Quit sc
}

Storage Default
{
<Data name="projectsprojectdevicesclaimPOSTDefaultData">
<Subscript>"projectsprojectdevicesclaimPOST"</Subscript>
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
<Value>pathproject</Value>
</Value>
<Value name="5">
<Value>projectdevicesclaimbody</Value>
</Value>
<Value name="6">
<Value>querydryRun</Value>
</Value>
</Data>
<DefaultData>projectsprojectdevicesclaimPOSTDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
