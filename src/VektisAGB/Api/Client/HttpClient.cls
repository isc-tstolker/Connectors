Class VektisAGB.Api.Client.HttpClient Extends %RegisteredObject [ ProcedureBlock ]
{

Parameter SERVER = "https://test-agb-api.vektis.nl/";

Parameter SSLCONFIGURATION = "DefaultSSL";

Property HttpRequest [ InitialExpression = {##class(%Net.HttpRequest).%New()} ];

Property SSLConfiguration As %String [ InitialExpression = {..#SSLCONFIGURATION} ];

Property Server As %String [ InitialExpression = {..#SERVER} ];

Property URLComponents [ MultiDimensional ];

Method %OnNew(Server As %String, SSLConfiguration As %String) As %Status
{
	Set:$Data(Server) ..Server = Server
	Set:$Data(SSLConfiguration) ..SSLConfiguration = SSLConfiguration
	Quit ..InitializeHttpRequestObject()
}

Method InitializeHttpRequestObject() As %Status
{
	Set ..HttpRequest = ##class(%Net.HttpRequest).%New()
	Do ##class(%Net.URLParser).Decompose(..Server, .components)
	Set:$Data(components("host"), host) ..HttpRequest.Server = host
	Set:$Data(components("port"), port) ..HttpRequest.Port = port
	Set:$$$LOWER($Get(components("scheme")))="https" ..HttpRequest.Https = $$$YES, ..HttpRequest.SSLConfiguration = ..SSLConfiguration
	Merge:$Data(components) ..URLComponents = components
	Quit $$$OK
}

/// Implement operationId : OndernemingBasisMetPeildatum
/// get /v2/ondernemingen/{agbcode}/{peildatum}
Method OndernemingBasisMetPeildatum(requestMessage As VektisAGB.Api.Client.requests.OndernemingBasisMetPeildatum, Output responseMessage As VektisAGB.Api.Client.responses.OndernemingBasisMetPeildatum = {##class(VektisAGB.Api.Client.responses.OndernemingBasisMetPeildatum).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("GET", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "OndernemingBasisMetPeildatum"))
	Quit sc
}

/// Implement operationId : OndernemingBasisinformatie
/// get /v2/ondernemingen/{agbcode}
Method OndernemingBasisinformatie(requestMessage As VektisAGB.Api.Client.requests.OndernemingBasisinformatie, Output responseMessage As VektisAGB.Api.Client.responses.OndernemingBasisinformatie = {##class(VektisAGB.Api.Client.responses.OndernemingBasisinformatie).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("GET", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "OndernemingBasisinformatie"))
	Quit sc
}

/// Implement operationId : OndernemingMutatiesMetZorgSoort
/// get /v2/ondernemingen/mutaties/{zorgsoort}/{vanaf}
Method OndernemingMutatiesMetZorgSoort(requestMessage As VektisAGB.Api.Client.requests.OndernemingMutatiesMetZorgSoort, Output responseMessage As VektisAGB.Api.Client.responses.OndernemingMutatiesMetZorgSoort = {##class(VektisAGB.Api.Client.responses.OndernemingMutatiesMetZorgSoort).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("GET", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "OndernemingMutatiesMetZorgSoort"))
	Quit sc
}

/// Implement operationId : OndernemingOndernemingOrganisatieV2
/// get /v2/ondernemingen/{agbcode}/relaties/organisatie
Method OndernemingOndernemingOrganisatieV2(requestMessage As VektisAGB.Api.Client.requests.OndernemingOndernemingOrganisatieV2, Output responseMessage As VektisAGB.Api.Client.responses.OndernemingOndernemingOrganisatieV2 = {##class(VektisAGB.Api.Client.responses.OndernemingOndernemingOrganisatieV2).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("GET", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "OndernemingOndernemingOrganisatieV2"))
	Quit sc
}

/// Implement operationId : OndernemingOndernemingRelatiesTotaalV2
/// get /v2/ondernemingen/{agbcode}/relaties/totaal
Method OndernemingOndernemingRelatiesTotaalV2(requestMessage As VektisAGB.Api.Client.requests.OndernemingOndernemingRelatiesTotaalV2, Output responseMessage As VektisAGB.Api.Client.responses.OndernemingOndernemingRelatiesTotaalV2 = {##class(VektisAGB.Api.Client.responses.OndernemingOndernemingRelatiesTotaalV2).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("GET", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "OndernemingOndernemingRelatiesTotaalV2"))
	Quit sc
}

/// Implement operationId : OndernemingOndernemingRelatiesV2
/// get /v2/ondernemingen/{agbcode}/relaties
Method OndernemingOndernemingRelatiesV2(requestMessage As VektisAGB.Api.Client.requests.OndernemingOndernemingRelatiesV2, Output responseMessage As VektisAGB.Api.Client.responses.OndernemingOndernemingRelatiesV2 = {##class(VektisAGB.Api.Client.responses.OndernemingOndernemingRelatiesV2).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("GET", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "OndernemingOndernemingRelatiesV2"))
	Quit sc
}

/// Implement operationId : OndernemingOrganisatieMetPeildatumV2
/// get /v2/ondernemingen/{agbcode}/relaties/organisatie/{peildatum}
Method OndernemingOrganisatieMetPeildatumV2(requestMessage As VektisAGB.Api.Client.requests.OndernemingOrganisatieMetPeildatumV2, Output responseMessage As VektisAGB.Api.Client.responses.OndernemingOrganisatieMetPeildatumV2 = {##class(VektisAGB.Api.Client.responses.OndernemingOrganisatieMetPeildatumV2).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("GET", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "OndernemingOrganisatieMetPeildatumV2"))
	Quit sc
}

/// Implement operationId : OndernemingRelatiesMetPeildatumV2
/// get /v2/ondernemingen/{agbcode}/relaties/{peildatum}
Method OndernemingRelatiesMetPeildatumV2(requestMessage As VektisAGB.Api.Client.requests.OndernemingRelatiesMetPeildatumV2, Output responseMessage As VektisAGB.Api.Client.responses.OndernemingRelatiesMetPeildatumV2 = {##class(VektisAGB.Api.Client.responses.OndernemingRelatiesMetPeildatumV2).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("GET", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "OndernemingRelatiesMetPeildatumV2"))
	Quit sc
}

/// Implement operationId : OndernemingZorgpartijMutaties
/// get /v2/ondernemingen/mutaties/{vanaf}
Method OndernemingZorgpartijMutaties(requestMessage As VektisAGB.Api.Client.requests.OndernemingZorgpartijMutaties, Output responseMessage As VektisAGB.Api.Client.responses.OndernemingZorgpartijMutaties = {##class(VektisAGB.Api.Client.responses.OndernemingZorgpartijMutaties).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("GET", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "OndernemingZorgpartijMutaties"))
	Quit sc
}

/// Implement operationId : ReferentiegegevensAcademischeTitels
/// get /v2/academischetitels
Method ReferentiegegevensAcademischeTitels(requestMessage As VektisAGB.Api.Client.requests.ReferentiegegevensAcademischeTitels, Output responseMessage As VektisAGB.Api.Client.responses.ReferentiegegevensAcademischeTitels = {##class(VektisAGB.Api.Client.responses.ReferentiegegevensAcademischeTitels).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("GET", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "ReferentiegegevensAcademischeTitels"))
	Quit sc
}

/// Implement operationId : ReferentiegegevensAdresTypes
/// get /v2/adrestypes
Method ReferentiegegevensAdresTypes(requestMessage As VektisAGB.Api.Client.requests.ReferentiegegevensAdresTypes, Output responseMessage As VektisAGB.Api.Client.responses.ReferentiegegevensAdresTypes = {##class(VektisAGB.Api.Client.responses.ReferentiegegevensAdresTypes).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("GET", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "ReferentiegegevensAdresTypes"))
	Quit sc
}

/// Implement operationId : ReferentiegegevensArbeidsRelatieRollen
/// get /v2/relaties/arbeidsrelatie/zorgverlener/rollen
Method ReferentiegegevensArbeidsRelatieRollen(requestMessage As VektisAGB.Api.Client.requests.ReferentiegegevensArbeidsRelatieRollen, Output responseMessage As VektisAGB.Api.Client.responses.ReferentiegegevensArbeidsRelatieRollen = {##class(VektisAGB.Api.Client.responses.ReferentiegegevensArbeidsRelatieRollen).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("GET", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "ReferentiegegevensArbeidsRelatieRollen"))
	Quit sc
}

/// Implement operationId : ReferentiegegevensBeheerders
/// get /v2/beheerders
Method ReferentiegegevensBeheerders(requestMessage As VektisAGB.Api.Client.requests.ReferentiegegevensBeheerders, Output responseMessage As VektisAGB.Api.Client.responses.ReferentiegegevensBeheerders = {##class(VektisAGB.Api.Client.responses.ReferentiegegevensBeheerders).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("GET", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "ReferentiegegevensBeheerders"))
	Quit sc
}

/// Implement operationId : ReferentiegegevensBekend
/// get /v2/adres/correspondentie/{postcode}/{huisnummer}
Method ReferentiegegevensBekend(requestMessage As VektisAGB.Api.Client.requests.ReferentiegegevensBekend, Output responseMessage As VektisAGB.Api.Client.responses.ReferentiegegevensBekend = {##class(VektisAGB.Api.Client.responses.ReferentiegegevensBekend).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("GET", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "ReferentiegegevensBekend"))
	Quit sc
}

/// Implement operationId : ReferentiegegevensCommunicatieGegevenTypes
/// get /v2/communicatiegegeventypes
Method ReferentiegegevensCommunicatieGegevenTypes(requestMessage As VektisAGB.Api.Client.requests.ReferentiegegevensCommunicatieGegevenTypes, Output responseMessage As VektisAGB.Api.Client.responses.ReferentiegegevensCommunicatieGegevenTypes = {##class(VektisAGB.Api.Client.responses.ReferentiegegevensCommunicatieGegevenTypes).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("GET", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "ReferentiegegevensCommunicatieGegevenTypes"))
	Quit sc
}

/// Implement operationId : ReferentiegegevensDoelen
/// get /v2/doelen
Method ReferentiegegevensDoelen(requestMessage As VektisAGB.Api.Client.requests.ReferentiegegevensDoelen, Output responseMessage As VektisAGB.Api.Client.responses.ReferentiegegevensDoelen = {##class(VektisAGB.Api.Client.responses.ReferentiegegevensDoelen).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("GET", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "ReferentiegegevensDoelen"))
	Quit sc
}

/// Implement operationId : ReferentiegegevensErkenningen
/// get /v2/erkenningen
Method ReferentiegegevensErkenningen(requestMessage As VektisAGB.Api.Client.requests.ReferentiegegevensErkenningen, Output responseMessage As VektisAGB.Api.Client.responses.ReferentiegegevensErkenningen = {##class(VektisAGB.Api.Client.responses.ReferentiegegevensErkenningen).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("GET", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "ReferentiegegevensErkenningen"))
	Quit sc
}

/// Implement operationId : ReferentiegegevensGeslachten
/// get /v2/geslachten
Method ReferentiegegevensGeslachten(requestMessage As VektisAGB.Api.Client.requests.ReferentiegegevensGeslachten, Output responseMessage As VektisAGB.Api.Client.responses.ReferentiegegevensGeslachten = {##class(VektisAGB.Api.Client.responses.ReferentiegegevensGeslachten).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("GET", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "ReferentiegegevensGeslachten"))
	Quit sc
}

/// Implement operationId : ReferentiegegevensKwalificaties
/// get /v2/kwalificaties
Method ReferentiegegevensKwalificaties(requestMessage As VektisAGB.Api.Client.requests.ReferentiegegevensKwalificaties, Output responseMessage As VektisAGB.Api.Client.responses.ReferentiegegevensKwalificaties = {##class(VektisAGB.Api.Client.responses.ReferentiegegevensKwalificaties).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("GET", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "ReferentiegegevensKwalificaties"))
	Quit sc
}

/// Implement operationId : ReferentiegegevensKwalificatiesOndernemingVestiging
/// get /v2/kwalificaties/ondernemingvestiging
Method ReferentiegegevensKwalificatiesOndernemingVestiging(requestMessage As VektisAGB.Api.Client.requests.ReferentiegegevensKwalificatiesOndernemingVestiging, Output responseMessage As VektisAGB.Api.Client.responses.ReferentiegegevensKwalificatiesOndernemingVestiging = {##class(VektisAGB.Api.Client.responses.ReferentiegegevensKwalificatiesOndernemingVestiging).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("GET", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "ReferentiegegevensKwalificatiesOndernemingVestiging"))
	Quit sc
}

/// Implement operationId : ReferentiegegevensKwalificatiesZorgverlener
/// get /v2/kwalificaties/zorgverlener
Method ReferentiegegevensKwalificatiesZorgverlener(requestMessage As VektisAGB.Api.Client.requests.ReferentiegegevensKwalificatiesZorgverlener, Output responseMessage As VektisAGB.Api.Client.responses.ReferentiegegevensKwalificatiesZorgverlener = {##class(VektisAGB.Api.Client.responses.ReferentiegegevensKwalificatiesZorgverlener).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("GET", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "ReferentiegegevensKwalificatiesZorgverlener"))
	Quit sc
}

/// Implement operationId : ReferentiegegevensLanden
/// get /v2/landen
Method ReferentiegegevensLanden(requestMessage As VektisAGB.Api.Client.requests.ReferentiegegevensLanden, Output responseMessage As VektisAGB.Api.Client.responses.ReferentiegegevensLanden = {##class(VektisAGB.Api.Client.responses.ReferentiegegevensLanden).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("GET", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "ReferentiegegevensLanden"))
	Quit sc
}

/// Implement operationId : ReferentiegegevensProvincies
/// get /v2/provincies
Method ReferentiegegevensProvincies(requestMessage As VektisAGB.Api.Client.requests.ReferentiegegevensProvincies, Output responseMessage As VektisAGB.Api.Client.responses.ReferentiegegevensProvincies = {##class(VektisAGB.Api.Client.responses.ReferentiegegevensProvincies).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("GET", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "ReferentiegegevensProvincies"))
	Quit sc
}

/// Implement operationId : ReferentiegegevensRedenenEinde
/// get /v2/redeneneinde
Method ReferentiegegevensRedenenEinde(requestMessage As VektisAGB.Api.Client.requests.ReferentiegegevensRedenenEinde, Output responseMessage As VektisAGB.Api.Client.responses.ReferentiegegevensRedenenEinde = {##class(VektisAGB.Api.Client.responses.ReferentiegegevensRedenenEinde).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("GET", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "ReferentiegegevensRedenenEinde"))
	Quit sc
}

/// Implement operationId : ReferentiegegevensRelatieRollen
/// get /v2/relatierollen
Method ReferentiegegevensRelatieRollen(requestMessage As VektisAGB.Api.Client.requests.ReferentiegegevensRelatieRollen, Output responseMessage As VektisAGB.Api.Client.responses.ReferentiegegevensRelatieRollen = {##class(VektisAGB.Api.Client.responses.ReferentiegegevensRelatieRollen).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("GET", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "ReferentiegegevensRelatieRollen"))
	Quit sc
}

/// Implement operationId : ReferentiegegevensRelatieTypes
/// get /v2/relatietypes
Method ReferentiegegevensRelatieTypes(requestMessage As VektisAGB.Api.Client.requests.ReferentiegegevensRelatieTypes, Output responseMessage As VektisAGB.Api.Client.responses.ReferentiegegevensRelatieTypes = {##class(VektisAGB.Api.Client.responses.ReferentiegegevensRelatieTypes).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("GET", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "ReferentiegegevensRelatieTypes"))
	Quit sc
}

/// Implement operationId : ReferentiegegevensVoorvoegsels
/// get /v2/voorvoegsels
Method ReferentiegegevensVoorvoegsels(requestMessage As VektisAGB.Api.Client.requests.ReferentiegegevensVoorvoegsels, Output responseMessage As VektisAGB.Api.Client.responses.ReferentiegegevensVoorvoegsels = {##class(VektisAGB.Api.Client.responses.ReferentiegegevensVoorvoegsels).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("GET", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "ReferentiegegevensVoorvoegsels"))
	Quit sc
}

/// Implement operationId : ReferentiegegevensWerkzaamBijRollen
/// get /v2/relaties/werkzaambij/zorgverlener/rollen
Method ReferentiegegevensWerkzaamBijRollen(requestMessage As VektisAGB.Api.Client.requests.ReferentiegegevensWerkzaamBijRollen, Output responseMessage As VektisAGB.Api.Client.responses.ReferentiegegevensWerkzaamBijRollen = {##class(VektisAGB.Api.Client.responses.ReferentiegegevensWerkzaamBijRollen).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("GET", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "ReferentiegegevensWerkzaamBijRollen"))
	Quit sc
}

/// Implement operationId : ReferentiegegevensZorgpartijTypes
/// get /v2/zorgpartijtypes
Method ReferentiegegevensZorgpartijTypes(requestMessage As VektisAGB.Api.Client.requests.ReferentiegegevensZorgpartijTypes, Output responseMessage As VektisAGB.Api.Client.responses.ReferentiegegevensZorgpartijTypes = {##class(VektisAGB.Api.Client.responses.ReferentiegegevensZorgpartijTypes).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("GET", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "ReferentiegegevensZorgpartijTypes"))
	Quit sc
}

/// Implement operationId : ReferentiegegevensZorgsoortenOndernemingVestiging
/// get /v2/zorgsoorten/ondernemingvestiging
Method ReferentiegegevensZorgsoortenOndernemingVestiging(requestMessage As VektisAGB.Api.Client.requests.ReferentiegegevensZorgsoortenOndernemingVestiging, Output responseMessage As VektisAGB.Api.Client.responses.ReferentiegegevensZorgsoortenOndernemingVestiging = {##class(VektisAGB.Api.Client.responses.ReferentiegegevensZorgsoortenOndernemingVestiging).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("GET", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "ReferentiegegevensZorgsoortenOndernemingVestiging"))
	Quit sc
}

/// Implement operationId : ReferentiegegevensZorgsoortenZorgverlener
/// get /v2/zorgsoorten/zorgverlener
Method ReferentiegegevensZorgsoortenZorgverlener(requestMessage As VektisAGB.Api.Client.requests.ReferentiegegevensZorgsoortenZorgverlener, Output responseMessage As VektisAGB.Api.Client.responses.ReferentiegegevensZorgsoortenZorgverlener = {##class(VektisAGB.Api.Client.responses.ReferentiegegevensZorgsoortenZorgverlener).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("GET", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "ReferentiegegevensZorgsoortenZorgverlener"))
	Quit sc
}

/// Implement operationId : TestGet
/// get /v2/test/{number}
Method TestGet(requestMessage As VektisAGB.Api.Client.requests.TestGet, Output responseMessage As VektisAGB.Api.Client.responses.TestGet = {##class(VektisAGB.Api.Client.responses.TestGet).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("GET", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "TestGet"))
	Quit sc
}

/// Implement operationId : VestigingBasisinformatie
/// get /v2/vestigingen/{agbcode}
Method VestigingBasisinformatie(requestMessage As VektisAGB.Api.Client.requests.VestigingBasisinformatie, Output responseMessage As VektisAGB.Api.Client.responses.VestigingBasisinformatie = {##class(VektisAGB.Api.Client.responses.VestigingBasisinformatie).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("GET", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "VestigingBasisinformatie"))
	Quit sc
}

/// Implement operationId : VestigingMetPeildatum
/// get /v2/vestigingen/{agbcode}/{peildatum}
Method VestigingMetPeildatum(requestMessage As VektisAGB.Api.Client.requests.VestigingMetPeildatum, Output responseMessage As VektisAGB.Api.Client.responses.VestigingMetPeildatum = {##class(VektisAGB.Api.Client.responses.VestigingMetPeildatum).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("GET", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "VestigingMetPeildatum"))
	Quit sc
}

/// Implement operationId : VestigingMutatiesMetZorgsoort
/// get /v2/vestigingen/mutaties/{zorgsoort}/{vanaf}
Method VestigingMutatiesMetZorgsoort(requestMessage As VektisAGB.Api.Client.requests.VestigingMutatiesMetZorgsoort, Output responseMessage As VektisAGB.Api.Client.responses.VestigingMutatiesMetZorgsoort = {##class(VektisAGB.Api.Client.responses.VestigingMutatiesMetZorgsoort).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("GET", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "VestigingMutatiesMetZorgsoort"))
	Quit sc
}

/// Implement operationId : VestigingRelatiesMetPeildatumV2
/// get /v2/vestigingen/{agbcode}/relaties/{peildatum}
Method VestigingRelatiesMetPeildatumV2(requestMessage As VektisAGB.Api.Client.requests.VestigingRelatiesMetPeildatumV2, Output responseMessage As VektisAGB.Api.Client.responses.VestigingRelatiesMetPeildatumV2 = {##class(VektisAGB.Api.Client.responses.VestigingRelatiesMetPeildatumV2).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("GET", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "VestigingRelatiesMetPeildatumV2"))
	Quit sc
}

/// Implement operationId : VestigingVestigingRelatiesTotaalV2
/// get /v2/vestigingen/{agbcode}/relaties/totaal
Method VestigingVestigingRelatiesTotaalV2(requestMessage As VektisAGB.Api.Client.requests.VestigingVestigingRelatiesTotaalV2, Output responseMessage As VektisAGB.Api.Client.responses.VestigingVestigingRelatiesTotaalV2 = {##class(VektisAGB.Api.Client.responses.VestigingVestigingRelatiesTotaalV2).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("GET", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "VestigingVestigingRelatiesTotaalV2"))
	Quit sc
}

/// Implement operationId : VestigingVestigingRelatiesV2
/// get /v2/vestigingen/{agbcode}/relaties
Method VestigingVestigingRelatiesV2(requestMessage As VektisAGB.Api.Client.requests.VestigingVestigingRelatiesV2, Output responseMessage As VektisAGB.Api.Client.responses.VestigingVestigingRelatiesV2 = {##class(VektisAGB.Api.Client.responses.VestigingVestigingRelatiesV2).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("GET", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "VestigingVestigingRelatiesV2"))
	Quit sc
}

/// Implement operationId : VestigingZorgpartijMutaties
/// get /v2/vestigingen/mutaties/{vanaf}
Method VestigingZorgpartijMutaties(requestMessage As VektisAGB.Api.Client.requests.VestigingZorgpartijMutaties, Output responseMessage As VektisAGB.Api.Client.responses.VestigingZorgpartijMutaties = {##class(VektisAGB.Api.Client.responses.VestigingZorgpartijMutaties).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("GET", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "VestigingZorgpartijMutaties"))
	Quit sc
}

/// Implement operationId : ZorgpartijMutatiesMetZorgsoort
/// get /v2/zorgpartijen/mutaties/{zorgsoort}/{vanaf}
Method ZorgpartijMutatiesMetZorgsoort(requestMessage As VektisAGB.Api.Client.requests.ZorgpartijMutatiesMetZorgsoort, Output responseMessage As VektisAGB.Api.Client.responses.ZorgpartijMutatiesMetZorgsoort = {##class(VektisAGB.Api.Client.responses.ZorgpartijMutatiesMetZorgsoort).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("GET", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "ZorgpartijMutatiesMetZorgsoort"))
	Quit sc
}

/// Implement operationId : ZorgpartijZorgpartijMutaties
/// get /v2/zorgpartijen/mutaties/{vanaf}
Method ZorgpartijZorgpartijMutaties(requestMessage As VektisAGB.Api.Client.requests.ZorgpartijZorgpartijMutaties, Output responseMessage As VektisAGB.Api.Client.responses.ZorgpartijZorgpartijMutaties = {##class(VektisAGB.Api.Client.responses.ZorgpartijZorgpartijMutaties).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("GET", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "ZorgpartijZorgpartijMutaties"))
	Quit sc
}

/// Implement operationId : ZorgverlenerBasisMetPeildatum
/// get /v2/zorgverleners/{agbcode}/{peildatum}
Method ZorgverlenerBasisMetPeildatum(requestMessage As VektisAGB.Api.Client.requests.ZorgverlenerBasisMetPeildatum, Output responseMessage As VektisAGB.Api.Client.responses.ZorgverlenerBasisMetPeildatum = {##class(VektisAGB.Api.Client.responses.ZorgverlenerBasisMetPeildatum).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("GET", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "ZorgverlenerBasisMetPeildatum"))
	Quit sc
}

/// Implement operationId : ZorgverlenerBasisinformatie
/// get /v2/zorgverleners/{agbcode}
Method ZorgverlenerBasisinformatie(requestMessage As VektisAGB.Api.Client.requests.ZorgverlenerBasisinformatie, Output responseMessage As VektisAGB.Api.Client.responses.ZorgverlenerBasisinformatie = {##class(VektisAGB.Api.Client.responses.ZorgverlenerBasisinformatie).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("GET", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "ZorgverlenerBasisinformatie"))
	Quit sc
}

/// Implement operationId : ZorgverlenerMutatiesMetZorgsoort
/// get /v2/zorgverleners/mutaties/{zorgsoort}/{vanaf}
Method ZorgverlenerMutatiesMetZorgsoort(requestMessage As VektisAGB.Api.Client.requests.ZorgverlenerMutatiesMetZorgsoort, Output responseMessage As VektisAGB.Api.Client.responses.ZorgverlenerMutatiesMetZorgsoort = {##class(VektisAGB.Api.Client.responses.ZorgverlenerMutatiesMetZorgsoort).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("GET", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "ZorgverlenerMutatiesMetZorgsoort"))
	Quit sc
}

/// Implement operationId : ZorgverlenerRelatiesMetPeildatumV2
/// get /v2/zorgverleners/{agbcode}/relaties/{peildatum}
Method ZorgverlenerRelatiesMetPeildatumV2(requestMessage As VektisAGB.Api.Client.requests.ZorgverlenerRelatiesMetPeildatumV2, Output responseMessage As VektisAGB.Api.Client.responses.ZorgverlenerRelatiesMetPeildatumV2 = {##class(VektisAGB.Api.Client.responses.ZorgverlenerRelatiesMetPeildatumV2).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("GET", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "ZorgverlenerRelatiesMetPeildatumV2"))
	Quit sc
}

/// Implement operationId : ZorgverlenerZorgpartijMutaties
/// get /v2/zorgverleners/mutaties/{vanaf}
Method ZorgverlenerZorgpartijMutaties(requestMessage As VektisAGB.Api.Client.requests.ZorgverlenerZorgpartijMutaties, Output responseMessage As VektisAGB.Api.Client.responses.ZorgverlenerZorgpartijMutaties = {##class(VektisAGB.Api.Client.responses.ZorgverlenerZorgpartijMutaties).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("GET", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "ZorgverlenerZorgpartijMutaties"))
	Quit sc
}

/// Implement operationId : ZorgverlenerZorgverlenerRelatiesTotaalV2
/// get /v2/zorgverleners/{agbcode}/relaties/totaal
Method ZorgverlenerZorgverlenerRelatiesTotaalV2(requestMessage As VektisAGB.Api.Client.requests.ZorgverlenerZorgverlenerRelatiesTotaalV2, Output responseMessage As VektisAGB.Api.Client.responses.ZorgverlenerZorgverlenerRelatiesTotaalV2 = {##class(VektisAGB.Api.Client.responses.ZorgverlenerZorgverlenerRelatiesTotaalV2).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("GET", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "ZorgverlenerZorgverlenerRelatiesTotaalV2"))
	Quit sc
}

/// Implement operationId : ZorgverlenerZorgverlenerRelatiesV2
/// get /v2/zorgverleners/{agbcode}/relaties
Method ZorgverlenerZorgverlenerRelatiesV2(requestMessage As VektisAGB.Api.Client.requests.ZorgverlenerZorgverlenerRelatiesV2, Output responseMessage As VektisAGB.Api.Client.responses.ZorgverlenerZorgverlenerRelatiesV2 = {##class(VektisAGB.Api.Client.responses.ZorgverlenerZorgverlenerRelatiesV2).%New()}) As %Status
{
	Set sc = $$$OK
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(..HttpRequest))
	$$$QuitOnError(..HttpRequest.Send("GET", $Get(..URLComponents("path")) _ requestMessage.%URL))
	$$$QuitOnError(responseMessage.LoadFromResponse(..HttpRequest.HttpResponse, "ZorgverlenerZorgverlenerRelatiesV2"))
	Quit sc
}

}
