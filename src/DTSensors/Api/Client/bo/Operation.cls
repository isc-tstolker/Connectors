/// Generated Business Operation
Class DTSensors.Api.Client.bo.Operation Extends Ens.BusinessOperation [ Inheritance = left, ProcedureBlock ]
{

Parameter ADAPTER = "EnsLib.HTTP.OutboundAdapter";

Property Adapter As EnsLib.HTTP.OutboundAdapter;

/// Implement operationId : claimInfoGET
/// get /claimInfo
Method claimInfoGET(requestMessage As DTSensors.Api.Client.requests.claimInfoGET, Output responseMessage As DTSensors.Api.Client.responses.claimInfoGET) As %Status
{
	set responseMessage = ##class(DTSensors.Api.Client.responses.claimInfoGET).%New()
	return ..zzHandleRequest(requestMessage, "claimInfoGET", "get", responseMessage)
}

/// Implement operationId : organizationsGET
/// get /organizations
Method organizationsGET(requestMessage As DTSensors.Api.Client.requests.organizationsGET, Output responseMessage As DTSensors.Api.Client.responses.organizationsGET) As %Status
{
	set responseMessage = ##class(DTSensors.Api.Client.responses.organizationsGET).%New()
	return ..zzHandleRequest(requestMessage, "organizationsGET", "get", responseMessage)
}

/// Implement operationId : organizationsorganizationGET
/// get /organizations/{organization}
Method organizationsorganizationGET(requestMessage As DTSensors.Api.Client.requests.organizationsorganizationGET, Output responseMessage As DTSensors.Api.Client.responses.organizationsorganizationGET) As %Status
{
	set responseMessage = ##class(DTSensors.Api.Client.responses.organizationsorganizationGET).%New()
	return ..zzHandleRequest(requestMessage, "organizationsorganizationGET", "get", responseMessage)
}

/// Implement operationId : organizationsorganizationmembersGET
/// get /organizations/{organization}/members
Method organizationsorganizationmembersGET(requestMessage As DTSensors.Api.Client.requests.organizationsorganizationmembersGET, Output responseMessage As DTSensors.Api.Client.responses.organizationsorganizationmembersGET) As %Status
{
	set responseMessage = ##class(DTSensors.Api.Client.responses.organizationsorganizationmembersGET).%New()
	return ..zzHandleRequest(requestMessage, "organizationsorganizationmembersGET", "get", responseMessage)
}

/// Implement operationId : organizationsorganizationmembersPOST
/// post /organizations/{organization}/members
Method organizationsorganizationmembersPOST(requestMessage As DTSensors.Api.Client.requests.organizationsorganizationmembersPOST, Output responseMessage As DTSensors.Api.Client.responses.organizationsorganizationmembersPOST) As %Status
{
	set responseMessage = ##class(DTSensors.Api.Client.responses.organizationsorganizationmembersPOST).%New()
	return ..zzHandleRequest(requestMessage, "organizationsorganizationmembersPOST", "post", responseMessage)
}

/// Implement operationId : organizationsorganizationmembersmemberDELETE
/// delete /organizations/{organization}/members/{member}
Method organizationsorganizationmembersmemberDELETE(requestMessage As DTSensors.Api.Client.requests.organizationsorganizationmembersmemberDELETE, Output responseMessage As DTSensors.Api.Client.responses.organizationsorganizationmembersmemberDELETE) As %Status
{
	set responseMessage = ##class(DTSensors.Api.Client.responses.organizationsorganizationmembersmemberDELETE).%New()
	return ..zzHandleRequest(requestMessage, "organizationsorganizationmembersmemberDELETE", "delete", responseMessage)
}

/// Implement operationId : organizationsorganizationmembersmemberGET
/// get /organizations/{organization}/members/{member}
Method organizationsorganizationmembersmemberGET(requestMessage As DTSensors.Api.Client.requests.organizationsorganizationmembersmemberGET, Output responseMessage As DTSensors.Api.Client.responses.organizationsorganizationmembersmemberGET) As %Status
{
	set responseMessage = ##class(DTSensors.Api.Client.responses.organizationsorganizationmembersmemberGET).%New()
	return ..zzHandleRequest(requestMessage, "organizationsorganizationmembersmemberGET", "get", responseMessage)
}

/// Implement operationId : organizationsorganizationmembersmembergetInviteUrlGET
/// get /organizations/{organization}/members/{member}:getInviteUrl
Method organizationsorganizationmembersmembergetInviteUrlGET(requestMessage As DTSensors.Api.Client.requests.organizationsorganizationmembersmembergetInviteUrlGET, Output responseMessage As DTSensors.Api.Client.responses.organizationsorganizationmembersmembergetInviteUrlGET) As %Status
{
	set responseMessage = ##class(DTSensors.Api.Client.responses.organizationsorganizationmembersmembergetInviteUrlGET).%New()
	return ..zzHandleRequest(requestMessage, "organizationsorganizationmembersmembergetInviteUrlGET", "get", responseMessage)
}

/// Implement operationId : organizationsorganizationpermissionsGET
/// get /organizations/{organization}/permissions
Method organizationsorganizationpermissionsGET(requestMessage As DTSensors.Api.Client.requests.organizationsorganizationpermissionsGET, Output responseMessage As DTSensors.Api.Client.responses.organizationsorganizationpermissionsGET) As %Status
{
	set responseMessage = ##class(DTSensors.Api.Client.responses.organizationsorganizationpermissionsGET).%New()
	return ..zzHandleRequest(requestMessage, "organizationsorganizationpermissionsGET", "get", responseMessage)
}

/// Implement operationId : projectsGET
/// get /projects
Method projectsGET(requestMessage As DTSensors.Api.Client.requests.projectsGET, Output responseMessage As DTSensors.Api.Client.responses.projectsGET) As %Status
{
	set responseMessage = ##class(DTSensors.Api.Client.responses.projectsGET).%New()
	return ..zzHandleRequest(requestMessage, "projectsGET", "get", responseMessage)
}

/// Implement operationId : projectsPOST
/// post /projects
Method projectsPOST(requestMessage As DTSensors.Api.Client.requests.projectsPOST, Output responseMessage As DTSensors.Api.Client.responses.projectsPOST) As %Status
{
	set responseMessage = ##class(DTSensors.Api.Client.responses.projectsPOST).%New()
	return ..zzHandleRequest(requestMessage, "projectsPOST", "post", responseMessage)
}

/// Implement operationId : projectsprojectDELETE
/// delete /projects/{project}
Method projectsprojectDELETE(requestMessage As DTSensors.Api.Client.requests.projectsprojectDELETE, Output responseMessage As DTSensors.Api.Client.responses.projectsprojectDELETE) As %Status
{
	set responseMessage = ##class(DTSensors.Api.Client.responses.projectsprojectDELETE).%New()
	return ..zzHandleRequest(requestMessage, "projectsprojectDELETE", "delete", responseMessage)
}

/// Implement operationId : projectsprojectGET
/// get /projects/{project}
Method projectsprojectGET(requestMessage As DTSensors.Api.Client.requests.projectsprojectGET, Output responseMessage As DTSensors.Api.Client.responses.projectsprojectGET) As %Status
{
	set responseMessage = ##class(DTSensors.Api.Client.responses.projectsprojectGET).%New()
	return ..zzHandleRequest(requestMessage, "projectsprojectGET", "get", responseMessage)
}

/// Implement operationId : projectsprojectPATCH
/// patch /projects/{project}
Method projectsprojectPATCH(requestMessage As DTSensors.Api.Client.requests.projectsprojectPATCH, Output responseMessage As DTSensors.Api.Client.responses.projectsprojectPATCH) As %Status
{
	set responseMessage = ##class(DTSensors.Api.Client.responses.projectsprojectPATCH).%New()
	return ..zzHandleRequest(requestMessage, "projectsprojectPATCH", "patch", responseMessage)
}

/// Implement operationId : projectsprojectdataconnectorsGET
/// get /projects/{project}/dataconnectors
Method projectsprojectdataconnectorsGET(requestMessage As DTSensors.Api.Client.requests.projectsprojectdataconnectorsGET, Output responseMessage As DTSensors.Api.Client.responses.projectsprojectdataconnectorsGET) As %Status
{
	set responseMessage = ##class(DTSensors.Api.Client.responses.projectsprojectdataconnectorsGET).%New()
	return ..zzHandleRequest(requestMessage, "projectsprojectdataconnectorsGET", "get", responseMessage)
}

/// Implement operationId : projectsprojectdataconnectorsPOST
/// post /projects/{project}/dataconnectors
Method projectsprojectdataconnectorsPOST(requestMessage As DTSensors.Api.Client.requests.projectsprojectdataconnectorsPOST, Output responseMessage As DTSensors.Api.Client.responses.projectsprojectdataconnectorsPOST) As %Status
{
	set responseMessage = ##class(DTSensors.Api.Client.responses.projectsprojectdataconnectorsPOST).%New()
	return ..zzHandleRequest(requestMessage, "projectsprojectdataconnectorsPOST", "post", responseMessage)
}

/// Implement operationId : projectsprojectdataconnectorsdataconnectorDELETE
/// delete /projects/{project}/dataconnectors/{dataconnector}
Method projectsprojectdataconnectorsdataconnectorDELETE(requestMessage As DTSensors.Api.Client.requests.projectsprojectdataconnectorsdataconnectorDELETE, Output responseMessage As DTSensors.Api.Client.responses.projectsprojectdataconnectorsdataconnectorDELETE) As %Status
{
	set responseMessage = ##class(DTSensors.Api.Client.responses.projectsprojectdataconnectorsdataconnectorDELETE).%New()
	return ..zzHandleRequest(requestMessage, "projectsprojectdataconnectorsdataconnectorDELETE", "delete", responseMessage)
}

/// Implement operationId : projectsprojectdataconnectorsdataconnectorGET
/// get /projects/{project}/dataconnectors/{dataconnector}
Method projectsprojectdataconnectorsdataconnectorGET(requestMessage As DTSensors.Api.Client.requests.projectsprojectdataconnectorsdataconnectorGET, Output responseMessage As DTSensors.Api.Client.responses.projectsprojectdataconnectorsdataconnectorGET) As %Status
{
	set responseMessage = ##class(DTSensors.Api.Client.responses.projectsprojectdataconnectorsdataconnectorGET).%New()
	return ..zzHandleRequest(requestMessage, "projectsprojectdataconnectorsdataconnectorGET", "get", responseMessage)
}

/// Implement operationId : projectsprojectdataconnectorsdataconnectorPATCH
/// patch /projects/{project}/dataconnectors/{dataconnector}
Method projectsprojectdataconnectorsdataconnectorPATCH(requestMessage As DTSensors.Api.Client.requests.projectsprojectdataconnectorsdataconnectorPATCH, Output responseMessage As DTSensors.Api.Client.responses.projectsprojectdataconnectorsdataconnectorPATCH) As %Status
{
	set responseMessage = ##class(DTSensors.Api.Client.responses.projectsprojectdataconnectorsdataconnectorPATCH).%New()
	return ..zzHandleRequest(requestMessage, "projectsprojectdataconnectorsdataconnectorPATCH", "patch", responseMessage)
}

/// Implement operationId : projectsprojectdataconnectorsdataconnectormetricsGET
/// get /projects/{project}/dataconnectors/{dataconnector}:metrics
Method projectsprojectdataconnectorsdataconnectormetricsGET(requestMessage As DTSensors.Api.Client.requests.projectsprojectdataconnectorsdataconnectormetricsGET, Output responseMessage As DTSensors.Api.Client.responses.projectsprojectdataconnectorsdataconnectormetricsGET) As %Status
{
	set responseMessage = ##class(DTSensors.Api.Client.responses.projectsprojectdataconnectorsdataconnectormetricsGET).%New()
	return ..zzHandleRequest(requestMessage, "projectsprojectdataconnectorsdataconnectormetricsGET", "get", responseMessage)
}

/// Implement operationId : projectsprojectdataconnectorsdataconnectorsyncPOST
/// post /projects/{project}/dataconnectors/{dataconnector}:sync
Method projectsprojectdataconnectorsdataconnectorsyncPOST(requestMessage As DTSensors.Api.Client.requests.projectsprojectdataconnectorsdataconnectorsyncPOST, Output responseMessage As DTSensors.Api.Client.responses.projectsprojectdataconnectorsdataconnectorsyncPOST) As %Status
{
	set responseMessage = ##class(DTSensors.Api.Client.responses.projectsprojectdataconnectorsdataconnectorsyncPOST).%New()
	return ..zzHandleRequest(requestMessage, "projectsprojectdataconnectorsdataconnectorsyncPOST", "post", responseMessage)
}

/// Implement operationId : projectsprojectdevicesGET
/// get /projects/{project}/devices
Method projectsprojectdevicesGET(requestMessage As DTSensors.Api.Client.requests.projectsprojectdevicesGET, Output responseMessage As DTSensors.Api.Client.responses.projectsprojectdevicesGET) As %Status
{
	set responseMessage = ##class(DTSensors.Api.Client.responses.projectsprojectdevicesGET).%New()
	return ..zzHandleRequest(requestMessage, "projectsprojectdevicesGET", "get", responseMessage)
}

/// Implement operationId : projectsprojectdevicesbatchUpdatePOST
/// post /projects/{project}/devices:batchUpdate
Method projectsprojectdevicesbatchUpdatePOST(requestMessage As DTSensors.Api.Client.requests.projectsprojectdevicesbatchUpdatePOST, Output responseMessage As DTSensors.Api.Client.responses.projectsprojectdevicesbatchUpdatePOST) As %Status
{
	set responseMessage = ##class(DTSensors.Api.Client.responses.projectsprojectdevicesbatchUpdatePOST).%New()
	return ..zzHandleRequest(requestMessage, "projectsprojectdevicesbatchUpdatePOST", "post", responseMessage)
}

/// Implement operationId : projectsprojectdevicesclaimPOST
/// post /projects/{project}/devices:claim
Method projectsprojectdevicesclaimPOST(requestMessage As DTSensors.Api.Client.requests.projectsprojectdevicesclaimPOST, Output responseMessage As DTSensors.Api.Client.responses.projectsprojectdevicesclaimPOST) As %Status
{
	set responseMessage = ##class(DTSensors.Api.Client.responses.projectsprojectdevicesclaimPOST).%New()
	return ..zzHandleRequest(requestMessage, "projectsprojectdevicesclaimPOST", "post", responseMessage)
}

/// Implement operationId : projectsprojectdevicesdeviceGET
/// get /projects/{project}/devices/{device}
Method projectsprojectdevicesdeviceGET(requestMessage As DTSensors.Api.Client.requests.projectsprojectdevicesdeviceGET, Output responseMessage As DTSensors.Api.Client.responses.projectsprojectdevicesdeviceGET) As %Status
{
	set responseMessage = ##class(DTSensors.Api.Client.responses.projectsprojectdevicesdeviceGET).%New()
	return ..zzHandleRequest(requestMessage, "projectsprojectdevicesdeviceGET", "get", responseMessage)
}

/// Implement operationId : projectsprojectdevicesdeviceeventsGET
/// get /projects/{project}/devices/{device}/events
Method projectsprojectdevicesdeviceeventsGET(requestMessage As DTSensors.Api.Client.requests.projectsprojectdevicesdeviceeventsGET, Output responseMessage As DTSensors.Api.Client.responses.projectsprojectdevicesdeviceeventsGET) As %Status
{
	set responseMessage = ##class(DTSensors.Api.Client.responses.projectsprojectdevicesdeviceeventsGET).%New()
	return ..zzHandleRequest(requestMessage, "projectsprojectdevicesdeviceeventsGET", "get", responseMessage)
}

/// Implement operationId : projectsprojectdevicesdevicelabelsPOST
/// post /projects/{project}/devices/{device}/labels
Method projectsprojectdevicesdevicelabelsPOST(requestMessage As DTSensors.Api.Client.requests.projectsprojectdevicesdevicelabelsPOST, Output responseMessage As DTSensors.Api.Client.responses.projectsprojectdevicesdevicelabelsPOST) As %Status
{
	set responseMessage = ##class(DTSensors.Api.Client.responses.projectsprojectdevicesdevicelabelsPOST).%New()
	return ..zzHandleRequest(requestMessage, "projectsprojectdevicesdevicelabelsPOST", "post", responseMessage)
}

/// Implement operationId : projectsprojectdevicesdevicelabelslabelDELETE
/// delete /projects/{project}/devices/{device}/labels/{label}
Method projectsprojectdevicesdevicelabelslabelDELETE(requestMessage As DTSensors.Api.Client.requests.projectsprojectdevicesdevicelabelslabelDELETE, Output responseMessage As DTSensors.Api.Client.responses.projectsprojectdevicesdevicelabelslabelDELETE) As %Status
{
	set responseMessage = ##class(DTSensors.Api.Client.responses.projectsprojectdevicesdevicelabelslabelDELETE).%New()
	return ..zzHandleRequest(requestMessage, "projectsprojectdevicesdevicelabelslabelDELETE", "delete", responseMessage)
}

/// Implement operationId : projectsprojectdevicesdevicelabelslabelPATCH
/// patch /projects/{project}/devices/{device}/labels/{label}
Method projectsprojectdevicesdevicelabelslabelPATCH(requestMessage As DTSensors.Api.Client.requests.projectsprojectdevicesdevicelabelslabelPATCH, Output responseMessage As DTSensors.Api.Client.responses.projectsprojectdevicesdevicelabelslabelPATCH) As %Status
{
	set responseMessage = ##class(DTSensors.Api.Client.responses.projectsprojectdevicesdevicelabelslabelPATCH).%New()
	return ..zzHandleRequest(requestMessage, "projectsprojectdevicesdevicelabelslabelPATCH", "patch", responseMessage)
}

/// Implement operationId : projectsprojectdevicesdevicestreamGET
/// get /projects/{project}/devices/{device}:stream
Method projectsprojectdevicesdevicestreamGET(requestMessage As DTSensors.Api.Client.requests.projectsprojectdevicesdevicestreamGET, Output responseMessage As DTSensors.Api.Client.responses.projectsprojectdevicesdevicestreamGET) As %Status
{
	set responseMessage = ##class(DTSensors.Api.Client.responses.projectsprojectdevicesdevicestreamGET).%New()
	return ..zzHandleRequest(requestMessage, "projectsprojectdevicesdevicestreamGET", "get", responseMessage)
}

/// Implement operationId : projectsprojectdevicesstreamGET
/// get /projects/{project}/devices:stream
Method projectsprojectdevicesstreamGET(requestMessage As DTSensors.Api.Client.requests.projectsprojectdevicesstreamGET, Output responseMessage As DTSensors.Api.Client.responses.projectsprojectdevicesstreamGET) As %Status
{
	set responseMessage = ##class(DTSensors.Api.Client.responses.projectsprojectdevicesstreamGET).%New()
	return ..zzHandleRequest(requestMessage, "projectsprojectdevicesstreamGET", "get", responseMessage)
}

/// Implement operationId : projectsprojectdevicestransferPOST
/// post /projects/{project}/devices:transfer
Method projectsprojectdevicestransferPOST(requestMessage As DTSensors.Api.Client.requests.projectsprojectdevicestransferPOST, Output responseMessage As DTSensors.Api.Client.responses.projectsprojectdevicestransferPOST) As %Status
{
	set responseMessage = ##class(DTSensors.Api.Client.responses.projectsprojectdevicestransferPOST).%New()
	return ..zzHandleRequest(requestMessage, "projectsprojectdevicestransferPOST", "post", responseMessage)
}

/// Implement operationId : projectsprojectmembersGET
/// get /projects/{project}/members
Method projectsprojectmembersGET(requestMessage As DTSensors.Api.Client.requests.projectsprojectmembersGET, Output responseMessage As DTSensors.Api.Client.responses.projectsprojectmembersGET) As %Status
{
	set responseMessage = ##class(DTSensors.Api.Client.responses.projectsprojectmembersGET).%New()
	return ..zzHandleRequest(requestMessage, "projectsprojectmembersGET", "get", responseMessage)
}

/// Implement operationId : projectsprojectmembersPOST
/// post /projects/{project}/members
Method projectsprojectmembersPOST(requestMessage As DTSensors.Api.Client.requests.projectsprojectmembersPOST, Output responseMessage As DTSensors.Api.Client.responses.projectsprojectmembersPOST) As %Status
{
	set responseMessage = ##class(DTSensors.Api.Client.responses.projectsprojectmembersPOST).%New()
	return ..zzHandleRequest(requestMessage, "projectsprojectmembersPOST", "post", responseMessage)
}

/// Implement operationId : projectsprojectmembersmemberDELETE
/// delete /projects/{project}/members/{member}
Method projectsprojectmembersmemberDELETE(requestMessage As DTSensors.Api.Client.requests.projectsprojectmembersmemberDELETE, Output responseMessage As DTSensors.Api.Client.responses.projectsprojectmembersmemberDELETE) As %Status
{
	set responseMessage = ##class(DTSensors.Api.Client.responses.projectsprojectmembersmemberDELETE).%New()
	return ..zzHandleRequest(requestMessage, "projectsprojectmembersmemberDELETE", "delete", responseMessage)
}

/// Implement operationId : projectsprojectmembersmemberGET
/// get /projects/{project}/members/{member}
Method projectsprojectmembersmemberGET(requestMessage As DTSensors.Api.Client.requests.projectsprojectmembersmemberGET, Output responseMessage As DTSensors.Api.Client.responses.projectsprojectmembersmemberGET) As %Status
{
	set responseMessage = ##class(DTSensors.Api.Client.responses.projectsprojectmembersmemberGET).%New()
	return ..zzHandleRequest(requestMessage, "projectsprojectmembersmemberGET", "get", responseMessage)
}

/// Implement operationId : projectsprojectmembersmemberPATCH
/// patch /projects/{project}/members/{member}
Method projectsprojectmembersmemberPATCH(requestMessage As DTSensors.Api.Client.requests.projectsprojectmembersmemberPATCH, Output responseMessage As DTSensors.Api.Client.responses.projectsprojectmembersmemberPATCH) As %Status
{
	set responseMessage = ##class(DTSensors.Api.Client.responses.projectsprojectmembersmemberPATCH).%New()
	return ..zzHandleRequest(requestMessage, "projectsprojectmembersmemberPATCH", "patch", responseMessage)
}

/// Implement operationId : projectsprojectmembersmembergetInviteUrlGET
/// get /projects/{project}/members/{member}:getInviteUrl
Method projectsprojectmembersmembergetInviteUrlGET(requestMessage As DTSensors.Api.Client.requests.projectsprojectmembersmembergetInviteUrlGET, Output responseMessage As DTSensors.Api.Client.responses.projectsprojectmembersmembergetInviteUrlGET) As %Status
{
	set responseMessage = ##class(DTSensors.Api.Client.responses.projectsprojectmembersmembergetInviteUrlGET).%New()
	return ..zzHandleRequest(requestMessage, "projectsprojectmembersmembergetInviteUrlGET", "get", responseMessage)
}

/// Implement operationId : projectsprojectpermissionsGET
/// get /projects/{project}/permissions
Method projectsprojectpermissionsGET(requestMessage As DTSensors.Api.Client.requests.projectsprojectpermissionsGET, Output responseMessage As DTSensors.Api.Client.responses.projectsprojectpermissionsGET) As %Status
{
	set responseMessage = ##class(DTSensors.Api.Client.responses.projectsprojectpermissionsGET).%New()
	return ..zzHandleRequest(requestMessage, "projectsprojectpermissionsGET", "get", responseMessage)
}

/// Implement operationId : projectsprojectserviceaccountsGET
/// get /projects/{project}/serviceaccounts
Method projectsprojectserviceaccountsGET(requestMessage As DTSensors.Api.Client.requests.projectsprojectserviceaccountsGET, Output responseMessage As DTSensors.Api.Client.responses.projectsprojectserviceaccountsGET) As %Status
{
	set responseMessage = ##class(DTSensors.Api.Client.responses.projectsprojectserviceaccountsGET).%New()
	return ..zzHandleRequest(requestMessage, "projectsprojectserviceaccountsGET", "get", responseMessage)
}

/// Implement operationId : projectsprojectserviceaccountsPOST
/// post /projects/{project}/serviceaccounts
Method projectsprojectserviceaccountsPOST(requestMessage As DTSensors.Api.Client.requests.projectsprojectserviceaccountsPOST, Output responseMessage As DTSensors.Api.Client.responses.projectsprojectserviceaccountsPOST) As %Status
{
	set responseMessage = ##class(DTSensors.Api.Client.responses.projectsprojectserviceaccountsPOST).%New()
	return ..zzHandleRequest(requestMessage, "projectsprojectserviceaccountsPOST", "post", responseMessage)
}

/// Implement operationId : projectsprojectserviceaccountsserviceaccountDELETE
/// delete /projects/{project}/serviceaccounts/{serviceaccount}
Method projectsprojectserviceaccountsserviceaccountDELETE(requestMessage As DTSensors.Api.Client.requests.projectsprojectserviceaccountsserviceaccountDELETE, Output responseMessage As DTSensors.Api.Client.responses.projectsprojectserviceaccountsserviceaccountDELETE) As %Status
{
	set responseMessage = ##class(DTSensors.Api.Client.responses.projectsprojectserviceaccountsserviceaccountDELETE).%New()
	return ..zzHandleRequest(requestMessage, "projectsprojectserviceaccountsserviceaccountDELETE", "delete", responseMessage)
}

/// Implement operationId : projectsprojectserviceaccountsserviceaccountGET
/// get /projects/{project}/serviceaccounts/{serviceaccount}
Method projectsprojectserviceaccountsserviceaccountGET(requestMessage As DTSensors.Api.Client.requests.projectsprojectserviceaccountsserviceaccountGET, Output responseMessage As DTSensors.Api.Client.responses.projectsprojectserviceaccountsserviceaccountGET) As %Status
{
	set responseMessage = ##class(DTSensors.Api.Client.responses.projectsprojectserviceaccountsserviceaccountGET).%New()
	return ..zzHandleRequest(requestMessage, "projectsprojectserviceaccountsserviceaccountGET", "get", responseMessage)
}

/// Implement operationId : projectsprojectserviceaccountsserviceaccountPATCH
/// patch /projects/{project}/serviceaccounts/{serviceaccount}
Method projectsprojectserviceaccountsserviceaccountPATCH(requestMessage As DTSensors.Api.Client.requests.projectsprojectserviceaccountsserviceaccountPATCH, Output responseMessage As DTSensors.Api.Client.responses.projectsprojectserviceaccountsserviceaccountPATCH) As %Status
{
	set responseMessage = ##class(DTSensors.Api.Client.responses.projectsprojectserviceaccountsserviceaccountPATCH).%New()
	return ..zzHandleRequest(requestMessage, "projectsprojectserviceaccountsserviceaccountPATCH", "patch", responseMessage)
}

/// Implement operationId : projectsprojectserviceaccountsserviceaccountkeysGET
/// get /projects/{project}/serviceaccounts/{serviceaccount}/keys
Method projectsprojectserviceaccountsserviceaccountkeysGET(requestMessage As DTSensors.Api.Client.requests.projectsprojectserviceaccountsserviceaccountkeysGET, Output responseMessage As DTSensors.Api.Client.responses.projectsprojectserviceaccountsserviceaccountkeysGET) As %Status
{
	set responseMessage = ##class(DTSensors.Api.Client.responses.projectsprojectserviceaccountsserviceaccountkeysGET).%New()
	return ..zzHandleRequest(requestMessage, "projectsprojectserviceaccountsserviceaccountkeysGET", "get", responseMessage)
}

/// Implement operationId : projectsprojectserviceaccountsserviceaccountkeysPOST
/// post /projects/{project}/serviceaccounts/{serviceaccount}/keys
Method projectsprojectserviceaccountsserviceaccountkeysPOST(requestMessage As DTSensors.Api.Client.requests.projectsprojectserviceaccountsserviceaccountkeysPOST, Output responseMessage As DTSensors.Api.Client.responses.projectsprojectserviceaccountsserviceaccountkeysPOST) As %Status
{
	set responseMessage = ##class(DTSensors.Api.Client.responses.projectsprojectserviceaccountsserviceaccountkeysPOST).%New()
	return ..zzHandleRequest(requestMessage, "projectsprojectserviceaccountsserviceaccountkeysPOST", "post", responseMessage)
}

/// Implement operationId : projectsprojectserviceaccountsserviceaccountkeyskeyDELETE
/// delete /projects/{project}/serviceaccounts/{serviceaccount}/keys/{key}
Method projectsprojectserviceaccountsserviceaccountkeyskeyDELETE(requestMessage As DTSensors.Api.Client.requests.projectsprojectserviceaccountsserviceaccountkeyskeyDELETE, Output responseMessage As DTSensors.Api.Client.responses.projectsprojectserviceaccountsserviceaccountkeyskeyDELETE) As %Status
{
	set responseMessage = ##class(DTSensors.Api.Client.responses.projectsprojectserviceaccountsserviceaccountkeyskeyDELETE).%New()
	return ..zzHandleRequest(requestMessage, "projectsprojectserviceaccountsserviceaccountkeyskeyDELETE", "delete", responseMessage)
}

/// Implement operationId : projectsprojectserviceaccountsserviceaccountkeyskeyGET
/// get /projects/{project}/serviceaccounts/{serviceaccount}/keys/{key}
Method projectsprojectserviceaccountsserviceaccountkeyskeyGET(requestMessage As DTSensors.Api.Client.requests.projectsprojectserviceaccountsserviceaccountkeyskeyGET, Output responseMessage As DTSensors.Api.Client.responses.projectsprojectserviceaccountsserviceaccountkeyskeyGET) As %Status
{
	set responseMessage = ##class(DTSensors.Api.Client.responses.projectsprojectserviceaccountsserviceaccountkeyskeyGET).%New()
	return ..zzHandleRequest(requestMessage, "projectsprojectserviceaccountsserviceaccountkeyskeyGET", "get", responseMessage)
}

/// Implement operationId : rolesGET
/// get /roles
Method rolesGET(requestMessage As DTSensors.Api.Client.requests.rolesGET, Output responseMessage As DTSensors.Api.Client.responses.rolesGET) As %Status
{
	set responseMessage = ##class(DTSensors.Api.Client.responses.rolesGET).%New()
	return ..zzHandleRequest(requestMessage, "rolesGET", "get", responseMessage)
}

/// Implement operationId : rolesroleGET
/// get /roles/{role}
Method rolesroleGET(requestMessage As DTSensors.Api.Client.requests.rolesroleGET, Output responseMessage As DTSensors.Api.Client.responses.rolesroleGET) As %Status
{
	set responseMessage = ##class(DTSensors.Api.Client.responses.rolesroleGET).%New()
	return ..zzHandleRequest(requestMessage, "rolesroleGET", "get", responseMessage)
}

/// Common request handler
Method zzHandleRequest(requestMessage As Ens.Request, name As %String, method As %String, responseMessage As DTSensors.Api.Client.responses.GenericResponse) As %Status
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
	<MapItem MessageType="DTSensors.Api.Client.requests.claimInfoGET">
		<Method>claimInfoGET</Method>
	</MapItem>
	<MapItem MessageType="DTSensors.Api.Client.requests.organizationsGET">
		<Method>organizationsGET</Method>
	</MapItem>
	<MapItem MessageType="DTSensors.Api.Client.requests.organizationsorganizationGET">
		<Method>organizationsorganizationGET</Method>
	</MapItem>
	<MapItem MessageType="DTSensors.Api.Client.requests.organizationsorganizationmembersGET">
		<Method>organizationsorganizationmembersGET</Method>
	</MapItem>
	<MapItem MessageType="DTSensors.Api.Client.requests.organizationsorganizationmembersPOST">
		<Method>organizationsorganizationmembersPOST</Method>
	</MapItem>
	<MapItem MessageType="DTSensors.Api.Client.requests.organizationsorganizationmembersmemberDELETE">
		<Method>organizationsorganizationmembersmemberDELETE</Method>
	</MapItem>
	<MapItem MessageType="DTSensors.Api.Client.requests.organizationsorganizationmembersmemberGET">
		<Method>organizationsorganizationmembersmemberGET</Method>
	</MapItem>
	<MapItem MessageType="DTSensors.Api.Client.requests.organizationsorganizationmembersmembergetInviteUrlGET">
		<Method>organizationsorganizationmembersmembergetInviteUrlGET</Method>
	</MapItem>
	<MapItem MessageType="DTSensors.Api.Client.requests.organizationsorganizationpermissionsGET">
		<Method>organizationsorganizationpermissionsGET</Method>
	</MapItem>
	<MapItem MessageType="DTSensors.Api.Client.requests.projectsGET">
		<Method>projectsGET</Method>
	</MapItem>
	<MapItem MessageType="DTSensors.Api.Client.requests.projectsPOST">
		<Method>projectsPOST</Method>
	</MapItem>
	<MapItem MessageType="DTSensors.Api.Client.requests.projectsprojectDELETE">
		<Method>projectsprojectDELETE</Method>
	</MapItem>
	<MapItem MessageType="DTSensors.Api.Client.requests.projectsprojectGET">
		<Method>projectsprojectGET</Method>
	</MapItem>
	<MapItem MessageType="DTSensors.Api.Client.requests.projectsprojectPATCH">
		<Method>projectsprojectPATCH</Method>
	</MapItem>
	<MapItem MessageType="DTSensors.Api.Client.requests.projectsprojectdataconnectorsGET">
		<Method>projectsprojectdataconnectorsGET</Method>
	</MapItem>
	<MapItem MessageType="DTSensors.Api.Client.requests.projectsprojectdataconnectorsPOST">
		<Method>projectsprojectdataconnectorsPOST</Method>
	</MapItem>
	<MapItem MessageType="DTSensors.Api.Client.requests.projectsprojectdataconnectorsdataconnectorDELETE">
		<Method>projectsprojectdataconnectorsdataconnectorDELETE</Method>
	</MapItem>
	<MapItem MessageType="DTSensors.Api.Client.requests.projectsprojectdataconnectorsdataconnectorGET">
		<Method>projectsprojectdataconnectorsdataconnectorGET</Method>
	</MapItem>
	<MapItem MessageType="DTSensors.Api.Client.requests.projectsprojectdataconnectorsdataconnectorPATCH">
		<Method>projectsprojectdataconnectorsdataconnectorPATCH</Method>
	</MapItem>
	<MapItem MessageType="DTSensors.Api.Client.requests.projectsprojectdataconnectorsdataconnectormetricsGET">
		<Method>projectsprojectdataconnectorsdataconnectormetricsGET</Method>
	</MapItem>
	<MapItem MessageType="DTSensors.Api.Client.requests.projectsprojectdataconnectorsdataconnectorsyncPOST">
		<Method>projectsprojectdataconnectorsdataconnectorsyncPOST</Method>
	</MapItem>
	<MapItem MessageType="DTSensors.Api.Client.requests.projectsprojectdevicesGET">
		<Method>projectsprojectdevicesGET</Method>
	</MapItem>
	<MapItem MessageType="DTSensors.Api.Client.requests.projectsprojectdevicesbatchUpdatePOST">
		<Method>projectsprojectdevicesbatchUpdatePOST</Method>
	</MapItem>
	<MapItem MessageType="DTSensors.Api.Client.requests.projectsprojectdevicesclaimPOST">
		<Method>projectsprojectdevicesclaimPOST</Method>
	</MapItem>
	<MapItem MessageType="DTSensors.Api.Client.requests.projectsprojectdevicesdeviceGET">
		<Method>projectsprojectdevicesdeviceGET</Method>
	</MapItem>
	<MapItem MessageType="DTSensors.Api.Client.requests.projectsprojectdevicesdeviceeventsGET">
		<Method>projectsprojectdevicesdeviceeventsGET</Method>
	</MapItem>
	<MapItem MessageType="DTSensors.Api.Client.requests.projectsprojectdevicesdevicelabelsPOST">
		<Method>projectsprojectdevicesdevicelabelsPOST</Method>
	</MapItem>
	<MapItem MessageType="DTSensors.Api.Client.requests.projectsprojectdevicesdevicelabelslabelDELETE">
		<Method>projectsprojectdevicesdevicelabelslabelDELETE</Method>
	</MapItem>
	<MapItem MessageType="DTSensors.Api.Client.requests.projectsprojectdevicesdevicelabelslabelPATCH">
		<Method>projectsprojectdevicesdevicelabelslabelPATCH</Method>
	</MapItem>
	<MapItem MessageType="DTSensors.Api.Client.requests.projectsprojectdevicesdevicestreamGET">
		<Method>projectsprojectdevicesdevicestreamGET</Method>
	</MapItem>
	<MapItem MessageType="DTSensors.Api.Client.requests.projectsprojectdevicesstreamGET">
		<Method>projectsprojectdevicesstreamGET</Method>
	</MapItem>
	<MapItem MessageType="DTSensors.Api.Client.requests.projectsprojectdevicestransferPOST">
		<Method>projectsprojectdevicestransferPOST</Method>
	</MapItem>
	<MapItem MessageType="DTSensors.Api.Client.requests.projectsprojectmembersGET">
		<Method>projectsprojectmembersGET</Method>
	</MapItem>
	<MapItem MessageType="DTSensors.Api.Client.requests.projectsprojectmembersPOST">
		<Method>projectsprojectmembersPOST</Method>
	</MapItem>
	<MapItem MessageType="DTSensors.Api.Client.requests.projectsprojectmembersmemberDELETE">
		<Method>projectsprojectmembersmemberDELETE</Method>
	</MapItem>
	<MapItem MessageType="DTSensors.Api.Client.requests.projectsprojectmembersmemberGET">
		<Method>projectsprojectmembersmemberGET</Method>
	</MapItem>
	<MapItem MessageType="DTSensors.Api.Client.requests.projectsprojectmembersmemberPATCH">
		<Method>projectsprojectmembersmemberPATCH</Method>
	</MapItem>
	<MapItem MessageType="DTSensors.Api.Client.requests.projectsprojectmembersmembergetInviteUrlGET">
		<Method>projectsprojectmembersmembergetInviteUrlGET</Method>
	</MapItem>
	<MapItem MessageType="DTSensors.Api.Client.requests.projectsprojectpermissionsGET">
		<Method>projectsprojectpermissionsGET</Method>
	</MapItem>
	<MapItem MessageType="DTSensors.Api.Client.requests.projectsprojectserviceaccountsGET">
		<Method>projectsprojectserviceaccountsGET</Method>
	</MapItem>
	<MapItem MessageType="DTSensors.Api.Client.requests.projectsprojectserviceaccountsPOST">
		<Method>projectsprojectserviceaccountsPOST</Method>
	</MapItem>
	<MapItem MessageType="DTSensors.Api.Client.requests.projectsprojectserviceaccountsserviceaccountDELETE">
		<Method>projectsprojectserviceaccountsserviceaccountDELETE</Method>
	</MapItem>
	<MapItem MessageType="DTSensors.Api.Client.requests.projectsprojectserviceaccountsserviceaccountGET">
		<Method>projectsprojectserviceaccountsserviceaccountGET</Method>
	</MapItem>
	<MapItem MessageType="DTSensors.Api.Client.requests.projectsprojectserviceaccountsserviceaccountPATCH">
		<Method>projectsprojectserviceaccountsserviceaccountPATCH</Method>
	</MapItem>
	<MapItem MessageType="DTSensors.Api.Client.requests.projectsprojectserviceaccountsserviceaccountkeysGET">
		<Method>projectsprojectserviceaccountsserviceaccountkeysGET</Method>
	</MapItem>
	<MapItem MessageType="DTSensors.Api.Client.requests.projectsprojectserviceaccountsserviceaccountkeysPOST">
		<Method>projectsprojectserviceaccountsserviceaccountkeysPOST</Method>
	</MapItem>
	<MapItem MessageType="DTSensors.Api.Client.requests.projectsprojectserviceaccountsserviceaccountkeyskeyDELETE">
		<Method>projectsprojectserviceaccountsserviceaccountkeyskeyDELETE</Method>
	</MapItem>
	<MapItem MessageType="DTSensors.Api.Client.requests.projectsprojectserviceaccountsserviceaccountkeyskeyGET">
		<Method>projectsprojectserviceaccountsserviceaccountkeyskeyGET</Method>
	</MapItem>
	<MapItem MessageType="DTSensors.Api.Client.requests.rolesGET">
		<Method>rolesGET</Method>
	</MapItem>
	<MapItem MessageType="DTSensors.Api.Client.requests.rolesroleGET">
		<Method>rolesroleGET</Method>
	</MapItem>
</MapItems>
}

}
