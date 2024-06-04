/// Adapter for sending HTTP requests to a designated HTTP server, with HTTP headers, URL, form variables and cookies if so invoked
/// Version with less settings
Class CONNECTORSPKG.BO.GenericHTTP.OutboundAdapter Extends EnsLib.HTTP.OutboundAdapter
{

Property URL As %String(MAXLEN = "") [ Required ];

/// Deze Settings worden onderdrukt.
/// See also https://docs.intersystems.com/irislatest/csp/docbook/DocBook.UI.Page.cls?KEY=EGDV_prog#EGDV_prog_settings 
Parameter SETTINGS As STRING = "-RegistryID,-HTTPServer,-HTTPPort,SSLConfig,-LocalInterface,-ProxyServer,-ProxyPort,-ProxyHTTPS,-ProxyHttpTunnel,-UseCookies,-ClearCachedResponseCookies,-ProvideMetricsForSAM";

}
