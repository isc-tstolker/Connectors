/// OpenAPI spec for Disruptive Technologies Sensors
Class DTSensors.Api.Openapi
{

/// Delete API
ClassMethod DeleteAll()
{
    Do $SYSTEM.OBJ.DeletePackage("DTSensors.Api.Client")
}

/// - Downloaded the swagger-spec from https://test-agb-api.vektis.nl/v2/swagger
/// - Shortened the definition namess by removing the "Vektis.AGB.WebAPI.Raadplegen.DataContracts." prefix
/// - Manually corrected all duplicate instances of operationId
/// - Converted using post to https://converter.swagger.io/#/Converter/convertByContent
/// - Removed all Authorization header parameters
/// - Pasted here.
XData spec [ MimeType = application/json ]
{
}

/// Generate DTSensors API
ClassMethod GenerateAll() As %Status
{
    #; #dim xData as %Dictionary.CompiledXData = ##class(%Dictionary.CompiledXData).%OpenId($CLASSNAME() _ "||spec")
    #; set spec = ##class(%DynamicObject).%FromJSON(xData.Data)

    return ..Generate("DTSensors.Api.Client", "https://storage.googleapis.com/developer-docs-assets/developer-docs-assets/openapi.yaml")
}

/// Generate API helper
ClassMethod Generate(packageName As %String, specification, modelOnly As %Boolean = 0) As %Status
{
    set %zverbose = 1
    // We want a Production and Operation; no Business Services, Business Processes or Utils
    set features("noBS") = 1
    set features("noBP") = 1
    set features("noUtils") = 1
    set features("noExtRef") = 1    ; avoid resolving external ref by validator.swagger.io
    set features("modelOnly") = modelOnly
    set features("model.property.norequired") = 1
    set features("reponse-is-text") = 1 // Set Response stream in Generic response as %Stream.GlobalCharacter

    #; set sc = ##class(dc.openapi.client.Spec).generateApp(packageName, url, .features, externals)
    set sc = ##class(dc.openapi.suite.Generate).ProductionClient(packageName, specification, .features)

    if $$$ISERR(sc)
    {
        write "generateApp " _ packageName _ " failed, error ", $SYSTEM.Status.GetErrorText(sc),!
        return sc
    }

    write "Successfully generated ",packageName,!

    return sc
}

}
