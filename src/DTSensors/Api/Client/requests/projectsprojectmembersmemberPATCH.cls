Class DTSensors.Api.Client.requests.projectsprojectmembersmemberPATCH Extends Ens.Request [ ProcedureBlock ]
{

Parameter METHOD = "patch";

Parameter URL = "/projects/{project}/members/{member}";

Property %Consume As %String(MAXLEN = "");

Property %ContentType As %String(MAXLEN = "") [ InitialExpression = "application/json" ];

Property %URL As %String(MAXLEN = "") [ InitialExpression = {..#URL} ];

/// Use this property for body content with content-type = application/json.
Property Member As DTSensors.Api.Client.model.Member;

/// The identifier of the Member. This will be the same as the identifier of the User or
/// Service Account the Membership represents.
Property pathmember As %String(MAXLEN = "");

/// The identifier of the Project.
Property pathproject As %String(MAXLEN = "");

/// Load %Net.HttpRequest with this property object.
Method LoadHttpRequestObject(ByRef httpRequest As %Net.HttpRequest) As %Status
{
	Set sc = $$$OK
	Set httpRequest.ContentType = ..%ContentType
	Do httpRequest.SetHeader("accept", ..%Consume)
	Set ..%URL = $Replace(..#URL,"{project}", ..pathproject)
	Set ..%URL = $Replace(..%URL,"{member}", ..pathmember)
	If $Piece($$$LOWER(..%ContentType),";",1) = "application/json" Return ..Member.%JSONExportToStream(httpRequest.EntityBody)
	Quit sc
}

Storage Default
{
<Data name="projectsprojectmembersmemberPATCHDefaultData">
<Subscript>"projectsprojectmembersmemberPATCH"</Subscript>
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
<Value>Member</Value>
</Value>
<Value name="5">
<Value>pathmember</Value>
</Value>
<Value name="6">
<Value>pathproject</Value>
</Value>
</Data>
<DefaultData>projectsprojectmembersmemberPATCHDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
