Class ZorgAB.Api.Client.HttpClient Extends %RegisteredObject [ ProcedureBlock ]
{

Parameter SERVER = "https://zab.test.lsp.aorta-zorg.nl/zab";

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

/// Implement operationId : agbagbCodeGET
/// get /agb/{agbCode}
Method agbagbCodeGET(requestMessage As ZorgAB.Api.Client.requests.agbagbCodeGET, Output responseMessage As ZorgAB.Api.Client.responses.agbagbCodeGET = {##class(ZorgAB.Api.Client.responses.agbagbCodeGET).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("GET", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "agbagbCodeGET"))
	Quit sc
}

/// Implement operationId : applicationIdapplicationIdGET
/// get /applicationId/{applicationId}
Method applicationIdapplicationIdGET(requestMessage As ZorgAB.Api.Client.requests.applicationIdapplicationIdGET, Output responseMessage As ZorgAB.Api.Client.responses.applicationIdapplicationIdGET = {##class(ZorgAB.Api.Client.responses.applicationIdapplicationIdGET).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("GET", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "applicationIdapplicationIdGET"))
	Quit sc
}

/// Implement operationId : applicationIdv2applicationIdGET
/// get /applicationId-v2/{applicationId}
Method applicationIdv2applicationIdGET(requestMessage As ZorgAB.Api.Client.requests.applicationIdv2applicationIdGET, Output responseMessage As ZorgAB.Api.Client.responses.applicationIdv2applicationIdGET = {##class(ZorgAB.Api.Client.responses.applicationIdv2applicationIdGET).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("GET", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "applicationIdv2applicationIdGET"))
	Quit sc
}

/// Implement operationId : applicationsapplicationIdGET
/// get /applications/{applicationId}
Method applicationsapplicationIdGET(requestMessage As ZorgAB.Api.Client.requests.applicationsapplicationIdGET, Output responseMessage As ZorgAB.Api.Client.responses.applicationsapplicationIdGET = {##class(ZorgAB.Api.Client.responses.applicationsapplicationIdGET).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("GET", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "applicationsapplicationIdGET"))
	Quit sc
}

/// Implement operationId : carePartiesGET
/// get /careParties
Method carePartiesGET(requestMessage As ZorgAB.Api.Client.requests.carePartiesGET, Output responseMessage As ZorgAB.Api.Client.responses.carePartiesGET = {##class(ZorgAB.Api.Client.responses.carePartiesGET).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("GET", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "carePartiesGET"))
	Quit sc
}

/// Implement operationId : identificationsidGET
/// get /identifications/{id}
Method identificationsidGET(requestMessage As ZorgAB.Api.Client.requests.identificationsidGET, Output responseMessage As ZorgAB.Api.Client.responses.identificationsidGET = {##class(ZorgAB.Api.Client.responses.identificationsidGET).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("GET", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "identificationsidGET"))
	Quit sc
}

/// Implement operationId : individualsGET
/// get /individuals
Method individualsGET(requestMessage As ZorgAB.Api.Client.requests.individualsGET, Output responseMessage As ZorgAB.Api.Client.responses.individualsGET = {##class(ZorgAB.Api.Client.responses.individualsGET).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("GET", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "individualsGET"))
	Quit sc
}

/// Implement operationId : individualsPOST
/// post /individuals
Method individualsPOST(requestMessage As ZorgAB.Api.Client.requests.individualsPOST, Output responseMessage As ZorgAB.Api.Client.responses.individualsPOST = {##class(ZorgAB.Api.Client.responses.individualsPOST).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("POST", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "individualsPOST"))
	Quit sc
}

/// Implement operationId : individualsidDELETE
/// delete /individuals/{id}
Method individualsidDELETE(requestMessage As ZorgAB.Api.Client.requests.individualsidDELETE, Output responseMessage As ZorgAB.Api.Client.responses.individualsidDELETE = {##class(ZorgAB.Api.Client.responses.individualsidDELETE).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("DELETE", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "individualsidDELETE"))
	Quit sc
}

/// Implement operationId : individualsidGET
/// get /individuals/{id}
Method individualsidGET(requestMessage As ZorgAB.Api.Client.requests.individualsidGET, Output responseMessage As ZorgAB.Api.Client.responses.individualsidGET = {##class(ZorgAB.Api.Client.responses.individualsidGET).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("GET", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "individualsidGET"))
	Quit sc
}

/// Implement operationId : individualsidPATCH
/// patch /individuals/{id}
Method individualsidPATCH(requestMessage As ZorgAB.Api.Client.requests.individualsidPATCH, Output responseMessage As ZorgAB.Api.Client.responses.individualsidPATCH = {##class(ZorgAB.Api.Client.responses.individualsidPATCH).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("PATCH", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "individualsidPATCH"))
	Quit sc
}

/// Implement operationId : individualsidaddressesPOST
/// post /individuals/{id}/addresses
Method individualsidaddressesPOST(requestMessage As ZorgAB.Api.Client.requests.individualsidaddressesPOST, Output responseMessage As ZorgAB.Api.Client.responses.individualsidaddressesPOST = {##class(ZorgAB.Api.Client.responses.individualsidaddressesPOST).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("POST", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "individualsidaddressesPOST"))
	Quit sc
}

/// Implement operationId : individualsidaddressesindexDELETE
/// delete /individuals/{id}/addresses/{index}
Method individualsidaddressesindexDELETE(requestMessage As ZorgAB.Api.Client.requests.individualsidaddressesindexDELETE, Output responseMessage As ZorgAB.Api.Client.responses.individualsidaddressesindexDELETE = {##class(ZorgAB.Api.Client.responses.individualsidaddressesindexDELETE).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("DELETE", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "individualsidaddressesindexDELETE"))
	Quit sc
}

/// Implement operationId : individualsidaddressesindexPATCH
/// patch /individuals/{id}/addresses/{index}
Method individualsidaddressesindexPATCH(requestMessage As ZorgAB.Api.Client.requests.individualsidaddressesindexPATCH, Output responseMessage As ZorgAB.Api.Client.responses.individualsidaddressesindexPATCH = {##class(ZorgAB.Api.Client.responses.individualsidaddressesindexPATCH).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("PATCH", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "individualsidaddressesindexPATCH"))
	Quit sc
}

/// Implement operationId : individualsidattachmentsPOST
/// post /individuals/{id}/attachments
Method individualsidattachmentsPOST(requestMessage As ZorgAB.Api.Client.requests.individualsidattachmentsPOST, Output responseMessage As ZorgAB.Api.Client.responses.individualsidattachmentsPOST = {##class(ZorgAB.Api.Client.responses.individualsidattachmentsPOST).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("POST", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "individualsidattachmentsPOST"))
	Quit sc
}

/// Implement operationId : individualsidattachmentsindexDELETE
/// delete /individuals/{id}/attachments/{index}
Method individualsidattachmentsindexDELETE(requestMessage As ZorgAB.Api.Client.requests.individualsidattachmentsindexDELETE, Output responseMessage As ZorgAB.Api.Client.responses.individualsidattachmentsindexDELETE = {##class(ZorgAB.Api.Client.responses.individualsidattachmentsindexDELETE).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("DELETE", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "individualsidattachmentsindexDELETE"))
	Quit sc
}

/// Implement operationId : individualsidattachmentsindexPATCH
/// patch /individuals/{id}/attachments/{index}
Method individualsidattachmentsindexPATCH(requestMessage As ZorgAB.Api.Client.requests.individualsidattachmentsindexPATCH, Output responseMessage As ZorgAB.Api.Client.responses.individualsidattachmentsindexPATCH = {##class(ZorgAB.Api.Client.responses.individualsidattachmentsindexPATCH).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("PATCH", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "individualsidattachmentsindexPATCH"))
	Quit sc
}

/// Implement operationId : individualsidcredentialsPOST
/// post /individuals/{id}/credentials
Method individualsidcredentialsPOST(requestMessage As ZorgAB.Api.Client.requests.individualsidcredentialsPOST, Output responseMessage As ZorgAB.Api.Client.responses.individualsidcredentialsPOST = {##class(ZorgAB.Api.Client.responses.individualsidcredentialsPOST).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("POST", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "individualsidcredentialsPOST"))
	Quit sc
}

/// Implement operationId : individualsidcredentialsindexDELETE
/// delete /individuals/{id}/credentials/{index}
Method individualsidcredentialsindexDELETE(requestMessage As ZorgAB.Api.Client.requests.individualsidcredentialsindexDELETE, Output responseMessage As ZorgAB.Api.Client.responses.individualsidcredentialsindexDELETE = {##class(ZorgAB.Api.Client.responses.individualsidcredentialsindexDELETE).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("DELETE", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "individualsidcredentialsindexDELETE"))
	Quit sc
}

/// Implement operationId : individualsidcredentialsindexPATCH
/// patch /individuals/{id}/credentials/{index}
Method individualsidcredentialsindexPATCH(requestMessage As ZorgAB.Api.Client.requests.individualsidcredentialsindexPATCH, Output responseMessage As ZorgAB.Api.Client.responses.individualsidcredentialsindexPATCH = {##class(ZorgAB.Api.Client.responses.individualsidcredentialsindexPATCH).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("PATCH", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "individualsidcredentialsindexPATCH"))
	Quit sc
}

/// Implement operationId : individualsididentificationsPOST
/// post /individuals/{id}/identifications
Method individualsididentificationsPOST(requestMessage As ZorgAB.Api.Client.requests.individualsididentificationsPOST, Output responseMessage As ZorgAB.Api.Client.responses.individualsididentificationsPOST = {##class(ZorgAB.Api.Client.responses.individualsididentificationsPOST).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("POST", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "individualsididentificationsPOST"))
	Quit sc
}

/// Implement operationId : individualsididentificationsindexDELETE
/// delete /individuals/{id}/identifications/{index}
Method individualsididentificationsindexDELETE(requestMessage As ZorgAB.Api.Client.requests.individualsididentificationsindexDELETE, Output responseMessage As ZorgAB.Api.Client.responses.individualsididentificationsindexDELETE = {##class(ZorgAB.Api.Client.responses.individualsididentificationsindexDELETE).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("DELETE", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "individualsididentificationsindexDELETE"))
	Quit sc
}

/// Implement operationId : individualsididentificationsindexPATCH
/// patch /individuals/{id}/identifications/{index}
Method individualsididentificationsindexPATCH(requestMessage As ZorgAB.Api.Client.requests.individualsididentificationsindexPATCH, Output responseMessage As ZorgAB.Api.Client.responses.individualsididentificationsindexPATCH = {##class(ZorgAB.Api.Client.responses.individualsididentificationsindexPATCH).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("PATCH", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "individualsididentificationsindexPATCH"))
	Quit sc
}

/// Implement operationId : individualsidnamesPOST
/// post /individuals/{id}/names
Method individualsidnamesPOST(requestMessage As ZorgAB.Api.Client.requests.individualsidnamesPOST, Output responseMessage As ZorgAB.Api.Client.responses.individualsidnamesPOST = {##class(ZorgAB.Api.Client.responses.individualsidnamesPOST).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("POST", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "individualsidnamesPOST"))
	Quit sc
}

/// Implement operationId : individualsidnamesindexDELETE
/// delete /individuals/{id}/names/{index}
Method individualsidnamesindexDELETE(requestMessage As ZorgAB.Api.Client.requests.individualsidnamesindexDELETE, Output responseMessage As ZorgAB.Api.Client.responses.individualsidnamesindexDELETE = {##class(ZorgAB.Api.Client.responses.individualsidnamesindexDELETE).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("DELETE", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "individualsidnamesindexDELETE"))
	Quit sc
}

/// Implement operationId : individualsidnamesindexPATCH
/// patch /individuals/{id}/names/{index}
Method individualsidnamesindexPATCH(requestMessage As ZorgAB.Api.Client.requests.individualsidnamesindexPATCH, Output responseMessage As ZorgAB.Api.Client.responses.individualsidnamesindexPATCH = {##class(ZorgAB.Api.Client.responses.individualsidnamesindexPATCH).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("PATCH", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "individualsidnamesindexPATCH"))
	Quit sc
}

/// Implement operationId : individualsidorganizationsGET
/// get /individuals/{id}/organizations
Method individualsidorganizationsGET(requestMessage As ZorgAB.Api.Client.requests.individualsidorganizationsGET, Output responseMessage As ZorgAB.Api.Client.responses.individualsidorganizationsGET = {##class(ZorgAB.Api.Client.responses.individualsidorganizationsGET).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("GET", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "individualsidorganizationsGET"))
	Quit sc
}

/// Implement operationId : individualsidrelationsGET
/// get /individuals/{id}/relations
Method individualsidrelationsGET(requestMessage As ZorgAB.Api.Client.requests.individualsidrelationsGET, Output responseMessage As ZorgAB.Api.Client.responses.individualsidrelationsGET = {##class(ZorgAB.Api.Client.responses.individualsidrelationsGET).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("GET", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "individualsidrelationsGET"))
	Quit sc
}

/// Implement operationId : individualsidservicesPOST
/// post /individuals/{id}/services
Method individualsidservicesPOST(requestMessage As ZorgAB.Api.Client.requests.individualsidservicesPOST, Output responseMessage As ZorgAB.Api.Client.responses.individualsidservicesPOST = {##class(ZorgAB.Api.Client.responses.individualsidservicesPOST).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("POST", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "individualsidservicesPOST"))
	Quit sc
}

/// Implement operationId : individualsidservicesindexDELETE
/// delete /individuals/{id}/services/{index}
Method individualsidservicesindexDELETE(requestMessage As ZorgAB.Api.Client.requests.individualsidservicesindexDELETE, Output responseMessage As ZorgAB.Api.Client.responses.individualsidservicesindexDELETE = {##class(ZorgAB.Api.Client.responses.individualsidservicesindexDELETE).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("DELETE", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "individualsidservicesindexDELETE"))
	Quit sc
}

/// Implement operationId : individualsidservicesindexPATCH
/// patch /individuals/{id}/services/{index}
Method individualsidservicesindexPATCH(requestMessage As ZorgAB.Api.Client.requests.individualsidservicesindexPATCH, Output responseMessage As ZorgAB.Api.Client.responses.individualsidservicesindexPATCH = {##class(ZorgAB.Api.Client.responses.individualsidservicesindexPATCH).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("PATCH", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "individualsidservicesindexPATCH"))
	Quit sc
}

/// Implement operationId : individualsidtelecomsPOST
/// post /individuals/{id}/telecoms
Method individualsidtelecomsPOST(requestMessage As ZorgAB.Api.Client.requests.individualsidtelecomsPOST, Output responseMessage As ZorgAB.Api.Client.responses.individualsidtelecomsPOST = {##class(ZorgAB.Api.Client.responses.individualsidtelecomsPOST).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("POST", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "individualsidtelecomsPOST"))
	Quit sc
}

/// Implement operationId : individualsidtelecomsindexDELETE
/// delete /individuals/{id}/telecoms/{index}
Method individualsidtelecomsindexDELETE(requestMessage As ZorgAB.Api.Client.requests.individualsidtelecomsindexDELETE, Output responseMessage As ZorgAB.Api.Client.responses.individualsidtelecomsindexDELETE = {##class(ZorgAB.Api.Client.responses.individualsidtelecomsindexDELETE).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("DELETE", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "individualsidtelecomsindexDELETE"))
	Quit sc
}

/// Implement operationId : individualsidtelecomsindexPATCH
/// patch /individuals/{id}/telecoms/{index}
Method individualsidtelecomsindexPATCH(requestMessage As ZorgAB.Api.Client.requests.individualsidtelecomsindexPATCH, Output responseMessage As ZorgAB.Api.Client.responses.individualsidtelecomsindexPATCH = {##class(ZorgAB.Api.Client.responses.individualsidtelecomsindexPATCH).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("PATCH", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "individualsidtelecomsindexPATCH"))
	Quit sc
}

/// Implement operationId : individualsidtypesPOST
/// post /individuals/{id}/types
Method individualsidtypesPOST(requestMessage As ZorgAB.Api.Client.requests.individualsidtypesPOST, Output responseMessage As ZorgAB.Api.Client.responses.individualsidtypesPOST = {##class(ZorgAB.Api.Client.responses.individualsidtypesPOST).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("POST", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "individualsidtypesPOST"))
	Quit sc
}

/// Implement operationId : individualsidtypesindexDELETE
/// delete /individuals/{id}/types/{index}
Method individualsidtypesindexDELETE(requestMessage As ZorgAB.Api.Client.requests.individualsidtypesindexDELETE, Output responseMessage As ZorgAB.Api.Client.responses.individualsidtypesindexDELETE = {##class(ZorgAB.Api.Client.responses.individualsidtypesindexDELETE).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("DELETE", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "individualsidtypesindexDELETE"))
	Quit sc
}

/// Implement operationId : individualsidtypesindexPATCH
/// patch /individuals/{id}/types/{index}
Method individualsidtypesindexPATCH(requestMessage As ZorgAB.Api.Client.requests.individualsidtypesindexPATCH, Output responseMessage As ZorgAB.Api.Client.responses.individualsidtypesindexPATCH = {##class(ZorgAB.Api.Client.responses.individualsidtypesindexPATCH).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("PATCH", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "individualsidtypesindexPATCH"))
	Quit sc
}

/// Implement operationId : lspOrganizationsGET
/// get /lspOrganizations
Method lspOrganizationsGET(requestMessage As ZorgAB.Api.Client.requests.lspOrganizationsGET, Output responseMessage As ZorgAB.Api.Client.responses.lspOrganizationsGET = {##class(ZorgAB.Api.Client.responses.lspOrganizationsGET).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("GET", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "lspOrganizationsGET"))
	Quit sc
}

/// Implement operationId : organizationsGET
/// get /organizations
Method organizationsGET(requestMessage As ZorgAB.Api.Client.requests.organizationsGET, Output responseMessage As ZorgAB.Api.Client.responses.organizationsGET = {##class(ZorgAB.Api.Client.responses.organizationsGET).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("GET", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "organizationsGET"))
	Quit sc
}

/// Implement operationId : organizationsPOST
/// post /organizations
Method organizationsPOST(requestMessage As ZorgAB.Api.Client.requests.organizationsPOST, Output responseMessage As ZorgAB.Api.Client.responses.organizationsPOST = {##class(ZorgAB.Api.Client.responses.organizationsPOST).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("POST", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "organizationsPOST"))
	Quit sc
}

/// Implement operationId : organizationsidDELETE
/// delete /organizations/{id}
Method organizationsidDELETE(requestMessage As ZorgAB.Api.Client.requests.organizationsidDELETE, Output responseMessage As ZorgAB.Api.Client.responses.organizationsidDELETE = {##class(ZorgAB.Api.Client.responses.organizationsidDELETE).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("DELETE", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "organizationsidDELETE"))
	Quit sc
}

/// Implement operationId : organizationsidGET
/// get /organizations/{id}
Method organizationsidGET(requestMessage As ZorgAB.Api.Client.requests.organizationsidGET, Output responseMessage As ZorgAB.Api.Client.responses.organizationsidGET = {##class(ZorgAB.Api.Client.responses.organizationsidGET).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("GET", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "organizationsidGET"))
	Quit sc
}

/// Implement operationId : organizationsidPATCH
/// patch /organizations/{id}
Method organizationsidPATCH(requestMessage As ZorgAB.Api.Client.requests.organizationsidPATCH, Output responseMessage As ZorgAB.Api.Client.responses.organizationsidPATCH = {##class(ZorgAB.Api.Client.responses.organizationsidPATCH).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("PATCH", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "organizationsidPATCH"))
	Quit sc
}

/// Implement operationId : organizationsidaddressesPOST
/// post /organizations/{id}/addresses
Method organizationsidaddressesPOST(requestMessage As ZorgAB.Api.Client.requests.organizationsidaddressesPOST, Output responseMessage As ZorgAB.Api.Client.responses.organizationsidaddressesPOST = {##class(ZorgAB.Api.Client.responses.organizationsidaddressesPOST).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("POST", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "organizationsidaddressesPOST"))
	Quit sc
}

/// Implement operationId : organizationsidaddressesindexDELETE
/// delete /organizations/{id}/addresses/{index}
Method organizationsidaddressesindexDELETE(requestMessage As ZorgAB.Api.Client.requests.organizationsidaddressesindexDELETE, Output responseMessage As ZorgAB.Api.Client.responses.organizationsidaddressesindexDELETE = {##class(ZorgAB.Api.Client.responses.organizationsidaddressesindexDELETE).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("DELETE", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "organizationsidaddressesindexDELETE"))
	Quit sc
}

/// Implement operationId : organizationsidaddressesindexPATCH
/// patch /organizations/{id}/addresses/{index}
Method organizationsidaddressesindexPATCH(requestMessage As ZorgAB.Api.Client.requests.organizationsidaddressesindexPATCH, Output responseMessage As ZorgAB.Api.Client.responses.organizationsidaddressesindexPATCH = {##class(ZorgAB.Api.Client.responses.organizationsidaddressesindexPATCH).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("PATCH", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "organizationsidaddressesindexPATCH"))
	Quit sc
}

/// Implement operationId : organizationsidattachmentsPOST
/// post /organizations/{id}/attachments
Method organizationsidattachmentsPOST(requestMessage As ZorgAB.Api.Client.requests.organizationsidattachmentsPOST, Output responseMessage As ZorgAB.Api.Client.responses.organizationsidattachmentsPOST = {##class(ZorgAB.Api.Client.responses.organizationsidattachmentsPOST).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("POST", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "organizationsidattachmentsPOST"))
	Quit sc
}

/// Implement operationId : organizationsidattachmentsindexDELETE
/// delete /organizations/{id}/attachments/{index}
Method organizationsidattachmentsindexDELETE(requestMessage As ZorgAB.Api.Client.requests.organizationsidattachmentsindexDELETE, Output responseMessage As ZorgAB.Api.Client.responses.organizationsidattachmentsindexDELETE = {##class(ZorgAB.Api.Client.responses.organizationsidattachmentsindexDELETE).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("DELETE", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "organizationsidattachmentsindexDELETE"))
	Quit sc
}

/// Implement operationId : organizationsidattachmentsindexPATCH
/// patch /organizations/{id}/attachments/{index}
Method organizationsidattachmentsindexPATCH(requestMessage As ZorgAB.Api.Client.requests.organizationsidattachmentsindexPATCH, Output responseMessage As ZorgAB.Api.Client.responses.organizationsidattachmentsindexPATCH = {##class(ZorgAB.Api.Client.responses.organizationsidattachmentsindexPATCH).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("PATCH", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "organizationsidattachmentsindexPATCH"))
	Quit sc
}

/// Implement operationId : organizationsidcredentialsPOST
/// post /organizations/{id}/credentials
Method organizationsidcredentialsPOST(requestMessage As ZorgAB.Api.Client.requests.organizationsidcredentialsPOST, Output responseMessage As ZorgAB.Api.Client.responses.organizationsidcredentialsPOST = {##class(ZorgAB.Api.Client.responses.organizationsidcredentialsPOST).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("POST", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "organizationsidcredentialsPOST"))
	Quit sc
}

/// Implement operationId : organizationsidcredentialsindexDELETE
/// delete /organizations/{id}/credentials/{index}
Method organizationsidcredentialsindexDELETE(requestMessage As ZorgAB.Api.Client.requests.organizationsidcredentialsindexDELETE, Output responseMessage As ZorgAB.Api.Client.responses.organizationsidcredentialsindexDELETE = {##class(ZorgAB.Api.Client.responses.organizationsidcredentialsindexDELETE).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("DELETE", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "organizationsidcredentialsindexDELETE"))
	Quit sc
}

/// Implement operationId : organizationsidcredentialsindexPATCH
/// patch /organizations/{id}/credentials/{index}
Method organizationsidcredentialsindexPATCH(requestMessage As ZorgAB.Api.Client.requests.organizationsidcredentialsindexPATCH, Output responseMessage As ZorgAB.Api.Client.responses.organizationsidcredentialsindexPATCH = {##class(ZorgAB.Api.Client.responses.organizationsidcredentialsindexPATCH).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("PATCH", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "organizationsidcredentialsindexPATCH"))
	Quit sc
}

/// Implement operationId : organizationsididentificationsPOST
/// post /organizations/{id}/identifications
Method organizationsididentificationsPOST(requestMessage As ZorgAB.Api.Client.requests.organizationsididentificationsPOST, Output responseMessage As ZorgAB.Api.Client.responses.organizationsididentificationsPOST = {##class(ZorgAB.Api.Client.responses.organizationsididentificationsPOST).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("POST", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "organizationsididentificationsPOST"))
	Quit sc
}

/// Implement operationId : organizationsididentificationsindexDELETE
/// delete /organizations/{id}/identifications/{index}
Method organizationsididentificationsindexDELETE(requestMessage As ZorgAB.Api.Client.requests.organizationsididentificationsindexDELETE, Output responseMessage As ZorgAB.Api.Client.responses.organizationsididentificationsindexDELETE = {##class(ZorgAB.Api.Client.responses.organizationsididentificationsindexDELETE).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("DELETE", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "organizationsididentificationsindexDELETE"))
	Quit sc
}

/// Implement operationId : organizationsididentificationsindexPATCH
/// patch /organizations/{id}/identifications/{index}
Method organizationsididentificationsindexPATCH(requestMessage As ZorgAB.Api.Client.requests.organizationsididentificationsindexPATCH, Output responseMessage As ZorgAB.Api.Client.responses.organizationsididentificationsindexPATCH = {##class(ZorgAB.Api.Client.responses.organizationsididentificationsindexPATCH).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("PATCH", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "organizationsididentificationsindexPATCH"))
	Quit sc
}

/// Implement operationId : organizationsidindividualsGET
/// get /organizations/{id}/individuals
Method organizationsidindividualsGET(requestMessage As ZorgAB.Api.Client.requests.organizationsidindividualsGET, Output responseMessage As ZorgAB.Api.Client.responses.organizationsidindividualsGET = {##class(ZorgAB.Api.Client.responses.organizationsidindividualsGET).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("GET", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "organizationsidindividualsGET"))
	Quit sc
}

/// Implement operationId : organizationsidmainOrganizationGET
/// get /organizations/{id}/mainOrganization
Method organizationsidmainOrganizationGET(requestMessage As ZorgAB.Api.Client.requests.organizationsidmainOrganizationGET, Output responseMessage As ZorgAB.Api.Client.responses.organizationsidmainOrganizationGET = {##class(ZorgAB.Api.Client.responses.organizationsidmainOrganizationGET).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("GET", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "organizationsidmainOrganizationGET"))
	Quit sc
}

/// Implement operationId : organizationsidnamesPOST
/// post /organizations/{id}/names
Method organizationsidnamesPOST(requestMessage As ZorgAB.Api.Client.requests.organizationsidnamesPOST, Output responseMessage As ZorgAB.Api.Client.responses.organizationsidnamesPOST = {##class(ZorgAB.Api.Client.responses.organizationsidnamesPOST).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("POST", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "organizationsidnamesPOST"))
	Quit sc
}

/// Implement operationId : organizationsidnamesindexDELETE
/// delete /organizations/{id}/names/{index}
Method organizationsidnamesindexDELETE(requestMessage As ZorgAB.Api.Client.requests.organizationsidnamesindexDELETE, Output responseMessage As ZorgAB.Api.Client.responses.organizationsidnamesindexDELETE = {##class(ZorgAB.Api.Client.responses.organizationsidnamesindexDELETE).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("DELETE", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "organizationsidnamesindexDELETE"))
	Quit sc
}

/// Implement operationId : organizationsidnamesindexPATCH
/// patch /organizations/{id}/names/{index}
Method organizationsidnamesindexPATCH(requestMessage As ZorgAB.Api.Client.requests.organizationsidnamesindexPATCH, Output responseMessage As ZorgAB.Api.Client.responses.organizationsidnamesindexPATCH = {##class(ZorgAB.Api.Client.responses.organizationsidnamesindexPATCH).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("PATCH", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "organizationsidnamesindexPATCH"))
	Quit sc
}

/// Implement operationId : organizationsidrelationsGET
/// get /organizations/{id}/relations
Method organizationsidrelationsGET(requestMessage As ZorgAB.Api.Client.requests.organizationsidrelationsGET, Output responseMessage As ZorgAB.Api.Client.responses.organizationsidrelationsGET = {##class(ZorgAB.Api.Client.responses.organizationsidrelationsGET).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("GET", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "organizationsidrelationsGET"))
	Quit sc
}

/// Implement operationId : organizationsidservicesPOST
/// post /organizations/{id}/services
Method organizationsidservicesPOST(requestMessage As ZorgAB.Api.Client.requests.organizationsidservicesPOST, Output responseMessage As ZorgAB.Api.Client.responses.organizationsidservicesPOST = {##class(ZorgAB.Api.Client.responses.organizationsidservicesPOST).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("POST", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "organizationsidservicesPOST"))
	Quit sc
}

/// Implement operationId : organizationsidservicesindexDELETE
/// delete /organizations/{id}/services/{index}
Method organizationsidservicesindexDELETE(requestMessage As ZorgAB.Api.Client.requests.organizationsidservicesindexDELETE, Output responseMessage As ZorgAB.Api.Client.responses.organizationsidservicesindexDELETE = {##class(ZorgAB.Api.Client.responses.organizationsidservicesindexDELETE).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("DELETE", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "organizationsidservicesindexDELETE"))
	Quit sc
}

/// Implement operationId : organizationsidservicesindexPATCH
/// patch /organizations/{id}/services/{index}
Method organizationsidservicesindexPATCH(requestMessage As ZorgAB.Api.Client.requests.organizationsidservicesindexPATCH, Output responseMessage As ZorgAB.Api.Client.responses.organizationsidservicesindexPATCH = {##class(ZorgAB.Api.Client.responses.organizationsidservicesindexPATCH).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("PATCH", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "organizationsidservicesindexPATCH"))
	Quit sc
}

/// Implement operationId : organizationsidsubOrganizationsGET
/// get /organizations/{id}/subOrganizations
Method organizationsidsubOrganizationsGET(requestMessage As ZorgAB.Api.Client.requests.organizationsidsubOrganizationsGET, Output responseMessage As ZorgAB.Api.Client.responses.organizationsidsubOrganizationsGET = {##class(ZorgAB.Api.Client.responses.organizationsidsubOrganizationsGET).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("GET", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "organizationsidsubOrganizationsGET"))
	Quit sc
}

/// Implement operationId : organizationsidsummaryGET
/// get /organizations/{id}/_summary
Method organizationsidsummaryGET(requestMessage As ZorgAB.Api.Client.requests.organizationsidsummaryGET, Output responseMessage As ZorgAB.Api.Client.responses.organizationsidsummaryGET = {##class(ZorgAB.Api.Client.responses.organizationsidsummaryGET).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("GET", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "organizationsidsummaryGET"))
	Quit sc
}

/// Implement operationId : organizationsidtelecomsPOST
/// post /organizations/{id}/telecoms
Method organizationsidtelecomsPOST(requestMessage As ZorgAB.Api.Client.requests.organizationsidtelecomsPOST, Output responseMessage As ZorgAB.Api.Client.responses.organizationsidtelecomsPOST = {##class(ZorgAB.Api.Client.responses.organizationsidtelecomsPOST).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("POST", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "organizationsidtelecomsPOST"))
	Quit sc
}

/// Implement operationId : organizationsidtelecomsindexDELETE
/// delete /organizations/{id}/telecoms/{index}
Method organizationsidtelecomsindexDELETE(requestMessage As ZorgAB.Api.Client.requests.organizationsidtelecomsindexDELETE, Output responseMessage As ZorgAB.Api.Client.responses.organizationsidtelecomsindexDELETE = {##class(ZorgAB.Api.Client.responses.organizationsidtelecomsindexDELETE).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("DELETE", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "organizationsidtelecomsindexDELETE"))
	Quit sc
}

/// Implement operationId : organizationsidtelecomsindexPATCH
/// patch /organizations/{id}/telecoms/{index}
Method organizationsidtelecomsindexPATCH(requestMessage As ZorgAB.Api.Client.requests.organizationsidtelecomsindexPATCH, Output responseMessage As ZorgAB.Api.Client.responses.organizationsidtelecomsindexPATCH = {##class(ZorgAB.Api.Client.responses.organizationsidtelecomsindexPATCH).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("PATCH", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "organizationsidtelecomsindexPATCH"))
	Quit sc
}

/// Implement operationId : organizationsidtypesPOST
/// post /organizations/{id}/types
Method organizationsidtypesPOST(requestMessage As ZorgAB.Api.Client.requests.organizationsidtypesPOST, Output responseMessage As ZorgAB.Api.Client.responses.organizationsidtypesPOST = {##class(ZorgAB.Api.Client.responses.organizationsidtypesPOST).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("POST", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "organizationsidtypesPOST"))
	Quit sc
}

/// Implement operationId : organizationsidtypesindexDELETE
/// delete /organizations/{id}/types/{index}
Method organizationsidtypesindexDELETE(requestMessage As ZorgAB.Api.Client.requests.organizationsidtypesindexDELETE, Output responseMessage As ZorgAB.Api.Client.responses.organizationsidtypesindexDELETE = {##class(ZorgAB.Api.Client.responses.organizationsidtypesindexDELETE).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("DELETE", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "organizationsidtypesindexDELETE"))
	Quit sc
}

/// Implement operationId : organizationsidtypesindexPATCH
/// patch /organizations/{id}/types/{index}
Method organizationsidtypesindexPATCH(requestMessage As ZorgAB.Api.Client.requests.organizationsidtypesindexPATCH, Output responseMessage As ZorgAB.Api.Client.responses.organizationsidtypesindexPATCH = {##class(ZorgAB.Api.Client.responses.organizationsidtypesindexPATCH).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("PATCH", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "organizationsidtypesindexPATCH"))
	Quit sc
}

/// Implement operationId : organizationssummaryGET
/// get /organizations/_summary
Method organizationssummaryGET(requestMessage As ZorgAB.Api.Client.requests.organizationssummaryGET, Output responseMessage As ZorgAB.Api.Client.responses.organizationssummaryGET = {##class(ZorgAB.Api.Client.responses.organizationssummaryGET).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("GET", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "organizationssummaryGET"))
	Quit sc
}

/// Implement operationId : subOrganizationDELETE
/// delete /subOrganization
Method subOrganizationDELETE(requestMessage As ZorgAB.Api.Client.requests.subOrganizationDELETE, Output responseMessage As ZorgAB.Api.Client.responses.subOrganizationDELETE = {##class(ZorgAB.Api.Client.responses.subOrganizationDELETE).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("DELETE", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "subOrganizationDELETE"))
	Quit sc
}

/// Implement operationId : subOrganizationPATCH
/// patch /subOrganization
Method subOrganizationPATCH(requestMessage As ZorgAB.Api.Client.requests.subOrganizationPATCH, Output responseMessage As ZorgAB.Api.Client.responses.subOrganizationPATCH = {##class(ZorgAB.Api.Client.responses.subOrganizationPATCH).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("PATCH", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "subOrganizationPATCH"))
	Quit sc
}

/// Implement operationId : subOrganizationPOST
/// post /subOrganization
Method subOrganizationPOST(requestMessage As ZorgAB.Api.Client.requests.subOrganizationPOST, Output responseMessage As ZorgAB.Api.Client.responses.subOrganizationPOST = {##class(ZorgAB.Api.Client.responses.subOrganizationPOST).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("POST", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "subOrganizationPOST"))
	Quit sc
}

/// Implement operationId : subOrganizationidDELETE
/// delete /subOrganization/{id}
Method subOrganizationidDELETE(requestMessage As ZorgAB.Api.Client.requests.subOrganizationidDELETE, Output responseMessage As ZorgAB.Api.Client.responses.subOrganizationidDELETE = {##class(ZorgAB.Api.Client.responses.subOrganizationidDELETE).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("DELETE", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "subOrganizationidDELETE"))
	Quit sc
}

/// Implement operationId : subOrganizationidGET
/// get /subOrganization/{id}
Method subOrganizationidGET(requestMessage As ZorgAB.Api.Client.requests.subOrganizationidGET, Output responseMessage As ZorgAB.Api.Client.responses.subOrganizationidGET = {##class(ZorgAB.Api.Client.responses.subOrganizationidGET).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("GET", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "subOrganizationidGET"))
	Quit sc
}

/// Implement operationId : subOrganizationidPATCH
/// patch /subOrganization/{id}
Method subOrganizationidPATCH(requestMessage As ZorgAB.Api.Client.requests.subOrganizationidPATCH, Output responseMessage As ZorgAB.Api.Client.responses.subOrganizationidPATCH = {##class(ZorgAB.Api.Client.responses.subOrganizationidPATCH).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("PATCH", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "subOrganizationidPATCH"))
	Quit sc
}

/// Implement operationId : urauraNumberGET
/// get /ura/{uraNumber}
Method urauraNumberGET(requestMessage As ZorgAB.Api.Client.requests.urauraNumberGET, Output responseMessage As ZorgAB.Api.Client.responses.urauraNumberGET = {##class(ZorgAB.Api.Client.responses.urauraNumberGET).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("GET", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "urauraNumberGET"))
	Quit sc
}

/// Implement operationId : uziuziNumberGET
/// get /uzi/{uziNumber}
Method uziuziNumberGET(requestMessage As ZorgAB.Api.Client.requests.uziuziNumberGET, Output responseMessage As ZorgAB.Api.Client.responses.uziuziNumberGET = {##class(ZorgAB.Api.Client.responses.uziuziNumberGET).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("GET", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "uziuziNumberGET"))
	Quit sc
}

/// Implement operationId : worksAtDELETE
/// delete /worksAt
Method worksAtDELETE(requestMessage As ZorgAB.Api.Client.requests.worksAtDELETE, Output responseMessage As ZorgAB.Api.Client.responses.worksAtDELETE = {##class(ZorgAB.Api.Client.responses.worksAtDELETE).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("DELETE", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "worksAtDELETE"))
	Quit sc
}

/// Implement operationId : worksAtPATCH
/// patch /worksAt
Method worksAtPATCH(requestMessage As ZorgAB.Api.Client.requests.worksAtPATCH, Output responseMessage As ZorgAB.Api.Client.responses.worksAtPATCH = {##class(ZorgAB.Api.Client.responses.worksAtPATCH).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("PATCH", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "worksAtPATCH"))
	Quit sc
}

/// Implement operationId : worksAtPOST
/// post /worksAt
Method worksAtPOST(requestMessage As ZorgAB.Api.Client.requests.worksAtPOST, Output responseMessage As ZorgAB.Api.Client.responses.worksAtPOST = {##class(ZorgAB.Api.Client.responses.worksAtPOST).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("POST", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "worksAtPOST"))
	Quit sc
}

/// Implement operationId : worksAtidDELETE
/// delete /worksAt/{id}
Method worksAtidDELETE(requestMessage As ZorgAB.Api.Client.requests.worksAtidDELETE, Output responseMessage As ZorgAB.Api.Client.responses.worksAtidDELETE = {##class(ZorgAB.Api.Client.responses.worksAtidDELETE).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("DELETE", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "worksAtidDELETE"))
	Quit sc
}

/// Implement operationId : worksAtidGET
/// get /worksAt/{id}
Method worksAtidGET(requestMessage As ZorgAB.Api.Client.requests.worksAtidGET, Output responseMessage As ZorgAB.Api.Client.responses.worksAtidGET = {##class(ZorgAB.Api.Client.responses.worksAtidGET).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("GET", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "worksAtidGET"))
	Quit sc
}

/// Implement operationId : worksAtidPATCH
/// patch /worksAt/{id}
Method worksAtidPATCH(requestMessage As ZorgAB.Api.Client.requests.worksAtidPATCH, Output responseMessage As ZorgAB.Api.Client.responses.worksAtidPATCH = {##class(ZorgAB.Api.Client.responses.worksAtidPATCH).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("PATCH", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "worksAtidPATCH"))
	Quit sc
}

}
