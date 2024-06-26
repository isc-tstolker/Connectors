/// OpenAPI spec for VektisAGB
Class ZorgAB.Api.Openapi
{

/// Delete API
ClassMethod DeleteAll()
{
    Do $SYSTEM.OBJ.DeletePackage("ZorgAB.Api.Client")
}

/// Generate ZorgAB API
ClassMethod GenerateAll() As %Status
{
    return ..Generate("ZorgAB.Api.Client", "https://vzvznl.github.io/VZVZ-FHIR-api/openapi-zorgab-odata.yml")
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
