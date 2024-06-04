/// Generated Business Operation
Class CONNECTORSPKG.ZorgAB.Api.Client.bo.Operation Extends Ens.BusinessOperation [ Inheritance = left, ProcedureBlock ]
{

Parameter ADAPTER = "EnsLib.HTTP.OutboundAdapter";

Property Adapter As EnsLib.HTTP.OutboundAdapter;

/// Implement operationId : agbagbCodeGET
/// get /agb/{agbCode}
Method agbagbCodeGET(requestMessage As CONNECTORSPKG.ZorgAB.Api.Client.requests.agbagbCodeGET, Output responseMessage As CONNECTORSPKG.ZorgAB.Api.Client.responses.agbagbCodeGET) As %Status
{
	set responseMessage = ##class(CONNECTORSPKG.ZorgAB.Api.Client.responses.agbagbCodeGET).%New()
	return ..zzHandleRequest(requestMessage, "agbagbCodeGET", "get", responseMessage)
}

/// Implement operationId : applicationIdapplicationIdGET
/// get /applicationId/{applicationId}
Method applicationIdapplicationIdGET(requestMessage As CONNECTORSPKG.ZorgAB.Api.Client.requests.applicationIdapplicationIdGET, Output responseMessage As CONNECTORSPKG.ZorgAB.Api.Client.responses.applicationIdapplicationIdGET) As %Status
{
	set responseMessage = ##class(CONNECTORSPKG.ZorgAB.Api.Client.responses.applicationIdapplicationIdGET).%New()
	return ..zzHandleRequest(requestMessage, "applicationIdapplicationIdGET", "get", responseMessage)
}

/// Implement operationId : applicationIdv2applicationIdGET
/// get /applicationId-v2/{applicationId}
Method applicationIdv2applicationIdGET(requestMessage As CONNECTORSPKG.ZorgAB.Api.Client.requests.applicationIdv2applicationIdGET, Output responseMessage As CONNECTORSPKG.ZorgAB.Api.Client.responses.applicationIdv2applicationIdGET) As %Status
{
	set responseMessage = ##class(CONNECTORSPKG.ZorgAB.Api.Client.responses.applicationIdv2applicationIdGET).%New()
	return ..zzHandleRequest(requestMessage, "applicationIdv2applicationIdGET", "get", responseMessage)
}

/// Implement operationId : applicationsapplicationIdGET
/// get /applications/{applicationId}
Method applicationsapplicationIdGET(requestMessage As CONNECTORSPKG.ZorgAB.Api.Client.requests.applicationsapplicationIdGET, Output responseMessage As CONNECTORSPKG.ZorgAB.Api.Client.responses.applicationsapplicationIdGET) As %Status
{
	set responseMessage = ##class(CONNECTORSPKG.ZorgAB.Api.Client.responses.applicationsapplicationIdGET).%New()
	return ..zzHandleRequest(requestMessage, "applicationsapplicationIdGET", "get", responseMessage)
}

/// Implement operationId : carePartiesGET
/// get /careParties
Method carePartiesGET(requestMessage As CONNECTORSPKG.ZorgAB.Api.Client.requests.carePartiesGET, Output responseMessage As CONNECTORSPKG.ZorgAB.Api.Client.responses.carePartiesGET) As %Status
{
	set responseMessage = ##class(CONNECTORSPKG.ZorgAB.Api.Client.responses.carePartiesGET).%New()
	return ..zzHandleRequest(requestMessage, "carePartiesGET", "get", responseMessage)
}

/// Implement operationId : identificationsidGET
/// get /identifications/{id}
Method identificationsidGET(requestMessage As CONNECTORSPKG.ZorgAB.Api.Client.requests.identificationsidGET, Output responseMessage As CONNECTORSPKG.ZorgAB.Api.Client.responses.identificationsidGET) As %Status
{
	set responseMessage = ##class(CONNECTORSPKG.ZorgAB.Api.Client.responses.identificationsidGET).%New()
	return ..zzHandleRequest(requestMessage, "identificationsidGET", "get", responseMessage)
}

/// Implement operationId : individualsGET
/// get /individuals
Method individualsGET(requestMessage As CONNECTORSPKG.ZorgAB.Api.Client.requests.individualsGET, Output responseMessage As CONNECTORSPKG.ZorgAB.Api.Client.responses.individualsGET) As %Status
{
	set responseMessage = ##class(CONNECTORSPKG.ZorgAB.Api.Client.responses.individualsGET).%New()
	return ..zzHandleRequest(requestMessage, "individualsGET", "get", responseMessage)
}

/// Implement operationId : individualsPOST
/// post /individuals
Method individualsPOST(requestMessage As CONNECTORSPKG.ZorgAB.Api.Client.requests.individualsPOST, Output responseMessage As CONNECTORSPKG.ZorgAB.Api.Client.responses.individualsPOST) As %Status
{
	set responseMessage = ##class(CONNECTORSPKG.ZorgAB.Api.Client.responses.individualsPOST).%New()
	return ..zzHandleRequest(requestMessage, "individualsPOST", "post", responseMessage)
}

/// Implement operationId : individualsidDELETE
/// delete /individuals/{id}
Method individualsidDELETE(requestMessage As CONNECTORSPKG.ZorgAB.Api.Client.requests.individualsidDELETE, Output responseMessage As CONNECTORSPKG.ZorgAB.Api.Client.responses.individualsidDELETE) As %Status
{
	set responseMessage = ##class(CONNECTORSPKG.ZorgAB.Api.Client.responses.individualsidDELETE).%New()
	return ..zzHandleRequest(requestMessage, "individualsidDELETE", "delete", responseMessage)
}

/// Implement operationId : individualsidGET
/// get /individuals/{id}
Method individualsidGET(requestMessage As CONNECTORSPKG.ZorgAB.Api.Client.requests.individualsidGET, Output responseMessage As CONNECTORSPKG.ZorgAB.Api.Client.responses.individualsidGET) As %Status
{
	set responseMessage = ##class(CONNECTORSPKG.ZorgAB.Api.Client.responses.individualsidGET).%New()
	return ..zzHandleRequest(requestMessage, "individualsidGET", "get", responseMessage)
}

/// Implement operationId : individualsidPATCH
/// patch /individuals/{id}
Method individualsidPATCH(requestMessage As CONNECTORSPKG.ZorgAB.Api.Client.requests.individualsidPATCH, Output responseMessage As CONNECTORSPKG.ZorgAB.Api.Client.responses.individualsidPATCH) As %Status
{
	set responseMessage = ##class(CONNECTORSPKG.ZorgAB.Api.Client.responses.individualsidPATCH).%New()
	return ..zzHandleRequest(requestMessage, "individualsidPATCH", "patch", responseMessage)
}

/// Implement operationId : individualsidaddressesPOST
/// post /individuals/{id}/addresses
Method individualsidaddressesPOST(requestMessage As CONNECTORSPKG.ZorgAB.Api.Client.requests.individualsidaddressesPOST, Output responseMessage As CONNECTORSPKG.ZorgAB.Api.Client.responses.individualsidaddressesPOST) As %Status
{
	set responseMessage = ##class(CONNECTORSPKG.ZorgAB.Api.Client.responses.individualsidaddressesPOST).%New()
	return ..zzHandleRequest(requestMessage, "individualsidaddressesPOST", "post", responseMessage)
}

/// Implement operationId : individualsidaddressesindexDELETE
/// delete /individuals/{id}/addresses/{index}
Method individualsidaddressesindexDELETE(requestMessage As CONNECTORSPKG.ZorgAB.Api.Client.requests.individualsidaddressesindexDELETE, Output responseMessage As CONNECTORSPKG.ZorgAB.Api.Client.responses.individualsidaddressesindexDELETE) As %Status
{
	set responseMessage = ##class(CONNECTORSPKG.ZorgAB.Api.Client.responses.individualsidaddressesindexDELETE).%New()
	return ..zzHandleRequest(requestMessage, "individualsidaddressesindexDELETE", "delete", responseMessage)
}

/// Implement operationId : individualsidaddressesindexPATCH
/// patch /individuals/{id}/addresses/{index}
Method individualsidaddressesindexPATCH(requestMessage As CONNECTORSPKG.ZorgAB.Api.Client.requests.individualsidaddressesindexPATCH, Output responseMessage As CONNECTORSPKG.ZorgAB.Api.Client.responses.individualsidaddressesindexPATCH) As %Status
{
	set responseMessage = ##class(CONNECTORSPKG.ZorgAB.Api.Client.responses.individualsidaddressesindexPATCH).%New()
	return ..zzHandleRequest(requestMessage, "individualsidaddressesindexPATCH", "patch", responseMessage)
}

/// Implement operationId : individualsidattachmentsPOST
/// post /individuals/{id}/attachments
Method individualsidattachmentsPOST(requestMessage As CONNECTORSPKG.ZorgAB.Api.Client.requests.individualsidattachmentsPOST, Output responseMessage As CONNECTORSPKG.ZorgAB.Api.Client.responses.individualsidattachmentsPOST) As %Status
{
	set responseMessage = ##class(CONNECTORSPKG.ZorgAB.Api.Client.responses.individualsidattachmentsPOST).%New()
	return ..zzHandleRequest(requestMessage, "individualsidattachmentsPOST", "post", responseMessage)
}

/// Implement operationId : individualsidattachmentsindexDELETE
/// delete /individuals/{id}/attachments/{index}
Method individualsidattachmentsindexDELETE(requestMessage As CONNECTORSPKG.ZorgAB.Api.Client.requests.individualsidattachmentsindexDELETE, Output responseMessage As CONNECTORSPKG.ZorgAB.Api.Client.responses.individualsidattachmentsindexDELETE) As %Status
{
	set responseMessage = ##class(CONNECTORSPKG.ZorgAB.Api.Client.responses.individualsidattachmentsindexDELETE).%New()
	return ..zzHandleRequest(requestMessage, "individualsidattachmentsindexDELETE", "delete", responseMessage)
}

/// Implement operationId : individualsidattachmentsindexPATCH
/// patch /individuals/{id}/attachments/{index}
Method individualsidattachmentsindexPATCH(requestMessage As CONNECTORSPKG.ZorgAB.Api.Client.requests.individualsidattachmentsindexPATCH, Output responseMessage As CONNECTORSPKG.ZorgAB.Api.Client.responses.individualsidattachmentsindexPATCH) As %Status
{
	set responseMessage = ##class(CONNECTORSPKG.ZorgAB.Api.Client.responses.individualsidattachmentsindexPATCH).%New()
	return ..zzHandleRequest(requestMessage, "individualsidattachmentsindexPATCH", "patch", responseMessage)
}

/// Implement operationId : individualsidcredentialsPOST
/// post /individuals/{id}/credentials
Method individualsidcredentialsPOST(requestMessage As CONNECTORSPKG.ZorgAB.Api.Client.requests.individualsidcredentialsPOST, Output responseMessage As CONNECTORSPKG.ZorgAB.Api.Client.responses.individualsidcredentialsPOST) As %Status
{
	set responseMessage = ##class(CONNECTORSPKG.ZorgAB.Api.Client.responses.individualsidcredentialsPOST).%New()
	return ..zzHandleRequest(requestMessage, "individualsidcredentialsPOST", "post", responseMessage)
}

/// Implement operationId : individualsidcredentialsindexDELETE
/// delete /individuals/{id}/credentials/{index}
Method individualsidcredentialsindexDELETE(requestMessage As CONNECTORSPKG.ZorgAB.Api.Client.requests.individualsidcredentialsindexDELETE, Output responseMessage As CONNECTORSPKG.ZorgAB.Api.Client.responses.individualsidcredentialsindexDELETE) As %Status
{
	set responseMessage = ##class(CONNECTORSPKG.ZorgAB.Api.Client.responses.individualsidcredentialsindexDELETE).%New()
	return ..zzHandleRequest(requestMessage, "individualsidcredentialsindexDELETE", "delete", responseMessage)
}

/// Implement operationId : individualsidcredentialsindexPATCH
/// patch /individuals/{id}/credentials/{index}
Method individualsidcredentialsindexPATCH(requestMessage As CONNECTORSPKG.ZorgAB.Api.Client.requests.individualsidcredentialsindexPATCH, Output responseMessage As CONNECTORSPKG.ZorgAB.Api.Client.responses.individualsidcredentialsindexPATCH) As %Status
{
	set responseMessage = ##class(CONNECTORSPKG.ZorgAB.Api.Client.responses.individualsidcredentialsindexPATCH).%New()
	return ..zzHandleRequest(requestMessage, "individualsidcredentialsindexPATCH", "patch", responseMessage)
}

/// Implement operationId : individualsididentificationsPOST
/// post /individuals/{id}/identifications
Method individualsididentificationsPOST(requestMessage As CONNECTORSPKG.ZorgAB.Api.Client.requests.individualsididentificationsPOST, Output responseMessage As CONNECTORSPKG.ZorgAB.Api.Client.responses.individualsididentificationsPOST) As %Status
{
	set responseMessage = ##class(CONNECTORSPKG.ZorgAB.Api.Client.responses.individualsididentificationsPOST).%New()
	return ..zzHandleRequest(requestMessage, "individualsididentificationsPOST", "post", responseMessage)
}

/// Implement operationId : individualsididentificationsindexDELETE
/// delete /individuals/{id}/identifications/{index}
Method individualsididentificationsindexDELETE(requestMessage As CONNECTORSPKG.ZorgAB.Api.Client.requests.individualsididentificationsindexDELETE, Output responseMessage As CONNECTORSPKG.ZorgAB.Api.Client.responses.individualsididentificationsindexDELETE) As %Status
{
	set responseMessage = ##class(CONNECTORSPKG.ZorgAB.Api.Client.responses.individualsididentificationsindexDELETE).%New()
	return ..zzHandleRequest(requestMessage, "individualsididentificationsindexDELETE", "delete", responseMessage)
}

/// Implement operationId : individualsididentificationsindexPATCH
/// patch /individuals/{id}/identifications/{index}
Method individualsididentificationsindexPATCH(requestMessage As CONNECTORSPKG.ZorgAB.Api.Client.requests.individualsididentificationsindexPATCH, Output responseMessage As CONNECTORSPKG.ZorgAB.Api.Client.responses.individualsididentificationsindexPATCH) As %Status
{
	set responseMessage = ##class(CONNECTORSPKG.ZorgAB.Api.Client.responses.individualsididentificationsindexPATCH).%New()
	return ..zzHandleRequest(requestMessage, "individualsididentificationsindexPATCH", "patch", responseMessage)
}

/// Implement operationId : individualsidnamesPOST
/// post /individuals/{id}/names
Method individualsidnamesPOST(requestMessage As CONNECTORSPKG.ZorgAB.Api.Client.requests.individualsidnamesPOST, Output responseMessage As CONNECTORSPKG.ZorgAB.Api.Client.responses.individualsidnamesPOST) As %Status
{
	set responseMessage = ##class(CONNECTORSPKG.ZorgAB.Api.Client.responses.individualsidnamesPOST).%New()
	return ..zzHandleRequest(requestMessage, "individualsidnamesPOST", "post", responseMessage)
}

/// Implement operationId : individualsidnamesindexDELETE
/// delete /individuals/{id}/names/{index}
Method individualsidnamesindexDELETE(requestMessage As CONNECTORSPKG.ZorgAB.Api.Client.requests.individualsidnamesindexDELETE, Output responseMessage As CONNECTORSPKG.ZorgAB.Api.Client.responses.individualsidnamesindexDELETE) As %Status
{
	set responseMessage = ##class(CONNECTORSPKG.ZorgAB.Api.Client.responses.individualsidnamesindexDELETE).%New()
	return ..zzHandleRequest(requestMessage, "individualsidnamesindexDELETE", "delete", responseMessage)
}

/// Implement operationId : individualsidnamesindexPATCH
/// patch /individuals/{id}/names/{index}
Method individualsidnamesindexPATCH(requestMessage As CONNECTORSPKG.ZorgAB.Api.Client.requests.individualsidnamesindexPATCH, Output responseMessage As CONNECTORSPKG.ZorgAB.Api.Client.responses.individualsidnamesindexPATCH) As %Status
{
	set responseMessage = ##class(CONNECTORSPKG.ZorgAB.Api.Client.responses.individualsidnamesindexPATCH).%New()
	return ..zzHandleRequest(requestMessage, "individualsidnamesindexPATCH", "patch", responseMessage)
}

/// Implement operationId : individualsidorganizationsGET
/// get /individuals/{id}/organizations
Method individualsidorganizationsGET(requestMessage As CONNECTORSPKG.ZorgAB.Api.Client.requests.individualsidorganizationsGET, Output responseMessage As CONNECTORSPKG.ZorgAB.Api.Client.responses.individualsidorganizationsGET) As %Status
{
	set responseMessage = ##class(CONNECTORSPKG.ZorgAB.Api.Client.responses.individualsidorganizationsGET).%New()
	return ..zzHandleRequest(requestMessage, "individualsidorganizationsGET", "get", responseMessage)
}

/// Implement operationId : individualsidrelationsGET
/// get /individuals/{id}/relations
Method individualsidrelationsGET(requestMessage As CONNECTORSPKG.ZorgAB.Api.Client.requests.individualsidrelationsGET, Output responseMessage As CONNECTORSPKG.ZorgAB.Api.Client.responses.individualsidrelationsGET) As %Status
{
	set responseMessage = ##class(CONNECTORSPKG.ZorgAB.Api.Client.responses.individualsidrelationsGET).%New()
	return ..zzHandleRequest(requestMessage, "individualsidrelationsGET", "get", responseMessage)
}

/// Implement operationId : individualsidservicesPOST
/// post /individuals/{id}/services
Method individualsidservicesPOST(requestMessage As CONNECTORSPKG.ZorgAB.Api.Client.requests.individualsidservicesPOST, Output responseMessage As CONNECTORSPKG.ZorgAB.Api.Client.responses.individualsidservicesPOST) As %Status
{
	set responseMessage = ##class(CONNECTORSPKG.ZorgAB.Api.Client.responses.individualsidservicesPOST).%New()
	return ..zzHandleRequest(requestMessage, "individualsidservicesPOST", "post", responseMessage)
}

/// Implement operationId : individualsidservicesindexDELETE
/// delete /individuals/{id}/services/{index}
Method individualsidservicesindexDELETE(requestMessage As CONNECTORSPKG.ZorgAB.Api.Client.requests.individualsidservicesindexDELETE, Output responseMessage As CONNECTORSPKG.ZorgAB.Api.Client.responses.individualsidservicesindexDELETE) As %Status
{
	set responseMessage = ##class(CONNECTORSPKG.ZorgAB.Api.Client.responses.individualsidservicesindexDELETE).%New()
	return ..zzHandleRequest(requestMessage, "individualsidservicesindexDELETE", "delete", responseMessage)
}

/// Implement operationId : individualsidservicesindexPATCH
/// patch /individuals/{id}/services/{index}
Method individualsidservicesindexPATCH(requestMessage As CONNECTORSPKG.ZorgAB.Api.Client.requests.individualsidservicesindexPATCH, Output responseMessage As CONNECTORSPKG.ZorgAB.Api.Client.responses.individualsidservicesindexPATCH) As %Status
{
	set responseMessage = ##class(CONNECTORSPKG.ZorgAB.Api.Client.responses.individualsidservicesindexPATCH).%New()
	return ..zzHandleRequest(requestMessage, "individualsidservicesindexPATCH", "patch", responseMessage)
}

/// Implement operationId : individualsidtelecomsPOST
/// post /individuals/{id}/telecoms
Method individualsidtelecomsPOST(requestMessage As CONNECTORSPKG.ZorgAB.Api.Client.requests.individualsidtelecomsPOST, Output responseMessage As CONNECTORSPKG.ZorgAB.Api.Client.responses.individualsidtelecomsPOST) As %Status
{
	set responseMessage = ##class(CONNECTORSPKG.ZorgAB.Api.Client.responses.individualsidtelecomsPOST).%New()
	return ..zzHandleRequest(requestMessage, "individualsidtelecomsPOST", "post", responseMessage)
}

/// Implement operationId : individualsidtelecomsindexDELETE
/// delete /individuals/{id}/telecoms/{index}
Method individualsidtelecomsindexDELETE(requestMessage As CONNECTORSPKG.ZorgAB.Api.Client.requests.individualsidtelecomsindexDELETE, Output responseMessage As CONNECTORSPKG.ZorgAB.Api.Client.responses.individualsidtelecomsindexDELETE) As %Status
{
	set responseMessage = ##class(CONNECTORSPKG.ZorgAB.Api.Client.responses.individualsidtelecomsindexDELETE).%New()
	return ..zzHandleRequest(requestMessage, "individualsidtelecomsindexDELETE", "delete", responseMessage)
}

/// Implement operationId : individualsidtelecomsindexPATCH
/// patch /individuals/{id}/telecoms/{index}
Method individualsidtelecomsindexPATCH(requestMessage As CONNECTORSPKG.ZorgAB.Api.Client.requests.individualsidtelecomsindexPATCH, Output responseMessage As CONNECTORSPKG.ZorgAB.Api.Client.responses.individualsidtelecomsindexPATCH) As %Status
{
	set responseMessage = ##class(CONNECTORSPKG.ZorgAB.Api.Client.responses.individualsidtelecomsindexPATCH).%New()
	return ..zzHandleRequest(requestMessage, "individualsidtelecomsindexPATCH", "patch", responseMessage)
}

/// Implement operationId : individualsidtypesPOST
/// post /individuals/{id}/types
Method individualsidtypesPOST(requestMessage As CONNECTORSPKG.ZorgAB.Api.Client.requests.individualsidtypesPOST, Output responseMessage As CONNECTORSPKG.ZorgAB.Api.Client.responses.individualsidtypesPOST) As %Status
{
	set responseMessage = ##class(CONNECTORSPKG.ZorgAB.Api.Client.responses.individualsidtypesPOST).%New()
	return ..zzHandleRequest(requestMessage, "individualsidtypesPOST", "post", responseMessage)
}

/// Implement operationId : individualsidtypesindexDELETE
/// delete /individuals/{id}/types/{index}
Method individualsidtypesindexDELETE(requestMessage As CONNECTORSPKG.ZorgAB.Api.Client.requests.individualsidtypesindexDELETE, Output responseMessage As CONNECTORSPKG.ZorgAB.Api.Client.responses.individualsidtypesindexDELETE) As %Status
{
	set responseMessage = ##class(CONNECTORSPKG.ZorgAB.Api.Client.responses.individualsidtypesindexDELETE).%New()
	return ..zzHandleRequest(requestMessage, "individualsidtypesindexDELETE", "delete", responseMessage)
}

/// Implement operationId : individualsidtypesindexPATCH
/// patch /individuals/{id}/types/{index}
Method individualsidtypesindexPATCH(requestMessage As CONNECTORSPKG.ZorgAB.Api.Client.requests.individualsidtypesindexPATCH, Output responseMessage As CONNECTORSPKG.ZorgAB.Api.Client.responses.individualsidtypesindexPATCH) As %Status
{
	set responseMessage = ##class(CONNECTORSPKG.ZorgAB.Api.Client.responses.individualsidtypesindexPATCH).%New()
	return ..zzHandleRequest(requestMessage, "individualsidtypesindexPATCH", "patch", responseMessage)
}

/// Implement operationId : lspOrganizationsGET
/// get /lspOrganizations
Method lspOrganizationsGET(requestMessage As CONNECTORSPKG.ZorgAB.Api.Client.requests.lspOrganizationsGET, Output responseMessage As CONNECTORSPKG.ZorgAB.Api.Client.responses.lspOrganizationsGET) As %Status
{
	set responseMessage = ##class(CONNECTORSPKG.ZorgAB.Api.Client.responses.lspOrganizationsGET).%New()
	return ..zzHandleRequest(requestMessage, "lspOrganizationsGET", "get", responseMessage)
}

/// Implement operationId : organizationsGET
/// get /organizations
Method organizationsGET(requestMessage As CONNECTORSPKG.ZorgAB.Api.Client.requests.organizationsGET, Output responseMessage As CONNECTORSPKG.ZorgAB.Api.Client.responses.organizationsGET) As %Status
{
	set responseMessage = ##class(CONNECTORSPKG.ZorgAB.Api.Client.responses.organizationsGET).%New()
	return ..zzHandleRequest(requestMessage, "organizationsGET", "get", responseMessage)
}

/// Implement operationId : organizationsPOST
/// post /organizations
Method organizationsPOST(requestMessage As CONNECTORSPKG.ZorgAB.Api.Client.requests.organizationsPOST, Output responseMessage As CONNECTORSPKG.ZorgAB.Api.Client.responses.organizationsPOST) As %Status
{
	set responseMessage = ##class(CONNECTORSPKG.ZorgAB.Api.Client.responses.organizationsPOST).%New()
	return ..zzHandleRequest(requestMessage, "organizationsPOST", "post", responseMessage)
}

/// Implement operationId : organizationsidDELETE
/// delete /organizations/{id}
Method organizationsidDELETE(requestMessage As CONNECTORSPKG.ZorgAB.Api.Client.requests.organizationsidDELETE, Output responseMessage As CONNECTORSPKG.ZorgAB.Api.Client.responses.organizationsidDELETE) As %Status
{
	set responseMessage = ##class(CONNECTORSPKG.ZorgAB.Api.Client.responses.organizationsidDELETE).%New()
	return ..zzHandleRequest(requestMessage, "organizationsidDELETE", "delete", responseMessage)
}

/// Implement operationId : organizationsidGET
/// get /organizations/{id}
Method organizationsidGET(requestMessage As CONNECTORSPKG.ZorgAB.Api.Client.requests.organizationsidGET, Output responseMessage As CONNECTORSPKG.ZorgAB.Api.Client.responses.organizationsidGET) As %Status
{
	set responseMessage = ##class(CONNECTORSPKG.ZorgAB.Api.Client.responses.organizationsidGET).%New()
	return ..zzHandleRequest(requestMessage, "organizationsidGET", "get", responseMessage)
}

/// Implement operationId : organizationsidPATCH
/// patch /organizations/{id}
Method organizationsidPATCH(requestMessage As CONNECTORSPKG.ZorgAB.Api.Client.requests.organizationsidPATCH, Output responseMessage As CONNECTORSPKG.ZorgAB.Api.Client.responses.organizationsidPATCH) As %Status
{
	set responseMessage = ##class(CONNECTORSPKG.ZorgAB.Api.Client.responses.organizationsidPATCH).%New()
	return ..zzHandleRequest(requestMessage, "organizationsidPATCH", "patch", responseMessage)
}

/// Implement operationId : organizationsidaddressesPOST
/// post /organizations/{id}/addresses
Method organizationsidaddressesPOST(requestMessage As CONNECTORSPKG.ZorgAB.Api.Client.requests.organizationsidaddressesPOST, Output responseMessage As CONNECTORSPKG.ZorgAB.Api.Client.responses.organizationsidaddressesPOST) As %Status
{
	set responseMessage = ##class(CONNECTORSPKG.ZorgAB.Api.Client.responses.organizationsidaddressesPOST).%New()
	return ..zzHandleRequest(requestMessage, "organizationsidaddressesPOST", "post", responseMessage)
}

/// Implement operationId : organizationsidaddressesindexDELETE
/// delete /organizations/{id}/addresses/{index}
Method organizationsidaddressesindexDELETE(requestMessage As CONNECTORSPKG.ZorgAB.Api.Client.requests.organizationsidaddressesindexDELETE, Output responseMessage As CONNECTORSPKG.ZorgAB.Api.Client.responses.organizationsidaddressesindexDELETE) As %Status
{
	set responseMessage = ##class(CONNECTORSPKG.ZorgAB.Api.Client.responses.organizationsidaddressesindexDELETE).%New()
	return ..zzHandleRequest(requestMessage, "organizationsidaddressesindexDELETE", "delete", responseMessage)
}

/// Implement operationId : organizationsidaddressesindexPATCH
/// patch /organizations/{id}/addresses/{index}
Method organizationsidaddressesindexPATCH(requestMessage As CONNECTORSPKG.ZorgAB.Api.Client.requests.organizationsidaddressesindexPATCH, Output responseMessage As CONNECTORSPKG.ZorgAB.Api.Client.responses.organizationsidaddressesindexPATCH) As %Status
{
	set responseMessage = ##class(CONNECTORSPKG.ZorgAB.Api.Client.responses.organizationsidaddressesindexPATCH).%New()
	return ..zzHandleRequest(requestMessage, "organizationsidaddressesindexPATCH", "patch", responseMessage)
}

/// Implement operationId : organizationsidattachmentsPOST
/// post /organizations/{id}/attachments
Method organizationsidattachmentsPOST(requestMessage As CONNECTORSPKG.ZorgAB.Api.Client.requests.organizationsidattachmentsPOST, Output responseMessage As CONNECTORSPKG.ZorgAB.Api.Client.responses.organizationsidattachmentsPOST) As %Status
{
	set responseMessage = ##class(CONNECTORSPKG.ZorgAB.Api.Client.responses.organizationsidattachmentsPOST).%New()
	return ..zzHandleRequest(requestMessage, "organizationsidattachmentsPOST", "post", responseMessage)
}

/// Implement operationId : organizationsidattachmentsindexDELETE
/// delete /organizations/{id}/attachments/{index}
Method organizationsidattachmentsindexDELETE(requestMessage As CONNECTORSPKG.ZorgAB.Api.Client.requests.organizationsidattachmentsindexDELETE, Output responseMessage As CONNECTORSPKG.ZorgAB.Api.Client.responses.organizationsidattachmentsindexDELETE) As %Status
{
	set responseMessage = ##class(CONNECTORSPKG.ZorgAB.Api.Client.responses.organizationsidattachmentsindexDELETE).%New()
	return ..zzHandleRequest(requestMessage, "organizationsidattachmentsindexDELETE", "delete", responseMessage)
}

/// Implement operationId : organizationsidattachmentsindexPATCH
/// patch /organizations/{id}/attachments/{index}
Method organizationsidattachmentsindexPATCH(requestMessage As CONNECTORSPKG.ZorgAB.Api.Client.requests.organizationsidattachmentsindexPATCH, Output responseMessage As CONNECTORSPKG.ZorgAB.Api.Client.responses.organizationsidattachmentsindexPATCH) As %Status
{
	set responseMessage = ##class(CONNECTORSPKG.ZorgAB.Api.Client.responses.organizationsidattachmentsindexPATCH).%New()
	return ..zzHandleRequest(requestMessage, "organizationsidattachmentsindexPATCH", "patch", responseMessage)
}

/// Implement operationId : organizationsidcredentialsPOST
/// post /organizations/{id}/credentials
Method organizationsidcredentialsPOST(requestMessage As CONNECTORSPKG.ZorgAB.Api.Client.requests.organizationsidcredentialsPOST, Output responseMessage As CONNECTORSPKG.ZorgAB.Api.Client.responses.organizationsidcredentialsPOST) As %Status
{
	set responseMessage = ##class(CONNECTORSPKG.ZorgAB.Api.Client.responses.organizationsidcredentialsPOST).%New()
	return ..zzHandleRequest(requestMessage, "organizationsidcredentialsPOST", "post", responseMessage)
}

/// Implement operationId : organizationsidcredentialsindexDELETE
/// delete /organizations/{id}/credentials/{index}
Method organizationsidcredentialsindexDELETE(requestMessage As CONNECTORSPKG.ZorgAB.Api.Client.requests.organizationsidcredentialsindexDELETE, Output responseMessage As CONNECTORSPKG.ZorgAB.Api.Client.responses.organizationsidcredentialsindexDELETE) As %Status
{
	set responseMessage = ##class(CONNECTORSPKG.ZorgAB.Api.Client.responses.organizationsidcredentialsindexDELETE).%New()
	return ..zzHandleRequest(requestMessage, "organizationsidcredentialsindexDELETE", "delete", responseMessage)
}

/// Implement operationId : organizationsidcredentialsindexPATCH
/// patch /organizations/{id}/credentials/{index}
Method organizationsidcredentialsindexPATCH(requestMessage As CONNECTORSPKG.ZorgAB.Api.Client.requests.organizationsidcredentialsindexPATCH, Output responseMessage As CONNECTORSPKG.ZorgAB.Api.Client.responses.organizationsidcredentialsindexPATCH) As %Status
{
	set responseMessage = ##class(CONNECTORSPKG.ZorgAB.Api.Client.responses.organizationsidcredentialsindexPATCH).%New()
	return ..zzHandleRequest(requestMessage, "organizationsidcredentialsindexPATCH", "patch", responseMessage)
}

/// Implement operationId : organizationsididentificationsPOST
/// post /organizations/{id}/identifications
Method organizationsididentificationsPOST(requestMessage As CONNECTORSPKG.ZorgAB.Api.Client.requests.organizationsididentificationsPOST, Output responseMessage As CONNECTORSPKG.ZorgAB.Api.Client.responses.organizationsididentificationsPOST) As %Status
{
	set responseMessage = ##class(CONNECTORSPKG.ZorgAB.Api.Client.responses.organizationsididentificationsPOST).%New()
	return ..zzHandleRequest(requestMessage, "organizationsididentificationsPOST", "post", responseMessage)
}

/// Implement operationId : organizationsididentificationsindexDELETE
/// delete /organizations/{id}/identifications/{index}
Method organizationsididentificationsindexDELETE(requestMessage As CONNECTORSPKG.ZorgAB.Api.Client.requests.organizationsididentificationsindexDELETE, Output responseMessage As CONNECTORSPKG.ZorgAB.Api.Client.responses.organizationsididentificationsindexDELETE) As %Status
{
	set responseMessage = ##class(CONNECTORSPKG.ZorgAB.Api.Client.responses.organizationsididentificationsindexDELETE).%New()
	return ..zzHandleRequest(requestMessage, "organizationsididentificationsindexDELETE", "delete", responseMessage)
}

/// Implement operationId : organizationsididentificationsindexPATCH
/// patch /organizations/{id}/identifications/{index}
Method organizationsididentificationsindexPATCH(requestMessage As CONNECTORSPKG.ZorgAB.Api.Client.requests.organizationsididentificationsindexPATCH, Output responseMessage As CONNECTORSPKG.ZorgAB.Api.Client.responses.organizationsididentificationsindexPATCH) As %Status
{
	set responseMessage = ##class(CONNECTORSPKG.ZorgAB.Api.Client.responses.organizationsididentificationsindexPATCH).%New()
	return ..zzHandleRequest(requestMessage, "organizationsididentificationsindexPATCH", "patch", responseMessage)
}

/// Implement operationId : organizationsidindividualsGET
/// get /organizations/{id}/individuals
Method organizationsidindividualsGET(requestMessage As CONNECTORSPKG.ZorgAB.Api.Client.requests.organizationsidindividualsGET, Output responseMessage As CONNECTORSPKG.ZorgAB.Api.Client.responses.organizationsidindividualsGET) As %Status
{
	set responseMessage = ##class(CONNECTORSPKG.ZorgAB.Api.Client.responses.organizationsidindividualsGET).%New()
	return ..zzHandleRequest(requestMessage, "organizationsidindividualsGET", "get", responseMessage)
}

/// Implement operationId : organizationsidmainOrganizationGET
/// get /organizations/{id}/mainOrganization
Method organizationsidmainOrganizationGET(requestMessage As CONNECTORSPKG.ZorgAB.Api.Client.requests.organizationsidmainOrganizationGET, Output responseMessage As CONNECTORSPKG.ZorgAB.Api.Client.responses.organizationsidmainOrganizationGET) As %Status
{
	set responseMessage = ##class(CONNECTORSPKG.ZorgAB.Api.Client.responses.organizationsidmainOrganizationGET).%New()
	return ..zzHandleRequest(requestMessage, "organizationsidmainOrganizationGET", "get", responseMessage)
}

/// Implement operationId : organizationsidnamesPOST
/// post /organizations/{id}/names
Method organizationsidnamesPOST(requestMessage As CONNECTORSPKG.ZorgAB.Api.Client.requests.organizationsidnamesPOST, Output responseMessage As CONNECTORSPKG.ZorgAB.Api.Client.responses.organizationsidnamesPOST) As %Status
{
	set responseMessage = ##class(CONNECTORSPKG.ZorgAB.Api.Client.responses.organizationsidnamesPOST).%New()
	return ..zzHandleRequest(requestMessage, "organizationsidnamesPOST", "post", responseMessage)
}

/// Implement operationId : organizationsidnamesindexDELETE
/// delete /organizations/{id}/names/{index}
Method organizationsidnamesindexDELETE(requestMessage As CONNECTORSPKG.ZorgAB.Api.Client.requests.organizationsidnamesindexDELETE, Output responseMessage As CONNECTORSPKG.ZorgAB.Api.Client.responses.organizationsidnamesindexDELETE) As %Status
{
	set responseMessage = ##class(CONNECTORSPKG.ZorgAB.Api.Client.responses.organizationsidnamesindexDELETE).%New()
	return ..zzHandleRequest(requestMessage, "organizationsidnamesindexDELETE", "delete", responseMessage)
}

/// Implement operationId : organizationsidnamesindexPATCH
/// patch /organizations/{id}/names/{index}
Method organizationsidnamesindexPATCH(requestMessage As CONNECTORSPKG.ZorgAB.Api.Client.requests.organizationsidnamesindexPATCH, Output responseMessage As CONNECTORSPKG.ZorgAB.Api.Client.responses.organizationsidnamesindexPATCH) As %Status
{
	set responseMessage = ##class(CONNECTORSPKG.ZorgAB.Api.Client.responses.organizationsidnamesindexPATCH).%New()
	return ..zzHandleRequest(requestMessage, "organizationsidnamesindexPATCH", "patch", responseMessage)
}

/// Implement operationId : organizationsidrelationsGET
/// get /organizations/{id}/relations
Method organizationsidrelationsGET(requestMessage As CONNECTORSPKG.ZorgAB.Api.Client.requests.organizationsidrelationsGET, Output responseMessage As CONNECTORSPKG.ZorgAB.Api.Client.responses.organizationsidrelationsGET) As %Status
{
	set responseMessage = ##class(CONNECTORSPKG.ZorgAB.Api.Client.responses.organizationsidrelationsGET).%New()
	return ..zzHandleRequest(requestMessage, "organizationsidrelationsGET", "get", responseMessage)
}

/// Implement operationId : organizationsidservicesPOST
/// post /organizations/{id}/services
Method organizationsidservicesPOST(requestMessage As CONNECTORSPKG.ZorgAB.Api.Client.requests.organizationsidservicesPOST, Output responseMessage As CONNECTORSPKG.ZorgAB.Api.Client.responses.organizationsidservicesPOST) As %Status
{
	set responseMessage = ##class(CONNECTORSPKG.ZorgAB.Api.Client.responses.organizationsidservicesPOST).%New()
	return ..zzHandleRequest(requestMessage, "organizationsidservicesPOST", "post", responseMessage)
}

/// Implement operationId : organizationsidservicesindexDELETE
/// delete /organizations/{id}/services/{index}
Method organizationsidservicesindexDELETE(requestMessage As CONNECTORSPKG.ZorgAB.Api.Client.requests.organizationsidservicesindexDELETE, Output responseMessage As CONNECTORSPKG.ZorgAB.Api.Client.responses.organizationsidservicesindexDELETE) As %Status
{
	set responseMessage = ##class(CONNECTORSPKG.ZorgAB.Api.Client.responses.organizationsidservicesindexDELETE).%New()
	return ..zzHandleRequest(requestMessage, "organizationsidservicesindexDELETE", "delete", responseMessage)
}

/// Implement operationId : organizationsidservicesindexPATCH
/// patch /organizations/{id}/services/{index}
Method organizationsidservicesindexPATCH(requestMessage As CONNECTORSPKG.ZorgAB.Api.Client.requests.organizationsidservicesindexPATCH, Output responseMessage As CONNECTORSPKG.ZorgAB.Api.Client.responses.organizationsidservicesindexPATCH) As %Status
{
	set responseMessage = ##class(CONNECTORSPKG.ZorgAB.Api.Client.responses.organizationsidservicesindexPATCH).%New()
	return ..zzHandleRequest(requestMessage, "organizationsidservicesindexPATCH", "patch", responseMessage)
}

/// Implement operationId : organizationsidsubOrganizationsGET
/// get /organizations/{id}/subOrganizations
Method organizationsidsubOrganizationsGET(requestMessage As CONNECTORSPKG.ZorgAB.Api.Client.requests.organizationsidsubOrganizationsGET, Output responseMessage As CONNECTORSPKG.ZorgAB.Api.Client.responses.organizationsidsubOrganizationsGET) As %Status
{
	set responseMessage = ##class(CONNECTORSPKG.ZorgAB.Api.Client.responses.organizationsidsubOrganizationsGET).%New()
	return ..zzHandleRequest(requestMessage, "organizationsidsubOrganizationsGET", "get", responseMessage)
}

/// Implement operationId : organizationsidsummaryGET
/// get /organizations/{id}/_summary
Method organizationsidsummaryGET(requestMessage As CONNECTORSPKG.ZorgAB.Api.Client.requests.organizationsidsummaryGET, Output responseMessage As CONNECTORSPKG.ZorgAB.Api.Client.responses.organizationsidsummaryGET) As %Status
{
	set responseMessage = ##class(CONNECTORSPKG.ZorgAB.Api.Client.responses.organizationsidsummaryGET).%New()
	return ..zzHandleRequest(requestMessage, "organizationsidsummaryGET", "get", responseMessage)
}

/// Implement operationId : organizationsidtelecomsPOST
/// post /organizations/{id}/telecoms
Method organizationsidtelecomsPOST(requestMessage As CONNECTORSPKG.ZorgAB.Api.Client.requests.organizationsidtelecomsPOST, Output responseMessage As CONNECTORSPKG.ZorgAB.Api.Client.responses.organizationsidtelecomsPOST) As %Status
{
	set responseMessage = ##class(CONNECTORSPKG.ZorgAB.Api.Client.responses.organizationsidtelecomsPOST).%New()
	return ..zzHandleRequest(requestMessage, "organizationsidtelecomsPOST", "post", responseMessage)
}

/// Implement operationId : organizationsidtelecomsindexDELETE
/// delete /organizations/{id}/telecoms/{index}
Method organizationsidtelecomsindexDELETE(requestMessage As CONNECTORSPKG.ZorgAB.Api.Client.requests.organizationsidtelecomsindexDELETE, Output responseMessage As CONNECTORSPKG.ZorgAB.Api.Client.responses.organizationsidtelecomsindexDELETE) As %Status
{
	set responseMessage = ##class(CONNECTORSPKG.ZorgAB.Api.Client.responses.organizationsidtelecomsindexDELETE).%New()
	return ..zzHandleRequest(requestMessage, "organizationsidtelecomsindexDELETE", "delete", responseMessage)
}

/// Implement operationId : organizationsidtelecomsindexPATCH
/// patch /organizations/{id}/telecoms/{index}
Method organizationsidtelecomsindexPATCH(requestMessage As CONNECTORSPKG.ZorgAB.Api.Client.requests.organizationsidtelecomsindexPATCH, Output responseMessage As CONNECTORSPKG.ZorgAB.Api.Client.responses.organizationsidtelecomsindexPATCH) As %Status
{
	set responseMessage = ##class(CONNECTORSPKG.ZorgAB.Api.Client.responses.organizationsidtelecomsindexPATCH).%New()
	return ..zzHandleRequest(requestMessage, "organizationsidtelecomsindexPATCH", "patch", responseMessage)
}

/// Implement operationId : organizationsidtypesPOST
/// post /organizations/{id}/types
Method organizationsidtypesPOST(requestMessage As CONNECTORSPKG.ZorgAB.Api.Client.requests.organizationsidtypesPOST, Output responseMessage As CONNECTORSPKG.ZorgAB.Api.Client.responses.organizationsidtypesPOST) As %Status
{
	set responseMessage = ##class(CONNECTORSPKG.ZorgAB.Api.Client.responses.organizationsidtypesPOST).%New()
	return ..zzHandleRequest(requestMessage, "organizationsidtypesPOST", "post", responseMessage)
}

/// Implement operationId : organizationsidtypesindexDELETE
/// delete /organizations/{id}/types/{index}
Method organizationsidtypesindexDELETE(requestMessage As CONNECTORSPKG.ZorgAB.Api.Client.requests.organizationsidtypesindexDELETE, Output responseMessage As CONNECTORSPKG.ZorgAB.Api.Client.responses.organizationsidtypesindexDELETE) As %Status
{
	set responseMessage = ##class(CONNECTORSPKG.ZorgAB.Api.Client.responses.organizationsidtypesindexDELETE).%New()
	return ..zzHandleRequest(requestMessage, "organizationsidtypesindexDELETE", "delete", responseMessage)
}

/// Implement operationId : organizationsidtypesindexPATCH
/// patch /organizations/{id}/types/{index}
Method organizationsidtypesindexPATCH(requestMessage As CONNECTORSPKG.ZorgAB.Api.Client.requests.organizationsidtypesindexPATCH, Output responseMessage As CONNECTORSPKG.ZorgAB.Api.Client.responses.organizationsidtypesindexPATCH) As %Status
{
	set responseMessage = ##class(CONNECTORSPKG.ZorgAB.Api.Client.responses.organizationsidtypesindexPATCH).%New()
	return ..zzHandleRequest(requestMessage, "organizationsidtypesindexPATCH", "patch", responseMessage)
}

/// Implement operationId : organizationssummaryGET
/// get /organizations/_summary
Method organizationssummaryGET(requestMessage As CONNECTORSPKG.ZorgAB.Api.Client.requests.organizationssummaryGET, Output responseMessage As CONNECTORSPKG.ZorgAB.Api.Client.responses.organizationssummaryGET) As %Status
{
	set responseMessage = ##class(CONNECTORSPKG.ZorgAB.Api.Client.responses.organizationssummaryGET).%New()
	return ..zzHandleRequest(requestMessage, "organizationssummaryGET", "get", responseMessage)
}

/// Implement operationId : subOrganizationDELETE
/// delete /subOrganization
Method subOrganizationDELETE(requestMessage As CONNECTORSPKG.ZorgAB.Api.Client.requests.subOrganizationDELETE, Output responseMessage As CONNECTORSPKG.ZorgAB.Api.Client.responses.subOrganizationDELETE) As %Status
{
	set responseMessage = ##class(CONNECTORSPKG.ZorgAB.Api.Client.responses.subOrganizationDELETE).%New()
	return ..zzHandleRequest(requestMessage, "subOrganizationDELETE", "delete", responseMessage)
}

/// Implement operationId : subOrganizationPATCH
/// patch /subOrganization
Method subOrganizationPATCH(requestMessage As CONNECTORSPKG.ZorgAB.Api.Client.requests.subOrganizationPATCH, Output responseMessage As CONNECTORSPKG.ZorgAB.Api.Client.responses.subOrganizationPATCH) As %Status
{
	set responseMessage = ##class(CONNECTORSPKG.ZorgAB.Api.Client.responses.subOrganizationPATCH).%New()
	return ..zzHandleRequest(requestMessage, "subOrganizationPATCH", "patch", responseMessage)
}

/// Implement operationId : subOrganizationPOST
/// post /subOrganization
Method subOrganizationPOST(requestMessage As CONNECTORSPKG.ZorgAB.Api.Client.requests.subOrganizationPOST, Output responseMessage As CONNECTORSPKG.ZorgAB.Api.Client.responses.subOrganizationPOST) As %Status
{
	set responseMessage = ##class(CONNECTORSPKG.ZorgAB.Api.Client.responses.subOrganizationPOST).%New()
	return ..zzHandleRequest(requestMessage, "subOrganizationPOST", "post", responseMessage)
}

/// Implement operationId : subOrganizationidDELETE
/// delete /subOrganization/{id}
Method subOrganizationidDELETE(requestMessage As CONNECTORSPKG.ZorgAB.Api.Client.requests.subOrganizationidDELETE, Output responseMessage As CONNECTORSPKG.ZorgAB.Api.Client.responses.subOrganizationidDELETE) As %Status
{
	set responseMessage = ##class(CONNECTORSPKG.ZorgAB.Api.Client.responses.subOrganizationidDELETE).%New()
	return ..zzHandleRequest(requestMessage, "subOrganizationidDELETE", "delete", responseMessage)
}

/// Implement operationId : subOrganizationidGET
/// get /subOrganization/{id}
Method subOrganizationidGET(requestMessage As CONNECTORSPKG.ZorgAB.Api.Client.requests.subOrganizationidGET, Output responseMessage As CONNECTORSPKG.ZorgAB.Api.Client.responses.subOrganizationidGET) As %Status
{
	set responseMessage = ##class(CONNECTORSPKG.ZorgAB.Api.Client.responses.subOrganizationidGET).%New()
	return ..zzHandleRequest(requestMessage, "subOrganizationidGET", "get", responseMessage)
}

/// Implement operationId : subOrganizationidPATCH
/// patch /subOrganization/{id}
Method subOrganizationidPATCH(requestMessage As CONNECTORSPKG.ZorgAB.Api.Client.requests.subOrganizationidPATCH, Output responseMessage As CONNECTORSPKG.ZorgAB.Api.Client.responses.subOrganizationidPATCH) As %Status
{
	set responseMessage = ##class(CONNECTORSPKG.ZorgAB.Api.Client.responses.subOrganizationidPATCH).%New()
	return ..zzHandleRequest(requestMessage, "subOrganizationidPATCH", "patch", responseMessage)
}

/// Implement operationId : urauraNumberGET
/// get /ura/{uraNumber}
Method urauraNumberGET(requestMessage As CONNECTORSPKG.ZorgAB.Api.Client.requests.urauraNumberGET, Output responseMessage As CONNECTORSPKG.ZorgAB.Api.Client.responses.urauraNumberGET) As %Status
{
	set responseMessage = ##class(CONNECTORSPKG.ZorgAB.Api.Client.responses.urauraNumberGET).%New()
	return ..zzHandleRequest(requestMessage, "urauraNumberGET", "get", responseMessage)
}

/// Implement operationId : uziuziNumberGET
/// get /uzi/{uziNumber}
Method uziuziNumberGET(requestMessage As CONNECTORSPKG.ZorgAB.Api.Client.requests.uziuziNumberGET, Output responseMessage As CONNECTORSPKG.ZorgAB.Api.Client.responses.uziuziNumberGET) As %Status
{
	set responseMessage = ##class(CONNECTORSPKG.ZorgAB.Api.Client.responses.uziuziNumberGET).%New()
	return ..zzHandleRequest(requestMessage, "uziuziNumberGET", "get", responseMessage)
}

/// Implement operationId : worksAtDELETE
/// delete /worksAt
Method worksAtDELETE(requestMessage As CONNECTORSPKG.ZorgAB.Api.Client.requests.worksAtDELETE, Output responseMessage As CONNECTORSPKG.ZorgAB.Api.Client.responses.worksAtDELETE) As %Status
{
	set responseMessage = ##class(CONNECTORSPKG.ZorgAB.Api.Client.responses.worksAtDELETE).%New()
	return ..zzHandleRequest(requestMessage, "worksAtDELETE", "delete", responseMessage)
}

/// Implement operationId : worksAtPATCH
/// patch /worksAt
Method worksAtPATCH(requestMessage As CONNECTORSPKG.ZorgAB.Api.Client.requests.worksAtPATCH, Output responseMessage As CONNECTORSPKG.ZorgAB.Api.Client.responses.worksAtPATCH) As %Status
{
	set responseMessage = ##class(CONNECTORSPKG.ZorgAB.Api.Client.responses.worksAtPATCH).%New()
	return ..zzHandleRequest(requestMessage, "worksAtPATCH", "patch", responseMessage)
}

/// Implement operationId : worksAtPOST
/// post /worksAt
Method worksAtPOST(requestMessage As CONNECTORSPKG.ZorgAB.Api.Client.requests.worksAtPOST, Output responseMessage As CONNECTORSPKG.ZorgAB.Api.Client.responses.worksAtPOST) As %Status
{
	set responseMessage = ##class(CONNECTORSPKG.ZorgAB.Api.Client.responses.worksAtPOST).%New()
	return ..zzHandleRequest(requestMessage, "worksAtPOST", "post", responseMessage)
}

/// Implement operationId : worksAtidDELETE
/// delete /worksAt/{id}
Method worksAtidDELETE(requestMessage As CONNECTORSPKG.ZorgAB.Api.Client.requests.worksAtidDELETE, Output responseMessage As CONNECTORSPKG.ZorgAB.Api.Client.responses.worksAtidDELETE) As %Status
{
	set responseMessage = ##class(CONNECTORSPKG.ZorgAB.Api.Client.responses.worksAtidDELETE).%New()
	return ..zzHandleRequest(requestMessage, "worksAtidDELETE", "delete", responseMessage)
}

/// Implement operationId : worksAtidGET
/// get /worksAt/{id}
Method worksAtidGET(requestMessage As CONNECTORSPKG.ZorgAB.Api.Client.requests.worksAtidGET, Output responseMessage As CONNECTORSPKG.ZorgAB.Api.Client.responses.worksAtidGET) As %Status
{
	set responseMessage = ##class(CONNECTORSPKG.ZorgAB.Api.Client.responses.worksAtidGET).%New()
	return ..zzHandleRequest(requestMessage, "worksAtidGET", "get", responseMessage)
}

/// Implement operationId : worksAtidPATCH
/// patch /worksAt/{id}
Method worksAtidPATCH(requestMessage As CONNECTORSPKG.ZorgAB.Api.Client.requests.worksAtidPATCH, Output responseMessage As CONNECTORSPKG.ZorgAB.Api.Client.responses.worksAtidPATCH) As %Status
{
	set responseMessage = ##class(CONNECTORSPKG.ZorgAB.Api.Client.responses.worksAtidPATCH).%New()
	return ..zzHandleRequest(requestMessage, "worksAtidPATCH", "patch", responseMessage)
}

/// Common request handler
Method zzHandleRequest(requestMessage As Ens.Request, name As %String, method As %String, responseMessage As CONNECTORSPKG.ZorgAB.Api.Client.responses.GenericResponse) As %Status
{
	set sc = $$$OK, pHttpRequestIn = ##class(%Net.HttpRequest).%New()
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(pHttpRequestIn))
	set sc = ..Adapter.SendFormDataArray(.pHttpResponse, method, pHttpRequestIn, , , ..Adapter.URL _ requestMessage.%URL)

	if $$$ISERR(sc) && ($SYSTEM.Status.GetErrorCodes(sc) '= $$$EnsErrHTTPStatus) {
		return sc
	}

	if $ISOBJECT(pHttpResponse) {
		$$$TRACE(name _" returned " _ pHttpResponse.StatusCode)
		$$$QuitOnError(responseMessage.LoadFromResponse(pHttpResponse, name))
	}

	return sc
}

