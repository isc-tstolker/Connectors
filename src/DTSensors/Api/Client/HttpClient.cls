Class DTSensors.Api.Client.HttpClient Extends %RegisteredObject [ ProcedureBlock ]
{

Parameter SERVER = "https://api.disruptive-technologies.com/v2";

Parameter SSLCONFIGURATION = "DefaultSSL";

Property HttpRequest [ InitialExpression = {##class(%Net.HttpRequest).%New()} ];

Property SSLConfiguration As %String [ InitialExpression = {..#SSLCONFIGURATION} ];

Property Server As %String [ InitialExpression = {..#SERVER} ];

Property URLComponents [ MultiDimensional ];

Method %OnNew(Server As %String, SSLConfiguration As %String) As %Status
{
	Set:$Data(Server) ..Server = Server
	Set:$Data(SSLConfiguration) ..SSLConfiguration = SSLConfiguration
	Quit ..InitializeHttpRequestObject()
}

Method InitializeHttpRequestObject() As %Status
{
	Set ..HttpRequest = ##class(%Net.HttpRequest).%New()
	Do ##class(%Net.URLParser).Decompose(..Server, .components)
	Set:$Data(components("host"), host) ..HttpRequest.Server = host
	Set:$Data(components("port"), port) ..HttpRequest.Port = port
	Set:$$$LOWER($Get(components("scheme")))="https" ..HttpRequest.Https = $$$YES, ..HttpRequest.SSLConfiguration = ..SSLConfiguration
	Merge:$Data(components) ..URLComponents = components
	Quit $$$OK
}

/// Implement operationId : claimInfoGET
/// get /claimInfo
Method claimInfoGET(requestMessage As DTSensors.Api.Client.requests.claimInfoGET, Output responseMessage As DTSensors.Api.Client.responses.claimInfoGET = {##class(DTSensors.Api.Client.responses.claimInfoGET).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("GET", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "claimInfoGET"))
	Quit sc
}

/// Implement operationId : organizationsGET
/// get /organizations
Method organizationsGET(requestMessage As DTSensors.Api.Client.requests.organizationsGET, Output responseMessage As DTSensors.Api.Client.responses.organizationsGET = {##class(DTSensors.Api.Client.responses.organizationsGET).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("GET", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "organizationsGET"))
	Quit sc
}

/// Implement operationId : organizationsorganizationGET
/// get /organizations/{organization}
Method organizationsorganizationGET(requestMessage As DTSensors.Api.Client.requests.organizationsorganizationGET, Output responseMessage As DTSensors.Api.Client.responses.organizationsorganizationGET = {##class(DTSensors.Api.Client.responses.organizationsorganizationGET).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("GET", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "organizationsorganizationGET"))
	Quit sc
}

/// Implement operationId : organizationsorganizationmembersGET
/// get /organizations/{organization}/members
Method organizationsorganizationmembersGET(requestMessage As DTSensors.Api.Client.requests.organizationsorganizationmembersGET, Output responseMessage As DTSensors.Api.Client.responses.organizationsorganizationmembersGET = {##class(DTSensors.Api.Client.responses.organizationsorganizationmembersGET).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("GET", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "organizationsorganizationmembersGET"))
	Quit sc
}

/// Implement operationId : organizationsorganizationmembersPOST
/// post /organizations/{organization}/members
Method organizationsorganizationmembersPOST(requestMessage As DTSensors.Api.Client.requests.organizationsorganizationmembersPOST, Output responseMessage As DTSensors.Api.Client.responses.organizationsorganizationmembersPOST = {##class(DTSensors.Api.Client.responses.organizationsorganizationmembersPOST).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("POST", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "organizationsorganizationmembersPOST"))
	Quit sc
}

/// Implement operationId : organizationsorganizationmembersmemberDELETE
/// delete /organizations/{organization}/members/{member}
Method organizationsorganizationmembersmemberDELETE(requestMessage As DTSensors.Api.Client.requests.organizationsorganizationmembersmemberDELETE, Output responseMessage As DTSensors.Api.Client.responses.organizationsorganizationmembersmemberDELETE = {##class(DTSensors.Api.Client.responses.organizationsorganizationmembersmemberDELETE).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("DELETE", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "organizationsorganizationmembersmemberDELETE"))
	Quit sc
}

/// Implement operationId : organizationsorganizationmembersmemberGET
/// get /organizations/{organization}/members/{member}
Method organizationsorganizationmembersmemberGET(requestMessage As DTSensors.Api.Client.requests.organizationsorganizationmembersmemberGET, Output responseMessage As DTSensors.Api.Client.responses.organizationsorganizationmembersmemberGET = {##class(DTSensors.Api.Client.responses.organizationsorganizationmembersmemberGET).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("GET", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "organizationsorganizationmembersmemberGET"))
	Quit sc
}

/// Implement operationId : organizationsorganizationmembersmembergetInviteUrlGET
/// get /organizations/{organization}/members/{member}:getInviteUrl
Method organizationsorganizationmembersmembergetInviteUrlGET(requestMessage As DTSensors.Api.Client.requests.organizationsorganizationmembersmembergetInviteUrlGET, Output responseMessage As DTSensors.Api.Client.responses.organizationsorganizationmembersmembergetInviteUrlGET = {##class(DTSensors.Api.Client.responses.organizationsorganizationmembersmembergetInviteUrlGET).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("GET", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "organizationsorganizationmembersmembergetInviteUrlGET"))
	Quit sc
}

/// Implement operationId : organizationsorganizationpermissionsGET
/// get /organizations/{organization}/permissions
Method organizationsorganizationpermissionsGET(requestMessage As DTSensors.Api.Client.requests.organizationsorganizationpermissionsGET, Output responseMessage As DTSensors.Api.Client.responses.organizationsorganizationpermissionsGET = {##class(DTSensors.Api.Client.responses.organizationsorganizationpermissionsGET).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("GET", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "organizationsorganizationpermissionsGET"))
	Quit sc
}

/// Implement operationId : projectsGET
/// get /projects
Method projectsGET(requestMessage As DTSensors.Api.Client.requests.projectsGET, Output responseMessage As DTSensors.Api.Client.responses.projectsGET = {##class(DTSensors.Api.Client.responses.projectsGET).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("GET", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "projectsGET"))
	Quit sc
}

/// Implement operationId : projectsPOST
/// post /projects
Method projectsPOST(requestMessage As DTSensors.Api.Client.requests.projectsPOST, Output responseMessage As DTSensors.Api.Client.responses.projectsPOST = {##class(DTSensors.Api.Client.responses.projectsPOST).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("POST", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "projectsPOST"))
	Quit sc
}

/// Implement operationId : projectsprojectDELETE
/// delete /projects/{project}
Method projectsprojectDELETE(requestMessage As DTSensors.Api.Client.requests.projectsprojectDELETE, Output responseMessage As DTSensors.Api.Client.responses.projectsprojectDELETE = {##class(DTSensors.Api.Client.responses.projectsprojectDELETE).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("DELETE", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "projectsprojectDELETE"))
	Quit sc
}

/// Implement operationId : projectsprojectGET
/// get /projects/{project}
Method projectsprojectGET(requestMessage As DTSensors.Api.Client.requests.projectsprojectGET, Output responseMessage As DTSensors.Api.Client.responses.projectsprojectGET = {##class(DTSensors.Api.Client.responses.projectsprojectGET).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("GET", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "projectsprojectGET"))
	Quit sc
}

/// Implement operationId : projectsprojectPATCH
/// patch /projects/{project}
Method projectsprojectPATCH(requestMessage As DTSensors.Api.Client.requests.projectsprojectPATCH, Output responseMessage As DTSensors.Api.Client.responses.projectsprojectPATCH = {##class(DTSensors.Api.Client.responses.projectsprojectPATCH).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("PATCH", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "projectsprojectPATCH"))
	Quit sc
}

/// Implement operationId : projectsprojectdataconnectorsGET
/// get /projects/{project}/dataconnectors
Method projectsprojectdataconnectorsGET(requestMessage As DTSensors.Api.Client.requests.projectsprojectdataconnectorsGET, Output responseMessage As DTSensors.Api.Client.responses.projectsprojectdataconnectorsGET = {##class(DTSensors.Api.Client.responses.projectsprojectdataconnectorsGET).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("GET", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "projectsprojectdataconnectorsGET"))
	Quit sc
}

/// Implement operationId : projectsprojectdataconnectorsPOST
/// post /projects/{project}/dataconnectors
Method projectsprojectdataconnectorsPOST(requestMessage As DTSensors.Api.Client.requests.projectsprojectdataconnectorsPOST, Output responseMessage As DTSensors.Api.Client.responses.projectsprojectdataconnectorsPOST = {##class(DTSensors.Api.Client.responses.projectsprojectdataconnectorsPOST).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("POST", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "projectsprojectdataconnectorsPOST"))
	Quit sc
}

/// Implement operationId : projectsprojectdataconnectorsdataconnectorDELETE
/// delete /projects/{project}/dataconnectors/{dataconnector}
Method projectsprojectdataconnectorsdataconnectorDELETE(requestMessage As DTSensors.Api.Client.requests.projectsprojectdataconnectorsdataconnectorDELETE, Output responseMessage As DTSensors.Api.Client.responses.projectsprojectdataconnectorsdataconnectorDELETE = {##class(DTSensors.Api.Client.responses.projectsprojectdataconnectorsdataconnectorDELETE).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("DELETE", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "projectsprojectdataconnectorsdataconnectorDELETE"))
	Quit sc
}

/// Implement operationId : projectsprojectdataconnectorsdataconnectorGET
/// get /projects/{project}/dataconnectors/{dataconnector}
Method projectsprojectdataconnectorsdataconnectorGET(requestMessage As DTSensors.Api.Client.requests.projectsprojectdataconnectorsdataconnectorGET, Output responseMessage As DTSensors.Api.Client.responses.projectsprojectdataconnectorsdataconnectorGET = {##class(DTSensors.Api.Client.responses.projectsprojectdataconnectorsdataconnectorGET).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("GET", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "projectsprojectdataconnectorsdataconnectorGET"))
	Quit sc
}

/// Implement operationId : projectsprojectdataconnectorsdataconnectorPATCH
/// patch /projects/{project}/dataconnectors/{dataconnector}
Method projectsprojectdataconnectorsdataconnectorPATCH(requestMessage As DTSensors.Api.Client.requests.projectsprojectdataconnectorsdataconnectorPATCH, Output responseMessage As DTSensors.Api.Client.responses.projectsprojectdataconnectorsdataconnectorPATCH = {##class(DTSensors.Api.Client.responses.projectsprojectdataconnectorsdataconnectorPATCH).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("PATCH", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "projectsprojectdataconnectorsdataconnectorPATCH"))
	Quit sc
}

/// Implement operationId : projectsprojectdataconnectorsdataconnectormetricsGET
/// get /projects/{project}/dataconnectors/{dataconnector}:metrics
Method projectsprojectdataconnectorsdataconnectormetricsGET(requestMessage As DTSensors.Api.Client.requests.projectsprojectdataconnectorsdataconnectormetricsGET, Output responseMessage As DTSensors.Api.Client.responses.projectsprojectdataconnectorsdataconnectormetricsGET = {##class(DTSensors.Api.Client.responses.projectsprojectdataconnectorsdataconnectormetricsGET).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("GET", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "projectsprojectdataconnectorsdataconnectormetricsGET"))
	Quit sc
}

/// Implement operationId : projectsprojectdataconnectorsdataconnectorsyncPOST
/// post /projects/{project}/dataconnectors/{dataconnector}:sync
Method projectsprojectdataconnectorsdataconnectorsyncPOST(requestMessage As DTSensors.Api.Client.requests.projectsprojectdataconnectorsdataconnectorsyncPOST, Output responseMessage As DTSensors.Api.Client.responses.projectsprojectdataconnectorsdataconnectorsyncPOST = {##class(DTSensors.Api.Client.responses.projectsprojectdataconnectorsdataconnectorsyncPOST).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("POST", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "projectsprojectdataconnectorsdataconnectorsyncPOST"))
	Quit sc
}

/// Implement operationId : projectsprojectdevicesGET
/// get /projects/{project}/devices
Method projectsprojectdevicesGET(requestMessage As DTSensors.Api.Client.requests.projectsprojectdevicesGET, Output responseMessage As DTSensors.Api.Client.responses.projectsprojectdevicesGET = {##class(DTSensors.Api.Client.responses.projectsprojectdevicesGET).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("GET", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "projectsprojectdevicesGET"))
	Quit sc
}

/// Implement operationId : projectsprojectdevicesbatchUpdatePOST
/// post /projects/{project}/devices:batchUpdate
Method projectsprojectdevicesbatchUpdatePOST(requestMessage As DTSensors.Api.Client.requests.projectsprojectdevicesbatchUpdatePOST, Output responseMessage As DTSensors.Api.Client.responses.projectsprojectdevicesbatchUpdatePOST = {##class(DTSensors.Api.Client.responses.projectsprojectdevicesbatchUpdatePOST).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("POST", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "projectsprojectdevicesbatchUpdatePOST"))
	Quit sc
}

/// Implement operationId : projectsprojectdevicesclaimPOST
/// post /projects/{project}/devices:claim
Method projectsprojectdevicesclaimPOST(requestMessage As DTSensors.Api.Client.requests.projectsprojectdevicesclaimPOST, Output responseMessage As DTSensors.Api.Client.responses.projectsprojectdevicesclaimPOST = {##class(DTSensors.Api.Client.responses.projectsprojectdevicesclaimPOST).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("POST", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "projectsprojectdevicesclaimPOST"))
	Quit sc
}

/// Implement operationId : projectsprojectdevicesdeviceGET
/// get /projects/{project}/devices/{device}
Method projectsprojectdevicesdeviceGET(requestMessage As DTSensors.Api.Client.requests.projectsprojectdevicesdeviceGET, Output responseMessage As DTSensors.Api.Client.responses.projectsprojectdevicesdeviceGET = {##class(DTSensors.Api.Client.responses.projectsprojectdevicesdeviceGET).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("GET", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "projectsprojectdevicesdeviceGET"))
	Quit sc
}

/// Implement operationId : projectsprojectdevicesdeviceeventsGET
/// get /projects/{project}/devices/{device}/events
Method projectsprojectdevicesdeviceeventsGET(requestMessage As DTSensors.Api.Client.requests.projectsprojectdevicesdeviceeventsGET, Output responseMessage As DTSensors.Api.Client.responses.projectsprojectdevicesdeviceeventsGET = {##class(DTSensors.Api.Client.responses.projectsprojectdevicesdeviceeventsGET).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("GET", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "projectsprojectdevicesdeviceeventsGET"))
	Quit sc
}

/// Implement operationId : projectsprojectdevicesdevicelabelsPOST
/// post /projects/{project}/devices/{device}/labels
Method projectsprojectdevicesdevicelabelsPOST(requestMessage As DTSensors.Api.Client.requests.projectsprojectdevicesdevicelabelsPOST, Output responseMessage As DTSensors.Api.Client.responses.projectsprojectdevicesdevicelabelsPOST = {##class(DTSensors.Api.Client.responses.projectsprojectdevicesdevicelabelsPOST).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("POST", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "projectsprojectdevicesdevicelabelsPOST"))
	Quit sc
}

/// Implement operationId : projectsprojectdevicesdevicelabelslabelDELETE
/// delete /projects/{project}/devices/{device}/labels/{label}
Method projectsprojectdevicesdevicelabelslabelDELETE(requestMessage As DTSensors.Api.Client.requests.projectsprojectdevicesdevicelabelslabelDELETE, Output responseMessage As DTSensors.Api.Client.responses.projectsprojectdevicesdevicelabelslabelDELETE = {##class(DTSensors.Api.Client.responses.projectsprojectdevicesdevicelabelslabelDELETE).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("DELETE", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "projectsprojectdevicesdevicelabelslabelDELETE"))
	Quit sc
}

/// Implement operationId : projectsprojectdevicesdevicelabelslabelPATCH
/// patch /projects/{project}/devices/{device}/labels/{label}
Method projectsprojectdevicesdevicelabelslabelPATCH(requestMessage As DTSensors.Api.Client.requests.projectsprojectdevicesdevicelabelslabelPATCH, Output responseMessage As DTSensors.Api.Client.responses.projectsprojectdevicesdevicelabelslabelPATCH = {##class(DTSensors.Api.Client.responses.projectsprojectdevicesdevicelabelslabelPATCH).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("PATCH", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "projectsprojectdevicesdevicelabelslabelPATCH"))
	Quit sc
}

/// Implement operationId : projectsprojectdevicesdevicestreamGET
/// get /projects/{project}/devices/{device}:stream
Method projectsprojectdevicesdevicestreamGET(requestMessage As DTSensors.Api.Client.requests.projectsprojectdevicesdevicestreamGET, Output responseMessage As DTSensors.Api.Client.responses.projectsprojectdevicesdevicestreamGET = {##class(DTSensors.Api.Client.responses.projectsprojectdevicesdevicestreamGET).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("GET", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "projectsprojectdevicesdevicestreamGET"))
	Quit sc
}

/// Implement operationId : projectsprojectdevicesstreamGET
/// get /projects/{project}/devices:stream
Method projectsprojectdevicesstreamGET(requestMessage As DTSensors.Api.Client.requests.projectsprojectdevicesstreamGET, Output responseMessage As DTSensors.Api.Client.responses.projectsprojectdevicesstreamGET = {##class(DTSensors.Api.Client.responses.projectsprojectdevicesstreamGET).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("GET", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "projectsprojectdevicesstreamGET"))
	Quit sc
}

/// Implement operationId : projectsprojectdevicestransferPOST
/// post /projects/{project}/devices:transfer
Method projectsprojectdevicestransferPOST(requestMessage As DTSensors.Api.Client.requests.projectsprojectdevicestransferPOST, Output responseMessage As DTSensors.Api.Client.responses.projectsprojectdevicestransferPOST = {##class(DTSensors.Api.Client.responses.projectsprojectdevicestransferPOST).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("POST", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "projectsprojectdevicestransferPOST"))
	Quit sc
}

/// Implement operationId : projectsprojectmembersGET
/// get /projects/{project}/members
Method projectsprojectmembersGET(requestMessage As DTSensors.Api.Client.requests.projectsprojectmembersGET, Output responseMessage As DTSensors.Api.Client.responses.projectsprojectmembersGET = {##class(DTSensors.Api.Client.responses.projectsprojectmembersGET).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("GET", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "projectsprojectmembersGET"))
	Quit sc
}

/// Implement operationId : projectsprojectmembersPOST
/// post /projects/{project}/members
Method projectsprojectmembersPOST(requestMessage As DTSensors.Api.Client.requests.projectsprojectmembersPOST, Output responseMessage As DTSensors.Api.Client.responses.projectsprojectmembersPOST = {##class(DTSensors.Api.Client.responses.projectsprojectmembersPOST).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("POST", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "projectsprojectmembersPOST"))
	Quit sc
}

/// Implement operationId : projectsprojectmembersmemberDELETE
/// delete /projects/{project}/members/{member}
Method projectsprojectmembersmemberDELETE(requestMessage As DTSensors.Api.Client.requests.projectsprojectmembersmemberDELETE, Output responseMessage As DTSensors.Api.Client.responses.projectsprojectmembersmemberDELETE = {##class(DTSensors.Api.Client.responses.projectsprojectmembersmemberDELETE).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("DELETE", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "projectsprojectmembersmemberDELETE"))
	Quit sc
}

/// Implement operationId : projectsprojectmembersmemberGET
/// get /projects/{project}/members/{member}
Method projectsprojectmembersmemberGET(requestMessage As DTSensors.Api.Client.requests.projectsprojectmembersmemberGET, Output responseMessage As DTSensors.Api.Client.responses.projectsprojectmembersmemberGET = {##class(DTSensors.Api.Client.responses.projectsprojectmembersmemberGET).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("GET", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "projectsprojectmembersmemberGET"))
	Quit sc
}

/// Implement operationId : projectsprojectmembersmemberPATCH
/// patch /projects/{project}/members/{member}
Method projectsprojectmembersmemberPATCH(requestMessage As DTSensors.Api.Client.requests.projectsprojectmembersmemberPATCH, Output responseMessage As DTSensors.Api.Client.responses.projectsprojectmembersmemberPATCH = {##class(DTSensors.Api.Client.responses.projectsprojectmembersmemberPATCH).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("PATCH", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "projectsprojectmembersmemberPATCH"))
	Quit sc
}

/// Implement operationId : projectsprojectmembersmembergetInviteUrlGET
/// get /projects/{project}/members/{member}:getInviteUrl
Method projectsprojectmembersmembergetInviteUrlGET(requestMessage As DTSensors.Api.Client.requests.projectsprojectmembersmembergetInviteUrlGET, Output responseMessage As DTSensors.Api.Client.responses.projectsprojectmembersmembergetInviteUrlGET = {##class(DTSensors.Api.Client.responses.projectsprojectmembersmembergetInviteUrlGET).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("GET", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "projectsprojectmembersmembergetInviteUrlGET"))
	Quit sc
}

/// Implement operationId : projectsprojectpermissionsGET
/// get /projects/{project}/permissions
Method projectsprojectpermissionsGET(requestMessage As DTSensors.Api.Client.requests.projectsprojectpermissionsGET, Output responseMessage As DTSensors.Api.Client.responses.projectsprojectpermissionsGET = {##class(DTSensors.Api.Client.responses.projectsprojectpermissionsGET).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("GET", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "projectsprojectpermissionsGET"))
	Quit sc
}

/// Implement operationId : projectsprojectserviceaccountsGET
/// get /projects/{project}/serviceaccounts
Method projectsprojectserviceaccountsGET(requestMessage As DTSensors.Api.Client.requests.projectsprojectserviceaccountsGET, Output responseMessage As DTSensors.Api.Client.responses.projectsprojectserviceaccountsGET = {##class(DTSensors.Api.Client.responses.projectsprojectserviceaccountsGET).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("GET", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "projectsprojectserviceaccountsGET"))
	Quit sc
}

/// Implement operationId : projectsprojectserviceaccountsPOST
/// post /projects/{project}/serviceaccounts
Method projectsprojectserviceaccountsPOST(requestMessage As DTSensors.Api.Client.requests.projectsprojectserviceaccountsPOST, Output responseMessage As DTSensors.Api.Client.responses.projectsprojectserviceaccountsPOST = {##class(DTSensors.Api.Client.responses.projectsprojectserviceaccountsPOST).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("POST", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "projectsprojectserviceaccountsPOST"))
	Quit sc
}

/// Implement operationId : projectsprojectserviceaccountsserviceaccountDELETE
/// delete /projects/{project}/serviceaccounts/{serviceaccount}
Method projectsprojectserviceaccountsserviceaccountDELETE(requestMessage As DTSensors.Api.Client.requests.projectsprojectserviceaccountsserviceaccountDELETE, Output responseMessage As DTSensors.Api.Client.responses.projectsprojectserviceaccountsserviceaccountDELETE = {##class(DTSensors.Api.Client.responses.projectsprojectserviceaccountsserviceaccountDELETE).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("DELETE", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "projectsprojectserviceaccountsserviceaccountDELETE"))
	Quit sc
}

/// Implement operationId : projectsprojectserviceaccountsserviceaccountGET
/// get /projects/{project}/serviceaccounts/{serviceaccount}
Method projectsprojectserviceaccountsserviceaccountGET(requestMessage As DTSensors.Api.Client.requests.projectsprojectserviceaccountsserviceaccountGET, Output responseMessage As DTSensors.Api.Client.responses.projectsprojectserviceaccountsserviceaccountGET = {##class(DTSensors.Api.Client.responses.projectsprojectserviceaccountsserviceaccountGET).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("GET", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "projectsprojectserviceaccountsserviceaccountGET"))
	Quit sc
}

/// Implement operationId : projectsprojectserviceaccountsserviceaccountPATCH
/// patch /projects/{project}/serviceaccounts/{serviceaccount}
Method projectsprojectserviceaccountsserviceaccountPATCH(requestMessage As DTSensors.Api.Client.requests.projectsprojectserviceaccountsserviceaccountPATCH, Output responseMessage As DTSensors.Api.Client.responses.projectsprojectserviceaccountsserviceaccountPATCH = {##class(DTSensors.Api.Client.responses.projectsprojectserviceaccountsserviceaccountPATCH).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("PATCH", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "projectsprojectserviceaccountsserviceaccountPATCH"))
	Quit sc
}

/// Implement operationId : projectsprojectserviceaccountsserviceaccountkeysGET
/// get /projects/{project}/serviceaccounts/{serviceaccount}/keys
Method projectsprojectserviceaccountsserviceaccountkeysGET(requestMessage As DTSensors.Api.Client.requests.projectsprojectserviceaccountsserviceaccountkeysGET, Output responseMessage As DTSensors.Api.Client.responses.projectsprojectserviceaccountsserviceaccountkeysGET = {##class(DTSensors.Api.Client.responses.projectsprojectserviceaccountsserviceaccountkeysGET).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("GET", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "projectsprojectserviceaccountsserviceaccountkeysGET"))
	Quit sc
}

/// Implement operationId : projectsprojectserviceaccountsserviceaccountkeysPOST
/// post /projects/{project}/serviceaccounts/{serviceaccount}/keys
Method projectsprojectserviceaccountsserviceaccountkeysPOST(requestMessage As DTSensors.Api.Client.requests.projectsprojectserviceaccountsserviceaccountkeysPOST, Output responseMessage As DTSensors.Api.Client.responses.projectsprojectserviceaccountsserviceaccountkeysPOST = {##class(DTSensors.Api.Client.responses.projectsprojectserviceaccountsserviceaccountkeysPOST).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("POST", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "projectsprojectserviceaccountsserviceaccountkeysPOST"))
	Quit sc
}

/// Implement operationId : projectsprojectserviceaccountsserviceaccountkeyskeyDELETE
/// delete /projects/{project}/serviceaccounts/{serviceaccount}/keys/{key}
Method projectsprojectserviceaccountsserviceaccountkeyskeyDELETE(requestMessage As DTSensors.Api.Client.requests.projectsprojectserviceaccountsserviceaccountkeyskeyDELETE, Output responseMessage As DTSensors.Api.Client.responses.projectsprojectserviceaccountsserviceaccountkeyskeyDELETE = {##class(DTSensors.Api.Client.responses.projectsprojectserviceaccountsserviceaccountkeyskeyDELETE).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("DELETE", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "projectsprojectserviceaccountsserviceaccountkeyskeyDELETE"))
	Quit sc
}

/// Implement operationId : projectsprojectserviceaccountsserviceaccountkeyskeyGET
/// get /projects/{project}/serviceaccounts/{serviceaccount}/keys/{key}
Method projectsprojectserviceaccountsserviceaccountkeyskeyGET(requestMessage As DTSensors.Api.Client.requests.projectsprojectserviceaccountsserviceaccountkeyskeyGET, Output responseMessage As DTSensors.Api.Client.responses.projectsprojectserviceaccountsserviceaccountkeyskeyGET = {##class(DTSensors.Api.Client.responses.projectsprojectserviceaccountsserviceaccountkeyskeyGET).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("GET", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "projectsprojectserviceaccountsserviceaccountkeyskeyGET"))
	Quit sc
}

/// Implement operationId : rolesGET
/// get /roles
Method rolesGET(requestMessage As DTSensors.Api.Client.requests.rolesGET, Output responseMessage As DTSensors.Api.Client.responses.rolesGET = {##class(DTSensors.Api.Client.responses.rolesGET).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("GET", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "rolesGET"))
	Quit sc
}

/// Implement operationId : rolesroleGET
/// get /roles/{role}
Method rolesroleGET(requestMessage As DTSensors.Api.Client.requests.rolesroleGET, Output responseMessage As DTSensors.Api.Client.responses.rolesroleGET = {##class(DTSensors.Api.Client.responses.rolesroleGET).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("GET", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "rolesroleGET"))
	Quit sc
}

}
