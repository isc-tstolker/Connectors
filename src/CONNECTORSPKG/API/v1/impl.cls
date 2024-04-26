/// Business logic class defined by OpenAPI in CONNECTORSPKG.API.v1.spec<br/>
Class CONNECTORSPKG.API.v1.impl Extends CONNECTORSPKG.API.RestHelper [ ProcedureBlock ]
{

/// DefaultPageSize - determines how many records will be returned in one go.
Parameter DefaultPageSize = 10;

/// If ExposeServerExceptions is true, then details of internal errors will be exposed.
Parameter ExposeServerExceptions = 0;

/// Service name
Parameter ServiceName = "RestApiService";

/// Get Swagger spec of this API
ClassMethod OpenAPI() As %DynamicObject
{
	#dim %request As %CSP.Request

	set specification = {}.%FromJSON(##class(%Dictionary.XDataDefinition).%OpenId(..%PackageName()_".spec||OpenAPI").Data)
	
	; Dynamically place host in response
	set specification.host = %request.GetCgiEnv("HTTP_HOST")
	
	; If called without https, change the scheme
	if '%request.Secure
    {
        Set specification.schemes = ["http"]
    }
	
	return specification
}

XData MSIdentityAssociation [ MimeType = application/json ]
{
{
    "associatedApplications": [
        {
        "applicationId": "a929e20e-f91f-4851-9d14-1f5d4241203b"
        },
        {
        "applicationId": "ab1e51a1-d04f-475b-9400-89aa57ba6d4e"
        }
    ]
}
}

/// Get Microsoft Identity Association
ClassMethod MSIdentityAssociation() As %DynamicObject
{
	return {}.%FromJSON(##class(%Dictionary.XDataDefinition).%OpenId($CLASSNAME() _ "||MSIdentityAssociation").Data)
}

/// Respond slow after the specified number of seconds or return the specified http status<br/>
/// The method arguments hold values for:<br/>
///     delay, Delay for the specified number of seconds<br/>
///     http-status, Return the specified HTTP Status code<br/>
ClassMethod HttpTest(delay As %Integer = 0, httpstatus As %Integer = 200) As %DynamicObject
{
    set body = {
        "status": (httpstatus),
        "delay": (delay)
    }

    do ##class(CONNECTORSPKG.DB.ApiLog).LogApiCall("GET", "/httptest", body)

    if (delay > 0)
    {
        hang delay
    }

    return ..ReturnJSON(body, httpstatus)
}

/// Opvragen van API logging<br/>
/// The method arguments hold values for:<br/>
///     endpoint, Filter on api endpoint<br/>
///     token, Filter on token<br/>
///     from, UTC-timestamp van eerste op te vragen logregel<br/>
///     to, UTC-timestamp van laatste op te vragen logregel<br/>
///     count, requested page-size<br/>
ClassMethod GetApiLog(endpoint As %String, from As %String, to As %String, count As %Integer) As %DynamicObject
{
	if ($GET(count) = "") || (count = 0)
	{
		set count = ..#DefaultPageSize
	}

	try
	{
		set response = {
			"code": 200
		}

        if ($GET(from) = "")
        {
            set from = "1900-01-01T00:00:00"
        }
        else
        {
            set response.from = from
        }

        if ($GET(to) = "")
        {
            set to = "3000-01-01T00:00:00"
        }
        else
        {
            set response.to = to
        }

		set logregels = ##class(CONNECTORSPKG.DB.ApiLog).GetPage($GET(endpoint), from, to, count, .next)

		if (next '= "")
		{
			set response.next = next
		}
		
		set response.logregels = logregels

		return ..ReturnJSON(response)
	}
	catch ex
	{
	    return ..ReturnJSON(..CreateErrorResponseForStatus(ex.AsStatus()), 500)
	}
}

/// Create response for unexpected status
ClassMethod CreateErrorResponseForStatus(sc As %Status, message As %String = "") As %DynamicObject
{
    set error = $System.Status.GetErrorText(sc)

    if message '= ""
    {
        set error = message _ ": " _ error
    }

    $$$LOGERROR(error)

    if '..#ExposeServerExceptions
    {
        set error = "Something unexpected happened"
    }

    return ..ReturnError(error, 500)
}

}