XData MessageMap
{
<MapItems>
	<MapItem MessageType="CONNECTORSPKG.ZorgAB.Api.Client.requests.agbagbCodeGET">
		<Method>agbagbCodeGET</Method>
	</MapItem>
	<MapItem MessageType="CONNECTORSPKG.ZorgAB.Api.Client.requests.applicationIdapplicationIdGET">
		<Method>applicationIdapplicationIdGET</Method>
	</MapItem>
	<MapItem MessageType="CONNECTORSPKG.ZorgAB.Api.Client.requests.applicationIdv2applicationIdGET">
		<Method>applicationIdv2applicationIdGET</Method>
	</MapItem>
	<MapItem MessageType="CONNECTORSPKG.ZorgAB.Api.Client.requests.applicationsapplicationIdGET">
		<Method>applicationsapplicationIdGET</Method>
	</MapItem>
	<MapItem MessageType="CONNECTORSPKG.ZorgAB.Api.Client.requests.carePartiesGET">
		<Method>carePartiesGET</Method>
	</MapItem>
	<MapItem MessageType="CONNECTORSPKG.ZorgAB.Api.Client.requests.identificationsidGET">
		<Method>identificationsidGET</Method>
	</MapItem>
	<MapItem MessageType="CONNECTORSPKG.ZorgAB.Api.Client.requests.individualsGET">
		<Method>individualsGET</Method>
	</MapItem>
	<MapItem MessageType="CONNECTORSPKG.ZorgAB.Api.Client.requests.individualsPOST">
		<Method>individualsPOST</Method>
	</MapItem>
	<MapItem MessageType="CONNECTORSPKG.ZorgAB.Api.Client.requests.individualsidDELETE">
		<Method>individualsidDELETE</Method>
	</MapItem>
	<MapItem MessageType="CONNECTORSPKG.ZorgAB.Api.Client.requests.individualsidGET">
		<Method>individualsidGET</Method>
	</MapItem>
	<MapItem MessageType="CONNECTORSPKG.ZorgAB.Api.Client.requests.individualsidPATCH">
		<Method>individualsidPATCH</Method>
	</MapItem>
	<MapItem MessageType="CONNECTORSPKG.ZorgAB.Api.Client.requests.individualsidaddressesPOST">
		<Method>individualsidaddressesPOST</Method>
	</MapItem>
	<MapItem MessageType="CONNECTORSPKG.ZorgAB.Api.Client.requests.individualsidaddressesindexDELETE">
		<Method>individualsidaddressesindexDELETE</Method>
	</MapItem>
	<MapItem MessageType="CONNECTORSPKG.ZorgAB.Api.Client.requests.individualsidaddressesindexPATCH">
		<Method>individualsidaddressesindexPATCH</Method>
	</MapItem>
	<MapItem MessageType="CONNECTORSPKG.ZorgAB.Api.Client.requests.individualsidattachmentsPOST">
		<Method>individualsidattachmentsPOST</Method>
	</MapItem>
	<MapItem MessageType="CONNECTORSPKG.ZorgAB.Api.Client.requests.individualsidattachmentsindexDELETE">
		<Method>individualsidattachmentsindexDELETE</Method>
	</MapItem>
	<MapItem MessageType="CONNECTORSPKG.ZorgAB.Api.Client.requests.individualsidattachmentsindexPATCH">
		<Method>individualsidattachmentsindexPATCH</Method>
	</MapItem>
	<MapItem MessageType="CONNECTORSPKG.ZorgAB.Api.Client.requests.individualsidcredentialsPOST">
		<Method>individualsidcredentialsPOST</Method>
	</MapItem>
	<MapItem MessageType="CONNECTORSPKG.ZorgAB.Api.Client.requests.individualsidcredentialsindexDELETE">
		<Method>individualsidcredentialsindexDELETE</Method>
	</MapItem>
	<MapItem MessageType="CONNECTORSPKG.ZorgAB.Api.Client.requests.individualsidcredentialsindexPATCH">
		<Method>individualsidcredentialsindexPATCH</Method>
	</MapItem>
	<MapItem MessageType="CONNECTORSPKG.ZorgAB.Api.Client.requests.individualsididentificationsPOST">
		<Method>individualsididentificationsPOST</Method>
	</MapItem>
	<MapItem MessageType="CONNECTORSPKG.ZorgAB.Api.Client.requests.individualsididentificationsindexDELETE">
		<Method>individualsididentificationsindexDELETE</Method>
	</MapItem>
	<MapItem MessageType="CONNECTORSPKG.ZorgAB.Api.Client.requests.individualsididentificationsindexPATCH">
		<Method>individualsididentificationsindexPATCH</Method>
	</MapItem>
	<MapItem MessageType="CONNECTORSPKG.ZorgAB.Api.Client.requests.individualsidnamesPOST">
		<Method>individualsidnamesPOST</Method>
	</MapItem>
	<MapItem MessageType="CONNECTORSPKG.ZorgAB.Api.Client.requests.individualsidnamesindexDELETE">
		<Method>individualsidnamesindexDELETE</Method>
	</MapItem>
	<MapItem MessageType="CONNECTORSPKG.ZorgAB.Api.Client.requests.individualsidnamesindexPATCH">
		<Method>individualsidnamesindexPATCH</Method>
	</MapItem>
	<MapItem MessageType="CONNECTORSPKG.ZorgAB.Api.Client.requests.individualsidorganizationsGET">
		<Method>individualsidorganizationsGET</Method>
	</MapItem>
	<MapItem MessageType="CONNECTORSPKG.ZorgAB.Api.Client.requests.individualsidrelationsGET">
		<Method>individualsidrelationsGET</Method>
	</MapItem>
	<MapItem MessageType="CONNECTORSPKG.ZorgAB.Api.Client.requests.individualsidservicesPOST">
		<Method>individualsidservicesPOST</Method>
	</MapItem>
	<MapItem MessageType="CONNECTORSPKG.ZorgAB.Api.Client.requests.individualsidservicesindexDELETE">
		<Method>individualsidservicesindexDELETE</Method>
	</MapItem>
	<MapItem MessageType="CONNECTORSPKG.ZorgAB.Api.Client.requests.individualsidservicesindexPATCH">
		<Method>individualsidservicesindexPATCH</Method>
	</MapItem>
	<MapItem MessageType="CONNECTORSPKG.ZorgAB.Api.Client.requests.individualsidtelecomsPOST">
		<Method>individualsidtelecomsPOST</Method>
	</MapItem>
	<MapItem MessageType="CONNECTORSPKG.ZorgAB.Api.Client.requests.individualsidtelecomsindexDELETE">
		<Method>individualsidtelecomsindexDELETE</Method>
	</MapItem>
	<MapItem MessageType="CONNECTORSPKG.ZorgAB.Api.Client.requests.individualsidtelecomsindexPATCH">
		<Method>individualsidtelecomsindexPATCH</Method>
	</MapItem>
	<MapItem MessageType="CONNECTORSPKG.ZorgAB.Api.Client.requests.individualsidtypesPOST">
		<Method>individualsidtypesPOST</Method>
	</MapItem>
	<MapItem MessageType="CONNECTORSPKG.ZorgAB.Api.Client.requests.individualsidtypesindexDELETE">
		<Method>individualsidtypesindexDELETE</Method>
	</MapItem>
	<MapItem MessageType="CONNECTORSPKG.ZorgAB.Api.Client.requests.individualsidtypesindexPATCH">
		<Method>individualsidtypesindexPATCH</Method>
	</MapItem>
	<MapItem MessageType="CONNECTORSPKG.ZorgAB.Api.Client.requests.lspOrganizationsGET">
		<Method>lspOrganizationsGET</Method>
	</MapItem>
	<MapItem MessageType="CONNECTORSPKG.ZorgAB.Api.Client.requests.organizationsGET">
		<Method>organizationsGET</Method>
	</MapItem>
	<MapItem MessageType="CONNECTORSPKG.ZorgAB.Api.Client.requests.organizationsPOST">
		<Method>organizationsPOST</Method>
	</MapItem>
	<MapItem MessageType="CONNECTORSPKG.ZorgAB.Api.Client.requests.organizationsidDELETE">
		<Method>organizationsidDELETE</Method>
	</MapItem>
	<MapItem MessageType="CONNECTORSPKG.ZorgAB.Api.Client.requests.organizationsidGET">
		<Method>organizationsidGET</Method>
	</MapItem>
	<MapItem MessageType="CONNECTORSPKG.ZorgAB.Api.Client.requests.organizationsidPATCH">
		<Method>organizationsidPATCH</Method>
	</MapItem>
	<MapItem MessageType="CONNECTORSPKG.ZorgAB.Api.Client.requests.organizationsidaddressesPOST">
		<Method>organizationsidaddressesPOST</Method>
	</MapItem>
	<MapItem MessageType="CONNECTORSPKG.ZorgAB.Api.Client.requests.organizationsidaddressesindexDELETE">
		<Method>organizationsidaddressesindexDELETE</Method>
	</MapItem>
	<MapItem MessageType="CONNECTORSPKG.ZorgAB.Api.Client.requests.organizationsidaddressesindexPATCH">
		<Method>organizationsidaddressesindexPATCH</Method>
	</MapItem>
	<MapItem MessageType="CONNECTORSPKG.ZorgAB.Api.Client.requests.organizationsidattachmentsPOST">
		<Method>organizationsidattachmentsPOST</Method>
	</MapItem>
	<MapItem MessageType="CONNECTORSPKG.ZorgAB.Api.Client.requests.organizationsidattachmentsindexDELETE">
		<Method>organizationsidattachmentsindexDELETE</Method>
	</MapItem>
	<MapItem MessageType="CONNECTORSPKG.ZorgAB.Api.Client.requests.organizationsidattachmentsindexPATCH">
		<Method>organizationsidattachmentsindexPATCH</Method>
	</MapItem>
	<MapItem MessageType="CONNECTORSPKG.ZorgAB.Api.Client.requests.organizationsidcredentialsPOST">
		<Method>organizationsidcredentialsPOST</Method>
	</MapItem>
	<MapItem MessageType="CONNECTORSPKG.ZorgAB.Api.Client.requests.organizationsidcredentialsindexDELETE">
		<Method>organizationsidcredentialsindexDELETE</Method>
	</MapItem>
	<MapItem MessageType="CONNECTORSPKG.ZorgAB.Api.Client.requests.organizationsidcredentialsindexPATCH">
		<Method>organizationsidcredentialsindexPATCH</Method>
	</MapItem>
	<MapItem MessageType="CONNECTORSPKG.ZorgAB.Api.Client.requests.organizationsididentificationsPOST">
		<Method>organizationsididentificationsPOST</Method>
	</MapItem>
	<MapItem MessageType="CONNECTORSPKG.ZorgAB.Api.Client.requests.organizationsididentificationsindexDELETE">
		<Method>organizationsididentificationsindexDELETE</Method>
	</MapItem>
	<MapItem MessageType="CONNECTORSPKG.ZorgAB.Api.Client.requests.organizationsididentificationsindexPATCH">
		<Method>organizationsididentificationsindexPATCH</Method>
	</MapItem>
	<MapItem MessageType="CONNECTORSPKG.ZorgAB.Api.Client.requests.organizationsidindividualsGET">
		<Method>organizationsidindividualsGET</Method>
	</MapItem>
	<MapItem MessageType="CONNECTORSPKG.ZorgAB.Api.Client.requests.organizationsidmainOrganizationGET">
		<Method>organizationsidmainOrganizationGET</Method>
	</MapItem>
	<MapItem MessageType="CONNECTORSPKG.ZorgAB.Api.Client.requests.organizationsidnamesPOST">
		<Method>organizationsidnamesPOST</Method>
	</MapItem>
	<MapItem MessageType="CONNECTORSPKG.ZorgAB.Api.Client.requests.organizationsidnamesindexDELETE">
		<Method>organizationsidnamesindexDELETE</Method>
	</MapItem>
	<MapItem MessageType="CONNECTORSPKG.ZorgAB.Api.Client.requests.organizationsidnamesindexPATCH">
		<Method>organizationsidnamesindexPATCH</Method>
	</MapItem>
	<MapItem MessageType="CONNECTORSPKG.ZorgAB.Api.Client.requests.organizationsidrelationsGET">
		<Method>organizationsidrelationsGET</Method>
	</MapItem>
	<MapItem MessageType="CONNECTORSPKG.ZorgAB.Api.Client.requests.organizationsidservicesPOST">
		<Method>organizationsidservicesPOST</Method>
	</MapItem>
	<MapItem MessageType="CONNECTORSPKG.ZorgAB.Api.Client.requests.organizationsidservicesindexDELETE">
		<Method>organizationsidservicesindexDELETE</Method>
	</MapItem>
	<MapItem MessageType="CONNECTORSPKG.ZorgAB.Api.Client.requests.organizationsidservicesindexPATCH">
		<Method>organizationsidservicesindexPATCH</Method>
	</MapItem>
	<MapItem MessageType="CONNECTORSPKG.ZorgAB.Api.Client.requests.organizationsidsubOrganizationsGET">
		<Method>organizationsidsubOrganizationsGET</Method>
	</MapItem>
	<MapItem MessageType="CONNECTORSPKG.ZorgAB.Api.Client.requests.organizationsidsummaryGET">
		<Method>organizationsidsummaryGET</Method>
	</MapItem>
	<MapItem MessageType="CONNECTORSPKG.ZorgAB.Api.Client.requests.organizationsidtelecomsPOST">
		<Method>organizationsidtelecomsPOST</Method>
	</MapItem>
	<MapItem MessageType="CONNECTORSPKG.ZorgAB.Api.Client.requests.organizationsidtelecomsindexDELETE">
		<Method>organizationsidtelecomsindexDELETE</Method>
	</MapItem>
	<MapItem MessageType="CONNECTORSPKG.ZorgAB.Api.Client.requests.organizationsidtelecomsindexPATCH">
		<Method>organizationsidtelecomsindexPATCH</Method>
	</MapItem>
	<MapItem MessageType="CONNECTORSPKG.ZorgAB.Api.Client.requests.organizationsidtypesPOST">
		<Method>organizationsidtypesPOST</Method>
	</MapItem>
	<MapItem MessageType="CONNECTORSPKG.ZorgAB.Api.Client.requests.organizationsidtypesindexDELETE">
		<Method>organizationsidtypesindexDELETE</Method>
	</MapItem>
	<MapItem MessageType="CONNECTORSPKG.ZorgAB.Api.Client.requests.organizationsidtypesindexPATCH">
		<Method>organizationsidtypesindexPATCH</Method>
	</MapItem>
	<MapItem MessageType="CONNECTORSPKG.ZorgAB.Api.Client.requests.organizationssummaryGET">
		<Method>organizationssummaryGET</Method>
	</MapItem>
	<MapItem MessageType="CONNECTORSPKG.ZorgAB.Api.Client.requests.subOrganizationDELETE">
		<Method>subOrganizationDELETE</Method>
	</MapItem>
	<MapItem MessageType="CONNECTORSPKG.ZorgAB.Api.Client.requests.subOrganizationPATCH">
		<Method>subOrganizationPATCH</Method>
	</MapItem>
	<MapItem MessageType="CONNECTORSPKG.ZorgAB.Api.Client.requests.subOrganizationPOST">
		<Method>subOrganizationPOST</Method>
	</MapItem>
	<MapItem MessageType="CONNECTORSPKG.ZorgAB.Api.Client.requests.subOrganizationidDELETE">
		<Method>subOrganizationidDELETE</Method>
	</MapItem>
	<MapItem MessageType="CONNECTORSPKG.ZorgAB.Api.Client.requests.subOrganizationidGET">
		<Method>subOrganizationidGET</Method>
	</MapItem>
	<MapItem MessageType="CONNECTORSPKG.ZorgAB.Api.Client.requests.subOrganizationidPATCH">
		<Method>subOrganizationidPATCH</Method>
	</MapItem>
	<MapItem MessageType="CONNECTORSPKG.ZorgAB.Api.Client.requests.urauraNumberGET">
		<Method>urauraNumberGET</Method>
	</MapItem>
	<MapItem MessageType="CONNECTORSPKG.ZorgAB.Api.Client.requests.uziuziNumberGET">
		<Method>uziuziNumberGET</Method>
	</MapItem>
	<MapItem MessageType="CONNECTORSPKG.ZorgAB.Api.Client.requests.worksAtDELETE">
		<Method>worksAtDELETE</Method>
	</MapItem>
	<MapItem MessageType="CONNECTORSPKG.ZorgAB.Api.Client.requests.worksAtPATCH">
		<Method>worksAtPATCH</Method>
	</MapItem>
	<MapItem MessageType="CONNECTORSPKG.ZorgAB.Api.Client.requests.worksAtPOST">
		<Method>worksAtPOST</Method>
	</MapItem>
	<MapItem MessageType="CONNECTORSPKG.ZorgAB.Api.Client.requests.worksAtidDELETE">
		<Method>worksAtidDELETE</Method>
	</MapItem>
	<MapItem MessageType="CONNECTORSPKG.ZorgAB.Api.Client.requests.worksAtidGET">
		<Method>worksAtidGET</Method>
	</MapItem>
	<MapItem MessageType="CONNECTORSPKG.ZorgAB.Api.Client.requests.worksAtidPATCH">
		<Method>worksAtidPATCH</Method>
	</MapItem>
</MapItems>
}

}
