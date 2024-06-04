/// Generated Business Operation
Class VektisAGB.Api.Client.bo.Operation Extends Ens.BusinessOperation [ Inheritance = left, ProcedureBlock ]
{

/// Token
Property Token As %String(MAXLEN = 50) [ InitialExpression = "057f6201-ea65-4fce-8803-50e3507fb06a" ];

Parameter SETTINGS = "Token:Basic";

Parameter ADAPTER = "EnsLib.HTTP.OutboundAdapter";

Property Adapter As EnsLib.HTTP.OutboundAdapter;

/// Implement operationId : OndernemingBasisMetPeildatum
/// get /v2/ondernemingen/{agbcode}/{peildatum}
Method OndernemingBasisMetPeildatum(requestMessage As VektisAGB.Api.Client.requests.OndernemingBasisMetPeildatum, Output responseMessage As VektisAGB.Api.Client.responses.OndernemingBasisMetPeildatum) As %Status
{
	set responseMessage = ##class(VektisAGB.Api.Client.responses.OndernemingBasisMetPeildatum).%New()
	return ..zzHandleRequest(requestMessage, "OndernemingBasisMetPeildatum", "get", responseMessage)
}

/// Implement operationId : OndernemingBasisinformatie
/// get /v2/ondernemingen/{agbcode}
Method OndernemingBasisinformatie(requestMessage As VektisAGB.Api.Client.requests.OndernemingBasisinformatie, Output responseMessage As VektisAGB.Api.Client.responses.OndernemingBasisinformatie) As %Status
{
	set responseMessage = ##class(VektisAGB.Api.Client.responses.OndernemingBasisinformatie).%New()
	return ..zzHandleRequest(requestMessage, "OndernemingBasisinformatie", "get", responseMessage)
}

/// Implement operationId : OndernemingMutatiesMetZorgSoort
/// get /v2/ondernemingen/mutaties/{zorgsoort}/{vanaf}
Method OndernemingMutatiesMetZorgSoort(requestMessage As VektisAGB.Api.Client.requests.OndernemingMutatiesMetZorgSoort, Output responseMessage As VektisAGB.Api.Client.responses.OndernemingMutatiesMetZorgSoort) As %Status
{
	set responseMessage = ##class(VektisAGB.Api.Client.responses.OndernemingMutatiesMetZorgSoort).%New()
	return ..zzHandleRequest(requestMessage, "OndernemingMutatiesMetZorgSoort", "get", responseMessage)
}

/// Implement operationId : OndernemingOndernemingOrganisatieV2
/// get /v2/ondernemingen/{agbcode}/relaties/organisatie
Method OndernemingOndernemingOrganisatieV2(requestMessage As VektisAGB.Api.Client.requests.OndernemingOndernemingOrganisatieV2, Output responseMessage As VektisAGB.Api.Client.responses.OndernemingOndernemingOrganisatieV2) As %Status
{
	set responseMessage = ##class(VektisAGB.Api.Client.responses.OndernemingOndernemingOrganisatieV2).%New()
	return ..zzHandleRequest(requestMessage, "OndernemingOndernemingOrganisatieV2", "get", responseMessage)
}

/// Implement operationId : OndernemingOndernemingRelatiesTotaalV2
/// get /v2/ondernemingen/{agbcode}/relaties/totaal
Method OndernemingOndernemingRelatiesTotaalV2(requestMessage As VektisAGB.Api.Client.requests.OndernemingOndernemingRelatiesTotaalV2, Output responseMessage As VektisAGB.Api.Client.responses.OndernemingOndernemingRelatiesTotaalV2) As %Status
{
	set responseMessage = ##class(VektisAGB.Api.Client.responses.OndernemingOndernemingRelatiesTotaalV2).%New()
	return ..zzHandleRequest(requestMessage, "OndernemingOndernemingRelatiesTotaalV2", "get", responseMessage)
}

/// Implement operationId : OndernemingOndernemingRelatiesV2
/// get /v2/ondernemingen/{agbcode}/relaties
Method OndernemingOndernemingRelatiesV2(requestMessage As VektisAGB.Api.Client.requests.OndernemingOndernemingRelatiesV2, Output responseMessage As VektisAGB.Api.Client.responses.OndernemingOndernemingRelatiesV2) As %Status
{
	set responseMessage = ##class(VektisAGB.Api.Client.responses.OndernemingOndernemingRelatiesV2).%New()
	return ..zzHandleRequest(requestMessage, "OndernemingOndernemingRelatiesV2", "get", responseMessage)
}

/// Implement operationId : OndernemingOrganisatieMetPeildatumV2
/// get /v2/ondernemingen/{agbcode}/relaties/organisatie/{peildatum}
Method OndernemingOrganisatieMetPeildatumV2(requestMessage As VektisAGB.Api.Client.requests.OndernemingOrganisatieMetPeildatumV2, Output responseMessage As VektisAGB.Api.Client.responses.OndernemingOrganisatieMetPeildatumV2) As %Status
{
	set responseMessage = ##class(VektisAGB.Api.Client.responses.OndernemingOrganisatieMetPeildatumV2).%New()
	return ..zzHandleRequest(requestMessage, "OndernemingOrganisatieMetPeildatumV2", "get", responseMessage)
}

/// Implement operationId : OndernemingRelatiesMetPeildatumV2
/// get /v2/ondernemingen/{agbcode}/relaties/{peildatum}
Method OndernemingRelatiesMetPeildatumV2(requestMessage As VektisAGB.Api.Client.requests.OndernemingRelatiesMetPeildatumV2, Output responseMessage As VektisAGB.Api.Client.responses.OndernemingRelatiesMetPeildatumV2) As %Status
{
	set responseMessage = ##class(VektisAGB.Api.Client.responses.OndernemingRelatiesMetPeildatumV2).%New()
	return ..zzHandleRequest(requestMessage, "OndernemingRelatiesMetPeildatumV2", "get", responseMessage)
}

/// Implement operationId : OndernemingZorgpartijMutaties
/// get /v2/ondernemingen/mutaties/{vanaf}
Method OndernemingZorgpartijMutaties(requestMessage As VektisAGB.Api.Client.requests.OndernemingZorgpartijMutaties, Output responseMessage As VektisAGB.Api.Client.responses.OndernemingZorgpartijMutaties) As %Status
{
	set responseMessage = ##class(VektisAGB.Api.Client.responses.OndernemingZorgpartijMutaties).%New()
	return ..zzHandleRequest(requestMessage, "OndernemingZorgpartijMutaties", "get", responseMessage)
}

/// Implement operationId : ReferentiegegevensAcademischeTitels
/// get /v2/academischetitels
Method ReferentiegegevensAcademischeTitels(requestMessage As VektisAGB.Api.Client.requests.ReferentiegegevensAcademischeTitels, Output responseMessage As VektisAGB.Api.Client.responses.ReferentiegegevensAcademischeTitels) As %Status
{
	set responseMessage = ##class(VektisAGB.Api.Client.responses.ReferentiegegevensAcademischeTitels).%New()
	return ..zzHandleRequest(requestMessage, "ReferentiegegevensAcademischeTitels", "get", responseMessage)
}

/// Implement operationId : ReferentiegegevensAdresTypes
/// get /v2/adrestypes
Method ReferentiegegevensAdresTypes(requestMessage As VektisAGB.Api.Client.requests.ReferentiegegevensAdresTypes, Output responseMessage As VektisAGB.Api.Client.responses.ReferentiegegevensAdresTypes) As %Status
{
	set responseMessage = ##class(VektisAGB.Api.Client.responses.ReferentiegegevensAdresTypes).%New()
	return ..zzHandleRequest(requestMessage, "ReferentiegegevensAdresTypes", "get", responseMessage)
}

/// Implement operationId : ReferentiegegevensArbeidsRelatieRollen
/// get /v2/relaties/arbeidsrelatie/zorgverlener/rollen
Method ReferentiegegevensArbeidsRelatieRollen(requestMessage As VektisAGB.Api.Client.requests.ReferentiegegevensArbeidsRelatieRollen, Output responseMessage As VektisAGB.Api.Client.responses.ReferentiegegevensArbeidsRelatieRollen) As %Status
{
	set responseMessage = ##class(VektisAGB.Api.Client.responses.ReferentiegegevensArbeidsRelatieRollen).%New()
	return ..zzHandleRequest(requestMessage, "ReferentiegegevensArbeidsRelatieRollen", "get", responseMessage)
}

/// Implement operationId : ReferentiegegevensBeheerders
/// get /v2/beheerders
Method ReferentiegegevensBeheerders(requestMessage As VektisAGB.Api.Client.requests.ReferentiegegevensBeheerders, Output responseMessage As VektisAGB.Api.Client.responses.ReferentiegegevensBeheerders) As %Status
{
	set responseMessage = ##class(VektisAGB.Api.Client.responses.ReferentiegegevensBeheerders).%New()
	return ..zzHandleRequest(requestMessage, "ReferentiegegevensBeheerders", "get", responseMessage)
}

/// Implement operationId : ReferentiegegevensBekend
/// get /v2/adres/correspondentie/{postcode}/{huisnummer}
Method ReferentiegegevensBekend(requestMessage As VektisAGB.Api.Client.requests.ReferentiegegevensBekend, Output responseMessage As VektisAGB.Api.Client.responses.ReferentiegegevensBekend) As %Status
{
	set responseMessage = ##class(VektisAGB.Api.Client.responses.ReferentiegegevensBekend).%New()
	return ..zzHandleRequest(requestMessage, "ReferentiegegevensBekend", "get", responseMessage)
}

/// Implement operationId : ReferentiegegevensCommunicatieGegevenTypes
/// get /v2/communicatiegegeventypes
Method ReferentiegegevensCommunicatieGegevenTypes(requestMessage As VektisAGB.Api.Client.requests.ReferentiegegevensCommunicatieGegevenTypes, Output responseMessage As VektisAGB.Api.Client.responses.ReferentiegegevensCommunicatieGegevenTypes) As %Status
{
	set responseMessage = ##class(VektisAGB.Api.Client.responses.ReferentiegegevensCommunicatieGegevenTypes).%New()
	return ..zzHandleRequest(requestMessage, "ReferentiegegevensCommunicatieGegevenTypes", "get", responseMessage)
}

/// Implement operationId : ReferentiegegevensDoelen
/// get /v2/doelen
Method ReferentiegegevensDoelen(requestMessage As VektisAGB.Api.Client.requests.ReferentiegegevensDoelen, Output responseMessage As VektisAGB.Api.Client.responses.ReferentiegegevensDoelen) As %Status
{
	set responseMessage = ##class(VektisAGB.Api.Client.responses.ReferentiegegevensDoelen).%New()
	return ..zzHandleRequest(requestMessage, "ReferentiegegevensDoelen", "get", responseMessage)
}

/// Implement operationId : ReferentiegegevensErkenningen
/// get /v2/erkenningen
Method ReferentiegegevensErkenningen(requestMessage As VektisAGB.Api.Client.requests.ReferentiegegevensErkenningen, Output responseMessage As VektisAGB.Api.Client.responses.ReferentiegegevensErkenningen) As %Status
{
	set responseMessage = ##class(VektisAGB.Api.Client.responses.ReferentiegegevensErkenningen).%New()
	return ..zzHandleRequest(requestMessage, "ReferentiegegevensErkenningen", "get", responseMessage)
}

/// Implement operationId : ReferentiegegevensGeslachten
/// get /v2/geslachten
Method ReferentiegegevensGeslachten(requestMessage As VektisAGB.Api.Client.requests.ReferentiegegevensGeslachten, Output responseMessage As VektisAGB.Api.Client.responses.ReferentiegegevensGeslachten) As %Status
{
	set responseMessage = ##class(VektisAGB.Api.Client.responses.ReferentiegegevensGeslachten).%New()
	return ..zzHandleRequest(requestMessage, "ReferentiegegevensGeslachten", "get", responseMessage)
}

/// Implement operationId : ReferentiegegevensKwalificaties
/// get /v2/kwalificaties
Method ReferentiegegevensKwalificaties(requestMessage As VektisAGB.Api.Client.requests.ReferentiegegevensKwalificaties, Output responseMessage As VektisAGB.Api.Client.responses.ReferentiegegevensKwalificaties) As %Status
{
	set responseMessage = ##class(VektisAGB.Api.Client.responses.ReferentiegegevensKwalificaties).%New()
	return ..zzHandleRequest(requestMessage, "ReferentiegegevensKwalificaties", "get", responseMessage)
}

/// Implement operationId : ReferentiegegevensKwalificatiesOndernemingVestiging
/// get /v2/kwalificaties/ondernemingvestiging
Method ReferentiegegevensKwalificatiesOndernemingVestiging(requestMessage As VektisAGB.Api.Client.requests.ReferentiegegevensKwalificatiesOndernemingVestiging, Output responseMessage As VektisAGB.Api.Client.responses.ReferentiegegevensKwalificatiesOndernemingVestiging) As %Status
{
	set responseMessage = ##class(VektisAGB.Api.Client.responses.ReferentiegegevensKwalificatiesOndernemingVestiging).%New()
	return ..zzHandleRequest(requestMessage, "ReferentiegegevensKwalificatiesOndernemingVestiging", "get", responseMessage)
}

/// Implement operationId : ReferentiegegevensKwalificatiesZorgverlener
/// get /v2/kwalificaties/zorgverlener
Method ReferentiegegevensKwalificatiesZorgverlener(requestMessage As VektisAGB.Api.Client.requests.ReferentiegegevensKwalificatiesZorgverlener, Output responseMessage As VektisAGB.Api.Client.responses.ReferentiegegevensKwalificatiesZorgverlener) As %Status
{
	set responseMessage = ##class(VektisAGB.Api.Client.responses.ReferentiegegevensKwalificatiesZorgverlener).%New()
	return ..zzHandleRequest(requestMessage, "ReferentiegegevensKwalificatiesZorgverlener", "get", responseMessage)
}

/// Implement operationId : ReferentiegegevensLanden
/// get /v2/landen
Method ReferentiegegevensLanden(requestMessage As VektisAGB.Api.Client.requests.ReferentiegegevensLanden, Output responseMessage As VektisAGB.Api.Client.responses.ReferentiegegevensLanden) As %Status
{
	set responseMessage = ##class(VektisAGB.Api.Client.responses.ReferentiegegevensLanden).%New()
	return ..zzHandleRequest(requestMessage, "ReferentiegegevensLanden", "get", responseMessage)
}

/// Implement operationId : ReferentiegegevensProvincies
/// get /v2/provincies
Method ReferentiegegevensProvincies(requestMessage As VektisAGB.Api.Client.requests.ReferentiegegevensProvincies, Output responseMessage As VektisAGB.Api.Client.responses.ReferentiegegevensProvincies) As %Status
{
	set responseMessage = ##class(VektisAGB.Api.Client.responses.ReferentiegegevensProvincies).%New()
	return ..zzHandleRequest(requestMessage, "ReferentiegegevensProvincies", "get", responseMessage)
}

/// Implement operationId : ReferentiegegevensRedenenEinde
/// get /v2/redeneneinde
Method ReferentiegegevensRedenenEinde(requestMessage As VektisAGB.Api.Client.requests.ReferentiegegevensRedenenEinde, Output responseMessage As VektisAGB.Api.Client.responses.ReferentiegegevensRedenenEinde) As %Status
{
	set responseMessage = ##class(VektisAGB.Api.Client.responses.ReferentiegegevensRedenenEinde).%New()
	return ..zzHandleRequest(requestMessage, "ReferentiegegevensRedenenEinde", "get", responseMessage)
}

/// Implement operationId : ReferentiegegevensRelatieRollen
/// get /v2/relatierollen
Method ReferentiegegevensRelatieRollen(requestMessage As VektisAGB.Api.Client.requests.ReferentiegegevensRelatieRollen, Output responseMessage As VektisAGB.Api.Client.responses.ReferentiegegevensRelatieRollen) As %Status
{
	set responseMessage = ##class(VektisAGB.Api.Client.responses.ReferentiegegevensRelatieRollen).%New()
	return ..zzHandleRequest(requestMessage, "ReferentiegegevensRelatieRollen", "get", responseMessage)
}

/// Implement operationId : ReferentiegegevensRelatieTypes
/// get /v2/relatietypes
Method ReferentiegegevensRelatieTypes(requestMessage As VektisAGB.Api.Client.requests.ReferentiegegevensRelatieTypes, Output responseMessage As VektisAGB.Api.Client.responses.ReferentiegegevensRelatieTypes) As %Status
{
	set responseMessage = ##class(VektisAGB.Api.Client.responses.ReferentiegegevensRelatieTypes).%New()
	return ..zzHandleRequest(requestMessage, "ReferentiegegevensRelatieTypes", "get", responseMessage)
}

/// Implement operationId : ReferentiegegevensVoorvoegsels
/// get /v2/voorvoegsels
Method ReferentiegegevensVoorvoegsels(requestMessage As VektisAGB.Api.Client.requests.ReferentiegegevensVoorvoegsels, Output responseMessage As VektisAGB.Api.Client.responses.ReferentiegegevensVoorvoegsels) As %Status
{
	set responseMessage = ##class(VektisAGB.Api.Client.responses.ReferentiegegevensVoorvoegsels).%New()
	return ..zzHandleRequest(requestMessage, "ReferentiegegevensVoorvoegsels", "get", responseMessage)
}

/// Implement operationId : ReferentiegegevensWerkzaamBijRollen
/// get /v2/relaties/werkzaambij/zorgverlener/rollen
Method ReferentiegegevensWerkzaamBijRollen(requestMessage As VektisAGB.Api.Client.requests.ReferentiegegevensWerkzaamBijRollen, Output responseMessage As VektisAGB.Api.Client.responses.ReferentiegegevensWerkzaamBijRollen) As %Status
{
	set responseMessage = ##class(VektisAGB.Api.Client.responses.ReferentiegegevensWerkzaamBijRollen).%New()
	return ..zzHandleRequest(requestMessage, "ReferentiegegevensWerkzaamBijRollen", "get", responseMessage)
}

/// Implement operationId : ReferentiegegevensZorgpartijTypes
/// get /v2/zorgpartijtypes
Method ReferentiegegevensZorgpartijTypes(requestMessage As VektisAGB.Api.Client.requests.ReferentiegegevensZorgpartijTypes, Output responseMessage As VektisAGB.Api.Client.responses.ReferentiegegevensZorgpartijTypes) As %Status
{
	set responseMessage = ##class(VektisAGB.Api.Client.responses.ReferentiegegevensZorgpartijTypes).%New()
	return ..zzHandleRequest(requestMessage, "ReferentiegegevensZorgpartijTypes", "get", responseMessage)
}

/// Implement operationId : ReferentiegegevensZorgsoortenOndernemingVestiging
/// get /v2/zorgsoorten/ondernemingvestiging
Method ReferentiegegevensZorgsoortenOndernemingVestiging(requestMessage As VektisAGB.Api.Client.requests.ReferentiegegevensZorgsoortenOndernemingVestiging, Output responseMessage As VektisAGB.Api.Client.responses.ReferentiegegevensZorgsoortenOndernemingVestiging) As %Status
{
	set responseMessage = ##class(VektisAGB.Api.Client.responses.ReferentiegegevensZorgsoortenOndernemingVestiging).%New()
	return ..zzHandleRequest(requestMessage, "ReferentiegegevensZorgsoortenOndernemingVestiging", "get", responseMessage)
}

/// Implement operationId : ReferentiegegevensZorgsoortenZorgverlener
/// get /v2/zorgsoorten/zorgverlener
Method ReferentiegegevensZorgsoortenZorgverlener(requestMessage As VektisAGB.Api.Client.requests.ReferentiegegevensZorgsoortenZorgverlener, Output responseMessage As VektisAGB.Api.Client.responses.ReferentiegegevensZorgsoortenZorgverlener) As %Status
{
	set responseMessage = ##class(VektisAGB.Api.Client.responses.ReferentiegegevensZorgsoortenZorgverlener).%New()
	return ..zzHandleRequest(requestMessage, "ReferentiegegevensZorgsoortenZorgverlener", "get", responseMessage)
}

/// Implement operationId : TestGet
/// get /v2/test/{number}
Method TestGet(requestMessage As VektisAGB.Api.Client.requests.TestGet, Output responseMessage As VektisAGB.Api.Client.responses.TestGet) As %Status
{
	set responseMessage = ##class(VektisAGB.Api.Client.responses.TestGet).%New()
	return ..zzHandleRequest(requestMessage, "TestGet", "get", responseMessage)
}

/// Implement operationId : VestigingBasisinformatie
/// get /v2/vestigingen/{agbcode}
Method VestigingBasisinformatie(requestMessage As VektisAGB.Api.Client.requests.VestigingBasisinformatie, Output responseMessage As VektisAGB.Api.Client.responses.VestigingBasisinformatie) As %Status
{
	set responseMessage = ##class(VektisAGB.Api.Client.responses.VestigingBasisinformatie).%New()
	return ..zzHandleRequest(requestMessage, "VestigingBasisinformatie", "get", responseMessage)
}

/// Implement operationId : VestigingMetPeildatum
/// get /v2/vestigingen/{agbcode}/{peildatum}
Method VestigingMetPeildatum(requestMessage As VektisAGB.Api.Client.requests.VestigingMetPeildatum, Output responseMessage As VektisAGB.Api.Client.responses.VestigingMetPeildatum) As %Status
{
	set responseMessage = ##class(VektisAGB.Api.Client.responses.VestigingMetPeildatum).%New()
	return ..zzHandleRequest(requestMessage, "VestigingMetPeildatum", "get", responseMessage)
}

/// Implement operationId : VestigingMutatiesMetZorgsoort
/// get /v2/vestigingen/mutaties/{zorgsoort}/{vanaf}
Method VestigingMutatiesMetZorgsoort(requestMessage As VektisAGB.Api.Client.requests.VestigingMutatiesMetZorgsoort, Output responseMessage As VektisAGB.Api.Client.responses.VestigingMutatiesMetZorgsoort) As %Status
{
	set responseMessage = ##class(VektisAGB.Api.Client.responses.VestigingMutatiesMetZorgsoort).%New()
	return ..zzHandleRequest(requestMessage, "VestigingMutatiesMetZorgsoort", "get", responseMessage)
}

/// Implement operationId : VestigingRelatiesMetPeildatumV2
/// get /v2/vestigingen/{agbcode}/relaties/{peildatum}
Method VestigingRelatiesMetPeildatumV2(requestMessage As VektisAGB.Api.Client.requests.VestigingRelatiesMetPeildatumV2, Output responseMessage As VektisAGB.Api.Client.responses.VestigingRelatiesMetPeildatumV2) As %Status
{
	set responseMessage = ##class(VektisAGB.Api.Client.responses.VestigingRelatiesMetPeildatumV2).%New()
	return ..zzHandleRequest(requestMessage, "VestigingRelatiesMetPeildatumV2", "get", responseMessage)
}

/// Implement operationId : VestigingVestigingRelatiesTotaalV2
/// get /v2/vestigingen/{agbcode}/relaties/totaal
Method VestigingVestigingRelatiesTotaalV2(requestMessage As VektisAGB.Api.Client.requests.VestigingVestigingRelatiesTotaalV2, Output responseMessage As VektisAGB.Api.Client.responses.VestigingVestigingRelatiesTotaalV2) As %Status
{
	set responseMessage = ##class(VektisAGB.Api.Client.responses.VestigingVestigingRelatiesTotaalV2).%New()
	return ..zzHandleRequest(requestMessage, "VestigingVestigingRelatiesTotaalV2", "get", responseMessage)
}

/// Implement operationId : VestigingVestigingRelatiesV2
/// get /v2/vestigingen/{agbcode}/relaties
Method VestigingVestigingRelatiesV2(requestMessage As VektisAGB.Api.Client.requests.VestigingVestigingRelatiesV2, Output responseMessage As VektisAGB.Api.Client.responses.VestigingVestigingRelatiesV2) As %Status
{
	set responseMessage = ##class(VektisAGB.Api.Client.responses.VestigingVestigingRelatiesV2).%New()
	return ..zzHandleRequest(requestMessage, "VestigingVestigingRelatiesV2", "get", responseMessage)
}

/// Implement operationId : VestigingZorgpartijMutaties
/// get /v2/vestigingen/mutaties/{vanaf}
Method VestigingZorgpartijMutaties(requestMessage As VektisAGB.Api.Client.requests.VestigingZorgpartijMutaties, Output responseMessage As VektisAGB.Api.Client.responses.VestigingZorgpartijMutaties) As %Status
{
	set responseMessage = ##class(VektisAGB.Api.Client.responses.VestigingZorgpartijMutaties).%New()
	return ..zzHandleRequest(requestMessage, "VestigingZorgpartijMutaties", "get", responseMessage)
}

/// Implement operationId : ZorgpartijMutatiesMetZorgsoort
/// get /v2/zorgpartijen/mutaties/{zorgsoort}/{vanaf}
Method ZorgpartijMutatiesMetZorgsoort(requestMessage As VektisAGB.Api.Client.requests.ZorgpartijMutatiesMetZorgsoort, Output responseMessage As VektisAGB.Api.Client.responses.ZorgpartijMutatiesMetZorgsoort) As %Status
{
	set responseMessage = ##class(VektisAGB.Api.Client.responses.ZorgpartijMutatiesMetZorgsoort).%New()
	return ..zzHandleRequest(requestMessage, "ZorgpartijMutatiesMetZorgsoort", "get", responseMessage)
}

/// Implement operationId : ZorgpartijZorgpartijMutaties
/// get /v2/zorgpartijen/mutaties/{vanaf}
Method ZorgpartijZorgpartijMutaties(requestMessage As VektisAGB.Api.Client.requests.ZorgpartijZorgpartijMutaties, Output responseMessage As VektisAGB.Api.Client.responses.ZorgpartijZorgpartijMutaties) As %Status
{
	set responseMessage = ##class(VektisAGB.Api.Client.responses.ZorgpartijZorgpartijMutaties).%New()
	return ..zzHandleRequest(requestMessage, "ZorgpartijZorgpartijMutaties", "get", responseMessage)
}

/// Implement operationId : ZorgverlenerBasisMetPeildatum
/// get /v2/zorgverleners/{agbcode}/{peildatum}
Method ZorgverlenerBasisMetPeildatum(requestMessage As VektisAGB.Api.Client.requests.ZorgverlenerBasisMetPeildatum, Output responseMessage As VektisAGB.Api.Client.responses.ZorgverlenerBasisMetPeildatum) As %Status
{
	set responseMessage = ##class(VektisAGB.Api.Client.responses.ZorgverlenerBasisMetPeildatum).%New()
	return ..zzHandleRequest(requestMessage, "ZorgverlenerBasisMetPeildatum", "get", responseMessage)
}

/// Implement operationId : ZorgverlenerBasisinformatie
/// get /v2/zorgverleners/{agbcode}
Method ZorgverlenerBasisinformatie(requestMessage As VektisAGB.Api.Client.requests.ZorgverlenerBasisinformatie, Output responseMessage As VektisAGB.Api.Client.responses.ZorgverlenerBasisinformatie) As %Status
{
	set responseMessage = ##class(VektisAGB.Api.Client.responses.ZorgverlenerBasisinformatie).%New()
	return ..zzHandleRequest(requestMessage, "ZorgverlenerBasisinformatie", "get", responseMessage)
}

/// Implement operationId : ZorgverlenerMutatiesMetZorgsoort
/// get /v2/zorgverleners/mutaties/{zorgsoort}/{vanaf}
Method ZorgverlenerMutatiesMetZorgsoort(requestMessage As VektisAGB.Api.Client.requests.ZorgverlenerMutatiesMetZorgsoort, Output responseMessage As VektisAGB.Api.Client.responses.ZorgverlenerMutatiesMetZorgsoort) As %Status
{
	set responseMessage = ##class(VektisAGB.Api.Client.responses.ZorgverlenerMutatiesMetZorgsoort).%New()
	return ..zzHandleRequest(requestMessage, "ZorgverlenerMutatiesMetZorgsoort", "get", responseMessage)
}

/// Implement operationId : ZorgverlenerRelatiesMetPeildatumV2
/// get /v2/zorgverleners/{agbcode}/relaties/{peildatum}
Method ZorgverlenerRelatiesMetPeildatumV2(requestMessage As VektisAGB.Api.Client.requests.ZorgverlenerRelatiesMetPeildatumV2, Output responseMessage As VektisAGB.Api.Client.responses.ZorgverlenerRelatiesMetPeildatumV2) As %Status
{
	set responseMessage = ##class(VektisAGB.Api.Client.responses.ZorgverlenerRelatiesMetPeildatumV2).%New()
	return ..zzHandleRequest(requestMessage, "ZorgverlenerRelatiesMetPeildatumV2", "get", responseMessage)
}

/// Implement operationId : ZorgverlenerZorgpartijMutaties
/// get /v2/zorgverleners/mutaties/{vanaf}
Method ZorgverlenerZorgpartijMutaties(requestMessage As VektisAGB.Api.Client.requests.ZorgverlenerZorgpartijMutaties, Output responseMessage As VektisAGB.Api.Client.responses.ZorgverlenerZorgpartijMutaties) As %Status
{
	set responseMessage = ##class(VektisAGB.Api.Client.responses.ZorgverlenerZorgpartijMutaties).%New()
	return ..zzHandleRequest(requestMessage, "ZorgverlenerZorgpartijMutaties", "get", responseMessage)
}

/// Implement operationId : ZorgverlenerZorgverlenerRelatiesTotaalV2
/// get /v2/zorgverleners/{agbcode}/relaties/totaal
Method ZorgverlenerZorgverlenerRelatiesTotaalV2(requestMessage As VektisAGB.Api.Client.requests.ZorgverlenerZorgverlenerRelatiesTotaalV2, Output responseMessage As VektisAGB.Api.Client.responses.ZorgverlenerZorgverlenerRelatiesTotaalV2) As %Status
{
	set responseMessage = ##class(VektisAGB.Api.Client.responses.ZorgverlenerZorgverlenerRelatiesTotaalV2).%New()
	return ..zzHandleRequest(requestMessage, "ZorgverlenerZorgverlenerRelatiesTotaalV2", "get", responseMessage)
}

/// Implement operationId : ZorgverlenerZorgverlenerRelatiesV2
/// get /v2/zorgverleners/{agbcode}/relaties
Method ZorgverlenerZorgverlenerRelatiesV2(requestMessage As VektisAGB.Api.Client.requests.ZorgverlenerZorgverlenerRelatiesV2, Output responseMessage As VektisAGB.Api.Client.responses.ZorgverlenerZorgverlenerRelatiesV2) As %Status
{
	set responseMessage = ##class(VektisAGB.Api.Client.responses.ZorgverlenerZorgverlenerRelatiesV2).%New()
	return ..zzHandleRequest(requestMessage, "ZorgverlenerZorgverlenerRelatiesV2", "get", responseMessage)
}

/// Common request handler
Method zzHandleRequest(requestMessage As Ens.Request, name As %String, method As %String, responseMessage As VektisAGB.Api.Client.responses.GenericResponse) As %Status
{
	set sc = $$$OK, pHttpRequestIn = ##class(%Net.HttpRequest).%New()
	$$$QuitOnError(requestMessage.LoadHttpRequestObject(pHttpRequestIn))

	do pHttpRequestIn.SetHeader("Authorization", "Vektis " _ ..Token)

	set sc = ..Adapter.SendFormDataArray(.pHttpResponse, method, pHttpRequestIn, , , ..Adapter.URL _ requestMessage.%URL)

	if $$$ISERR(sc) && ($SYSTEM.Status.GetErrorCodes(sc) '= $$$EnsErrHTTPStatus) {
		return sc
	}

	if $ISOBJECT(pHttpResponse) {
		$$$TRACE(name _" returned " _ pHttpResponse.StatusCode)
		$$$QuitOnError(responseMessage.LoadFromResponse(pHttpResponse, name))
	}

	return sc
}

XData MessageMap
{
<MapItems>
	<MapItem MessageType="VektisAGB.Api.Client.requests.OndernemingBasisMetPeildatum">
		<Method>OndernemingBasisMetPeildatum</Method>
	</MapItem>
	<MapItem MessageType="VektisAGB.Api.Client.requests.OndernemingBasisinformatie">
		<Method>OndernemingBasisinformatie</Method>
	</MapItem>
	<MapItem MessageType="VektisAGB.Api.Client.requests.OndernemingMutatiesMetZorgSoort">
		<Method>OndernemingMutatiesMetZorgSoort</Method>
	</MapItem>
	<MapItem MessageType="VektisAGB.Api.Client.requests.OndernemingOndernemingOrganisatieV2">
		<Method>OndernemingOndernemingOrganisatieV2</Method>
	</MapItem>
	<MapItem MessageType="VektisAGB.Api.Client.requests.OndernemingOndernemingRelatiesTotaalV2">
		<Method>OndernemingOndernemingRelatiesTotaalV2</Method>
	</MapItem>
	<MapItem MessageType="VektisAGB.Api.Client.requests.OndernemingOndernemingRelatiesV2">
		<Method>OndernemingOndernemingRelatiesV2</Method>
	</MapItem>
	<MapItem MessageType="VektisAGB.Api.Client.requests.OndernemingOrganisatieMetPeildatumV2">
		<Method>OndernemingOrganisatieMetPeildatumV2</Method>
	</MapItem>
	<MapItem MessageType="VektisAGB.Api.Client.requests.OndernemingRelatiesMetPeildatumV2">
		<Method>OndernemingRelatiesMetPeildatumV2</Method>
	</MapItem>
	<MapItem MessageType="VektisAGB.Api.Client.requests.OndernemingZorgpartijMutaties">
		<Method>OndernemingZorgpartijMutaties</Method>
	</MapItem>
	<MapItem MessageType="VektisAGB.Api.Client.requests.ReferentiegegevensAcademischeTitels">
		<Method>ReferentiegegevensAcademischeTitels</Method>
	</MapItem>
	<MapItem MessageType="VektisAGB.Api.Client.requests.ReferentiegegevensAdresTypes">
		<Method>ReferentiegegevensAdresTypes</Method>
	</MapItem>
	<MapItem MessageType="VektisAGB.Api.Client.requests.ReferentiegegevensArbeidsRelatieRollen">
		<Method>ReferentiegegevensArbeidsRelatieRollen</Method>
	</MapItem>
	<MapItem MessageType="VektisAGB.Api.Client.requests.ReferentiegegevensBeheerders">
		<Method>ReferentiegegevensBeheerders</Method>
	</MapItem>
	<MapItem MessageType="VektisAGB.Api.Client.requests.ReferentiegegevensBekend">
		<Method>ReferentiegegevensBekend</Method>
	</MapItem>
	<MapItem MessageType="VektisAGB.Api.Client.requests.ReferentiegegevensCommunicatieGegevenTypes">
		<Method>ReferentiegegevensCommunicatieGegevenTypes</Method>
	</MapItem>
	<MapItem MessageType="VektisAGB.Api.Client.requests.ReferentiegegevensDoelen">
		<Method>ReferentiegegevensDoelen</Method>
	</MapItem>
	<MapItem MessageType="VektisAGB.Api.Client.requests.ReferentiegegevensErkenningen">
		<Method>ReferentiegegevensErkenningen</Method>
	</MapItem>
	<MapItem MessageType="VektisAGB.Api.Client.requests.ReferentiegegevensGeslachten">
		<Method>ReferentiegegevensGeslachten</Method>
	</MapItem>
	<MapItem MessageType="VektisAGB.Api.Client.requests.ReferentiegegevensKwalificaties">
		<Method>ReferentiegegevensKwalificaties</Method>
	</MapItem>
	<MapItem MessageType="VektisAGB.Api.Client.requests.ReferentiegegevensKwalificatiesOndernemingVestiging">
		<Method>ReferentiegegevensKwalificatiesOndernemingVestiging</Method>
	</MapItem>
	<MapItem MessageType="VektisAGB.Api.Client.requests.ReferentiegegevensKwalificatiesZorgverlener">
		<Method>ReferentiegegevensKwalificatiesZorgverlener</Method>
	</MapItem>
	<MapItem MessageType="VektisAGB.Api.Client.requests.ReferentiegegevensLanden">
		<Method>ReferentiegegevensLanden</Method>
	</MapItem>
	<MapItem MessageType="VektisAGB.Api.Client.requests.ReferentiegegevensProvincies">
		<Method>ReferentiegegevensProvincies</Method>
	</MapItem>
	<MapItem MessageType="VektisAGB.Api.Client.requests.ReferentiegegevensRedenenEinde">
		<Method>ReferentiegegevensRedenenEinde</Method>
	</MapItem>
	<MapItem MessageType="VektisAGB.Api.Client.requests.ReferentiegegevensRelatieRollen">
		<Method>ReferentiegegevensRelatieRollen</Method>
	</MapItem>
	<MapItem MessageType="VektisAGB.Api.Client.requests.ReferentiegegevensRelatieTypes">
		<Method>ReferentiegegevensRelatieTypes</Method>
	</MapItem>
	<MapItem MessageType="VektisAGB.Api.Client.requests.ReferentiegegevensVoorvoegsels">
		<Method>ReferentiegegevensVoorvoegsels</Method>
	</MapItem>
	<MapItem MessageType="VektisAGB.Api.Client.requests.ReferentiegegevensWerkzaamBijRollen">
		<Method>ReferentiegegevensWerkzaamBijRollen</Method>
	</MapItem>
	<MapItem MessageType="VektisAGB.Api.Client.requests.ReferentiegegevensZorgpartijTypes">
		<Method>ReferentiegegevensZorgpartijTypes</Method>
	</MapItem>
	<MapItem MessageType="VektisAGB.Api.Client.requests.ReferentiegegevensZorgsoortenOndernemingVestiging">
		<Method>ReferentiegegevensZorgsoortenOndernemingVestiging</Method>
	</MapItem>
	<MapItem MessageType="VektisAGB.Api.Client.requests.ReferentiegegevensZorgsoortenZorgverlener">
		<Method>ReferentiegegevensZorgsoortenZorgverlener</Method>
	</MapItem>
	<MapItem MessageType="VektisAGB.Api.Client.requests.TestGet">
		<Method>TestGet</Method>
	</MapItem>
	<MapItem MessageType="VektisAGB.Api.Client.requests.VestigingBasisinformatie">
		<Method>VestigingBasisinformatie</Method>
	</MapItem>
	<MapItem MessageType="VektisAGB.Api.Client.requests.VestigingMetPeildatum">
		<Method>VestigingMetPeildatum</Method>
	</MapItem>
	<MapItem MessageType="VektisAGB.Api.Client.requests.VestigingMutatiesMetZorgsoort">
		<Method>VestigingMutatiesMetZorgsoort</Method>
	</MapItem>
	<MapItem MessageType="VektisAGB.Api.Client.requests.VestigingRelatiesMetPeildatumV2">
		<Method>VestigingRelatiesMetPeildatumV2</Method>
	</MapItem>
	<MapItem MessageType="VektisAGB.Api.Client.requests.VestigingVestigingRelatiesTotaalV2">
		<Method>VestigingVestigingRelatiesTotaalV2</Method>
	</MapItem>
	<MapItem MessageType="VektisAGB.Api.Client.requests.VestigingVestigingRelatiesV2">
		<Method>VestigingVestigingRelatiesV2</Method>
	</MapItem>
	<MapItem MessageType="VektisAGB.Api.Client.requests.VestigingZorgpartijMutaties">
		<Method>VestigingZorgpartijMutaties</Method>
	</MapItem>
	<MapItem MessageType="VektisAGB.Api.Client.requests.ZorgpartijMutatiesMetZorgsoort">
		<Method>ZorgpartijMutatiesMetZorgsoort</Method>
	</MapItem>
	<MapItem MessageType="VektisAGB.Api.Client.requests.ZorgpartijZorgpartijMutaties">
		<Method>ZorgpartijZorgpartijMutaties</Method>
	</MapItem>
	<MapItem MessageType="VektisAGB.Api.Client.requests.ZorgverlenerBasisMetPeildatum">
		<Method>ZorgverlenerBasisMetPeildatum</Method>
	</MapItem>
	<MapItem MessageType="VektisAGB.Api.Client.requests.ZorgverlenerBasisinformatie">
		<Method>ZorgverlenerBasisinformatie</Method>
	</MapItem>
	<MapItem MessageType="VektisAGB.Api.Client.requests.ZorgverlenerMutatiesMetZorgsoort">
		<Method>ZorgverlenerMutatiesMetZorgsoort</Method>
	</MapItem>
	<MapItem MessageType="VektisAGB.Api.Client.requests.ZorgverlenerRelatiesMetPeildatumV2">
		<Method>ZorgverlenerRelatiesMetPeildatumV2</Method>
	</MapItem>
	<MapItem MessageType="VektisAGB.Api.Client.requests.ZorgverlenerZorgpartijMutaties">
		<Method>ZorgverlenerZorgpartijMutaties</Method>
	</MapItem>
	<MapItem MessageType="VektisAGB.Api.Client.requests.ZorgverlenerZorgverlenerRelatiesTotaalV2">
		<Method>ZorgverlenerZorgverlenerRelatiesTotaalV2</Method>
	</MapItem>
	<MapItem MessageType="VektisAGB.Api.Client.requests.ZorgverlenerZorgverlenerRelatiesV2">
		<Method>ZorgverlenerZorgverlenerRelatiesV2</Method>
	</MapItem>
</MapItems>
}

}
