/// File Utilities
Class CONNECTORSPKG.Utility.File
{

/// List contents of a file
ClassMethod ListFile(name As %String = "D:\Mbox\Certificates\2021-11-29\services-cert-900024352.pem")
{
	set file = ##class(%File).%New(name)
    set sc = file.Open( "R" ) 

    if $$$ISERR(sc)
	{
		w "Failed to open file " _ name,!
		return
	}

    while 'file.AtEnd
	{
        w file.ReadLine(),"\n",!
    }

    do file.Close()
}

}
