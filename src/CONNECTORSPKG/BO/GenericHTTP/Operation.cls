/// Generic HTTP Operation
Class CONNECTORSPKG.BO.GenericHTTP.Operation Extends (Ens.BusinessOperation, HS.HC.Util.Trace.Helper)
{

Parameter ADAPTER = "CONNECTORSPKG.BO.GenericHTTP.OutboundAdapter";

Property Adapter As CONNECTORSPKG.BO.GenericHTTP.OutboundAdapter;

/// HTTP Method
Property HttpMethod As %String(VALUELIST = ",GET,POST,PUT,PATCH,DELETE,HEAD,OPTIONS") [ InitialExpression = "GET" ];

/// Accept header
Property AcceptHeader As %String [ InitialExpression = "application/json" ];

/// Content Type header
Property ContentType As %String [ InitialExpression = "application/json" ];

/// Authorization Type
Property AuthorizationType As %String(VALUELIST = ",None,Basic,Bearer,Custom") [ InitialExpression = "None" ];

/// AuthorizationHeader for type = "Custom"
Property CustomAuthorizationHeader As %String(MAXLEN = "");

/// Deze Settings worden weergegeven.
Parameter SETTINGS As STRING = "HttpMethod:Basic,AcceptHeader:Basic,ContentType:Basic,AuthorizationType:Basic,CustomAuthorizationHeader:Basic";

/// Handle Generic HTTP request
Method Handle(requestMessage As CONNECTORSPKG.BO.GenericHTTP.Msg.Request, Output responseMessage As CONNECTORSPKG.BO.GenericHTTP.Msg.Response) As %Status
{
	set responseMessage = ##class(CONNECTORSPKG.BO.GenericHTTP.Msg.Response).%New()
	set sc = $$$OK, pHttpRequestIn = ##class(%Net.HttpRequest).%New()
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(pHttpRequestIn))

	set url = ..ProcessUrlParams(requestMessage, pHttpRequestIn)
	$$$QuitOnError(..ProcessHeaders(requestMessage, pHttpRequestIn))

	$$$HSTRACE("Request after pre-processing", "HttpRequest headers", pHttpRequestIn.ReturnHeaders())
	
	set sc = ..Adapter.SendFormDataArray(.pHttpResponse, ..HttpMethod, pHttpRequestIn, , , url)

	if $$$ISERR(sc) && ($SYSTEM.Status.GetErrorCodes(sc) '= $$$EnsErrHTTPStatus)
	{
		return sc
	}

	if $ISOBJECT(pHttpResponse)
	{
		$$$TRACE("Call to " _ url _ " returned " _ pHttpResponse.StatusCode)
		$$$QuitOnError(responseMessage.LoadFromResponse(pHttpResponse))
	}

	return sc
}

/// Process Url Parameters
/// Serach for positional parameters like Patient/{1}
Method ProcessUrlParams(requestMessage As CONNECTORSPKG.BO.GenericHTTP.Msg.Request, httpRequest As %Net.HttpRequest) As %String
{
	set url = ..Adapter.URL
	
	for index = 1:1:requestMessage.#URLParamCount
	{
		set value = $PROPERTY(requestMessage, "UrlParam" _ index)

	    if value '= ""
		{
			set url = $Replace(url, "{" _ index _ "}", value)
		}
	}

	if url [ "?" // Split off parameters from request
	{
		set params = $PIECE(url, "?", 2)
		set url = $PIECE(url, "?", 1)

		for index = 1:1:$LENGTH(params, "&")
		{
			set param = $PIECE(params, "&", index)

			do httpRequest.SetParam($PIECE(param, "=", 1), $PIECE(param, "=", 2))
		}
	}

	return url
}

/// Process headers
Method ProcessHeaders(requestMessage As CONNECTORSPKG.BO.GenericHTTP.Msg.Request, httpRequest As %Net.HttpRequest) As %Status
{
	if (..AuthorizationType = "Bearer")
	{
		if (..Adapter.Credentials = "None") || (..Adapter.Credentials = "")
		{
			return $$$ERROR($$$GeneralError, "No credentials configured")
		}

		set credential = ##class(Ens.Config.Credentials).%OpenId(..Adapter.Credentials, .sc)

		if $$$ISERR(sc)
		{
			return $$$ADDSC($$$ERROR($$$GeneralError, "Error opening credentials named '" _ ..Adapter.Credentials _ "'"), sc)
		}
		
		set httpRequest.Authorization = "Bearer " _ credential.Password
	}
	elseif (..AuthorizationType = "Custom")
	{		
		set httpRequest.Authorization = ..CustomAuthorizationHeader
	}

	set httpRequest.ContentType = ..ContentType
	do httpRequest.SetHeader("accept", ..AcceptHeader)

	for index = 1:1:requestMessage.#HeaderCount
	{
		set name = $PROPERTY(requestMessage, "HeaderName" _ index)

	    if name '= ""
		{
			set value = $PROPERTY(requestMessage, "HeaderValue" _ index)

			do httpRequest.SetHeader(name, value)
		}
	}

	return $$$OK
}

XData MessageMap
{
<MapItems>
	<MapItem MessageType="CONNECTORSPKG.BO.GenericHTTP.Msg.Request">
		<Method>Handle</Method>
	</MapItem>
</MapItems>
}

}
