Class CONNECTORSPKG.VektisAGB.Api.Client.model.v2OndernemingVestigingOrganisatie Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

/// CODE, length = 8 numeriek in een string, AGBCode
/// * This property is required.
Property AGBCode As %String(MAXLEN = 8, MINLEN = 8);

/// DATUMAANVANG, dateTime, Datum vanaf wanneer een AGBCode geldig is
/// * This property is required.
Property AanvangAGBCode As %TimeStamp;

/// DATUMAANVANG, dateTime, Datum tot en met wanneer een relatie geldig is
/// * This property is required.
Property AanvangRelatie As %TimeStamp;

/// 
/// * This property is required.
Property BezoekAdres As CONNECTORSPKG.VektisAGB.Api.Client.model.v2OndernemingAdres(XMLNAME = "Adres");

/// DATUMEINDE, dateTime, Datum tot en met wanneer de AGBCode geldig is
Property EindeAGBCode As %TimeStamp;

/// DATUMEINDE, dateTime, Datum vanaf wanneer een relatie geldig is
Property EindeRelatie As %TimeStamp;

/// HANDELSNAAM1, maxLength = 150, Eerste handelsnaam waaronder de vestiging bekend is bij het handelsregister
/// * This property is required.
Property Naam As %String(MAXLEN = 150, MINLEN = 1);

Storage Default
{
<Data name="v2OndernemingVestigingOrganisatieState">
<Value name="1">
<Value>AGBCode</Value>
</Value>
<Value name="2">
<Value>AanvangAGBCode</Value>
</Value>
<Value name="3">
<Value>AanvangRelatie</Value>
</Value>
<Value name="4">
<Value>BezoekAdres</Value>
</Value>
<Value name="5">
<Value>EindeAGBCode</Value>
</Value>
<Value name="6">
<Value>EindeRelatie</Value>
</Value>
<Value name="7">
<Value>Naam</Value>
</Value>
</Data>
<State>v2OndernemingVestigingOrganisatieState</State>
<StreamLocation>^CONNECTORSD8C0.v2OnderneminFA2S</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
