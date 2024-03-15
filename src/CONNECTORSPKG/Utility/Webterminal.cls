Class CONNECTORSPKG.Utility.Webterminal
{

ClassMethod CreateDefaultSSLConfig() As %Status
{
	Set sc = $$$OK
	New $NAMESPACE
	Set $NAMESPACE = "%SYS"
	Set name = "Default"

	If ##class(Security.SSLConfigs).Exists(name) = 0 {
		Set sc = ##class(Security.SSLConfigs).Create(name)
		write "Created Default SSL config" 
	}

	return sc
}

/// Add InterSystems Package Manager (ZPM)
ClassMethod LoadZPM() As %Status
{
	New $NAMESPACE
	Set $NAMESPACE = "%SYS"
	set httpRequest = ##class(%Net.HttpRequest).%New()
	set httpRequest.Server = "pm.community.intersystems.com"
	set httpRequest.SSLConfiguration = "Default"

	set sc = httpRequest.Get("/packages/zpm/latest/installer")

	if $$$ISERR(sc)
	{
		Do $System.Status.DisplayError(sc)
		return sc
	}

	return $system.OBJ.LoadStream(httpRequest.HttpResponse.Data, "c")
}

/// Description
ClassMethod install() As %Status [ CodeMode = generator ]
{
	New $NAMESPACE
	Set $NAMESPACE = "%SYS"
    zpm "install webterminal"
}

}
