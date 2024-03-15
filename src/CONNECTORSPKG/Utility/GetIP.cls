/// Get IP address using python
Class CONNECTORSPKG.Utility.GetIP Extends %RegisteredObject
{

/// Get my external IP address
ClassMethod Get()
{
	set sc = $$$OK

    set request = ##class(%Net.HttpRequest).%New()
	do request.SetParam("format", "json")
    set request.Https = 1
    set request.SSLConfiguration = "DefaultSSL"
    set sc = request.Get("https://api.ipify.org")

	if $$$ISERR(sc)
    {
        write $SYSTEM.Status.GetErrorText(sc),!
		return
	}

	if $ISOBJECT(request.HttpResponse) {
		// {"ip":"18.169.26.142"}
		set reply = ##class(%DynamicObject).%FromJSON(request.HttpResponse.Data)
        write "External IP Address: ", reply.ip
	}
}

/// Get my internal IP address
ClassMethod GetInternal() [ Language = python ]
{
    ## importing socket module
    import socket
    ## getting the hostname by socket.gethostname() method
    hostname = socket.gethostname()
    ## getting the IP address using socket.gethostbyname() method
    ip_address = socket.gethostbyname(hostname)
    ## printing the hostname and ip_address
    print(f"Hostname: {hostname}\r")
    print(f"IP Address: {ip_address}\r")
}

}
