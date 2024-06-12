Class DTSensors.Api.Client.requests.projectsprojectserviceaccountsserviceaccountPATCH Extends Ens.Request [ ProcedureBlock ]
{

Parameter METHOD = "patch";

Parameter URL = "/projects/{project}/serviceaccounts/{serviceaccount}";

Property %Consume As %String(MAXLEN = "");

Property %ContentType As %String(MAXLEN = "") [ InitialExpression = "application/json" ];

Property %URL As %String(MAXLEN = "") [ InitialExpression = {..#URL} ];

/// Use this property for body content with content-type = application/json.
Property ServiceAccount As DTSensors.Api.Client.model.ServiceAccount;

/// The identifier of the Project.
Property pathproject As %String(MAXLEN = "");

/// The identifier of the Service Account.
Property pathserviceaccount As %String(MAXLEN = "");

/// Load %Net.HttpRequest with this property object.
Method LoadHttpRequestObject(ByRef httpRequest As %Net.HttpRequest) As %Status
{
	Set sc = $$$OK
	Set httpRequest.ContentType = ..%ContentType
	Do httpRequest.SetHeader("accept", ..%Consume)
	Set ..%URL = $Replace(..#URL,"{project}", ..pathproject)
	Set ..%URL = $Replace(..%URL,"{serviceaccount}", ..pathserviceaccount)
	If $Piece($$$LOWER(..%ContentType),";",1) = "application/json" Return ..ServiceAccount.%JSONExportToStream(httpRequest.EntityBody)
	Quit sc
}

Storage Default
{
<Data name="projectsprojectserviceaccountsserviceaccountPATCHDefaultData">
<Subscript>"projectsprojectserviceaccountsserviceaccountPATCH"</Subscript>
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
<Value>ServiceAccount</Value>
</Value>
<Value name="5">
<Value>pathproject</Value>
</Value>
<Value name="6">
<Value>pathserviceaccount</Value>
</Value>
</Data>
<DefaultData>projectsprojectserviceaccountsserviceaccountPATCHDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
