Class VektisAGB.Api.Client.model.v2ZorgverlenerZorgverlener Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

/// CODE, length = 8 numeriek in een string, AGBCode
/// * This property is required.
Property AGBCode As %String(MAXLEN = 8, MINLEN = 8);

/// DATUMAANVANG, dateTime, Datum vanaf wanneer een AGBCode geldig is
/// * This property is required.
Property Aanvang As %TimeStamp;

Property AcademischeTitel As VektisAGB.Api.Client.model.ReferentiegegevensAcademischeTitel(XMLNAME = "Academischetitel");

/// Achternaam, maxLength = 60, Achternaam waaronder de zorgverlener bekend is
/// * This property is required.
Property Achternaam As %String(MAXLEN = 60, MINLEN = 1);

/// DATUMEINDE, dateTime, Datum tot en met wanneer de AGBCode geldig is
Property Einde As %TimeStamp;

Property Erkenningen As list Of VektisAGB.Api.Client.model.v2ZorgpartijZorgpartijErkenning(XMLITEMNAME = "Erkenning");

/// DATUMGEBOORTE, dateTime, Geboortedatum van de zorgverlener
/// * This property is required.
Property GeboorteDatum As %TimeStamp;

/// GEBOORTENAAM, maxLength = 60, Achternaam die zorgverlener van oorsprong, vanaf de geboorte, heeft
Property Geboortenaam As %String(MAXLEN = 60, MINLEN = 0);

/// GEBOORTENAAMTUSSENVOEGSEL, maxLength = 12, Tussenvoegsel die zorgverlener van oorsprong, vanaf de geboorte, heeft, waarde komt voor in codelijst NAM040 of referentiegegevens 'tussenvoegsels'")]
Property GeboortenaamTussenvoegsel As %String(MAXLEN = 12, MINLEN = 0);

/// 
/// * This property is required.
Property Geslacht As VektisAGB.Api.Client.model.ReferentiegegevensGeslacht(XMLNAME = "Geslacht");

Property Kwalificaties As list Of VektisAGB.Api.Client.model.v2ZorgpartijZorgpartijKwalificatie(XMLITEMNAME = "Kwalificatie");

/// TUSSENVOEGSEL, maxLength = 12, Tussenvoegsel waaronder de zorgverlener bekend is, waarde komt voor in codelijst NAM040 of referentiegegevens 'Tussenvoegsels'
Property Tussenvoegsel As %String(MAXLEN = 12, MINLEN = 0);

/// VOORLETTERS, maxLength = 6, Initialen van de zorgverlener
/// * This property is required.
Property Voorletters As %String(MAXLEN = 6, MINLEN = 1);

/// 
/// * This property is required.
Property Zorgsoort As VektisAGB.Api.Client.model.ReferentiegegevensZorgsoort(XMLNAME = "Zorgsoort");

Storage Default
{
<Data name="v2ZorgverlenerZorgverlenerState">
<Value name="1">
<Value>AGBCode</Value>
</Value>
<Value name="2">
<Value>Aanvang</Value>
</Value>
<Value name="3">
<Value>AcademischeTitel</Value>
</Value>
<Value name="4">
<Value>Achternaam</Value>
</Value>
<Value name="5">
<Value>Einde</Value>
</Value>
<Value name="6">
<Value>Erkenningen</Value>
</Value>
<Value name="7">
<Value>GeboorteDatum</Value>
</Value>
<Value name="8">
<Value>Geboortenaam</Value>
</Value>
<Value name="9">
<Value>GeboortenaamTussenvoegsel</Value>
</Value>
<Value name="10">
<Value>Geslacht</Value>
</Value>
<Value name="11">
<Value>Kwalificaties</Value>
</Value>
<Value name="12">
<Value>Tussenvoegsel</Value>
</Value>
<Value name="13">
<Value>Voorletters</Value>
</Value>
<Value name="14">
<Value>Zorgsoort</Value>
</Value>
</Data>
<State>v2ZorgverlenerZorgverlenerState</State>
<StreamLocation>^CONNECTORSD8C0.v2ZorgverlenEB5S</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
