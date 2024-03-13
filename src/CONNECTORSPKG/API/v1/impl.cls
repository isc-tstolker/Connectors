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
