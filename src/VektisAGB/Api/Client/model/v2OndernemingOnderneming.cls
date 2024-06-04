Class CONNECTORSPKG.VektisAGB.Api.Client.model.v2OndernemingOnderneming Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

/// CODE, length = 8 numeriek in een string, AGBCode
/// * This property is required.
Property AGBCode As %String(MAXLEN = 8, MINLEN = 8);

/// DATUMAANVANG, dateTime, Datum vanaf wanneer een AGBCode geldig is
/// * This property is required.
Property Aanvang As %TimeStamp;

Property Adressen As list Of CONNECTORSPKG.VektisAGB.Api.Client.model.v2ZorgpartijZorgpartijAdres(XMLITEMNAME = "Adres");

/// 
/// * This property is required.
Property BeheerderVerlenerAGBCode As CONNECTORSPKG.VektisAGB.Api.Client.model.ReferentiegegevensBeheerder(XMLNAME = "Beheerder");

Property Communicatiegegevens As list Of CONNECTORSPKG.VektisAGB.Api.Client.model.v2ZorgpartijCommunicatiegegeven(XMLITEMNAME = "Communicatiegegeven");

/// DATUMEINDE, dateTime, Datum tot en met wanneer de AGBCode geldig is
Property Einde As %TimeStamp;

Property Erkenningen As list Of CONNECTORSPKG.VektisAGB.Api.Client.model.v2ZorgpartijZorgpartijErkenning(XMLITEMNAME = "Erkenning");

/// HANDELSNAAM1, maxLength = 150, Eerste handelsnaam waaronder de onderneming bekend is bij het handelsregister
/// * This property is required.
Property Handelsnaam As %String(MAXLEN = 150, MINLEN = 1);

Property Kwalificaties As list Of CONNECTORSPKG.VektisAGB.Api.Client.model.v2ZorgpartijZorgpartijKwalificatie(XMLITEMNAME = "Kwalificatie");

/// ROEPNAAM, maxLength = 60, Naam waaronder de onderneming bekend is of vermeld wil staan
/// * This property is required.
Property Naam As %String(MAXLEN = 60, MINLEN = 1);

/// STATUTAIRENAAM, maxLength = 150, Statutaire naam waaronder de onderneming bekend is bij het handelsregister
Property StatutaireNaam As %String(MAXLEN = 150, MINLEN = 0);

/// 
/// * This property is required.
Property ZorgpartijType As CONNECTORSPKG.VektisAGB.Api.Client.model.ReferentiegegevensZorgpartijType(XMLNAME = "ZorgpartijType");

/// 
/// * This property is required.
Property Zorgsoort As CONNECTORSPKG.VektisAGB.Api.Client.model.ReferentiegegevensZorgsoort(XMLNAME = "Zorgsoort");

Storage Default
{
<Data name="v2OndernemingOndernemingState">
<Value name="1">
<Value>AGBCode</Value>
</Value>
<Value name="2">
<Value>Aanvang</Value>
</Value>
<Value name="3">
<Value>Adressen</Value>
</Value>
<Value name="4">
<Value>BeheerderVerlenerAGBCode</Value>
</Value>
<Value name="5">
<Value>Communicatiegegevens</Value>
</Value>
<Value name="6">
<Value>Einde</Value>
</Value>
<Value name="7">
<Value>Erkenningen</Value>
</Value>
<Value name="8">
<Value>Handelsnaam</Value>
</Value>
<Value name="9">
<Value>Kwalificaties</Value>
</Value>
<Value name="10">
<Value>Naam</Value>
</Value>
<Value name="11">
<Value>StatutaireNaam</Value>
</Value>
<Value name="12">
<Value>ZorgpartijType</Value>
</Value>
<Value name="13">
<Value>Zorgsoort</Value>
</Value>
</Data>
<State>v2OndernemingOndernemingState</State>
<StreamLocation>^CONNECTORSD8C0.v2Ondernemi5AE2S</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
