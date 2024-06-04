Class CONNECTORSPKG.ZorgAB.Api.Client.responses.organizationsPOST Extends CONNECTORSPKG.ZorgAB.Api.Client.responses.GenericResponse [ ProcedureBlock ]
{

/// http status code = 201 content-type = application/json
/// Status 201
Property Organization As CONNECTORSPKG.ZorgAB.Api.Client.model.Organization;

/// Implement operationId : organizationsPOST
/// post /organizations
Method LoadFromResponse(httpResponse As %Net.HttpResponse, caller As %String = "") As %Status
{
	Set sc = $$$OK
	Do ##super(httpResponse, caller)
	If $$$LOWER($Piece(httpResponse.ContentType,";",1))="application/json",httpResponse.StatusCode = "201" {
		Set ..Organization = ##class(CONNECTORSPKG.ZorgAB.Api.Client.model.Organization).%New()
		Set ..status = ..Organization.%JSONImport(httpResponse.Data)
		Return sc
	}
	Return sc
}

Storage Default
{
<Data name="organizationsPOSTDefaultData">
<Subscript>"organizationsPOST"</Subscript>
<Value name="1">
<Value>Organization</Value>
</Value>
</Data>
<DefaultData>organizationsPOSTDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
