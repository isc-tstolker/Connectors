/// Request your own IP address
Class CONNECTORSPKG.BO.Ipify Extends Ens.BusinessOperation
{

Parameter ADAPTER = "EnsLib.HTTP.OutboundAdapter";

Property Adapter As EnsLib.HTTP.OutboundAdapter;

/// Get IP address
Method WhatIsMyIP(requestMessage As Ens.Request, Output responseMessage As Ens.Response) As %Status
{
	set sc = $$$OK
	set pHttpRequestIn = ##class(%Net.HttpRequest).%New()
	do pHttpRequestIn.SetParam("format", "json")

	set sc = ..Adapter.SendFormDataArray(.pHttpResponse, "GET", pHttpRequestIn, , , "https://api.ipify.org")

	if $$$ISERR(sc) && ($SYSTEM.Status.GetErrorCodes(sc) '= $$$EnsErrHTTPStatus) {
		return sc
	}

	if $ISOBJECT(pHttpResponse) {
		// {"ip":"18.169.26.142"}
		set reply = ##class(%DynamicObject).%FromJSON(pHttpResponse.Data)
		$$$TRACE(reply.ip)
	}

	return sc
}

XData MessageMap
{
<MapItems>
	<MapItem MessageType="Ens.Request">
		<Method>WhatIsMyIP</Method>
	</MapItem>
</MapItems>
}

}
