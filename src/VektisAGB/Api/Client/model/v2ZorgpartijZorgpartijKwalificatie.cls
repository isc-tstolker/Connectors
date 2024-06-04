Class VektisAGB.Api.Client.model.v2ZorgpartijZorgpartijKwalificatie Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

/// DATUMAANVANG, dateTime, Datum vanaf wanneer de kwalificatie geldig is
/// * This property is required.
Property Aanvang As %TimeStamp;

/// KWALIFICATIETYPE, length = 4 numeriek in een string, Code kwalificatie, waarde komt voor in codelijst AGB018 of in referentiegegevens 'kwalificaties'
/// * This property is required.
Property Code As %String(MAXLEN = 4, MINLEN = 4);

/// DATUMEINDE, dateTime, Datum tot en met wanneer de kwalificatie geldig is
Property Einde As %TimeStamp;

/// NICTIZ_ID, maxLength = 6, Nictiz code die zorgaanbieders gebruiken voor deze kwalificatie
Property NictizCode As %String(MAXLEN = 6, MINLEN = 0);

/// BETEKENIS, maxLength = 255, Omschrijving van het kwalificatietype
/// * This property is required.
Property Omschrijving As %String(MAXLEN = 255, MINLEN = 1);

/// BETEKENIS, maxLength = 255, Patiententerm horend bij de Nictiz code
Property Patiententerm As %String(MAXLEN = 255, MINLEN = 0);

Storage Default
{
<Data name="v2ZorgpartijZorgpartijKwalificatieState">
<Value name="1">
<Value>Aanvang</Value>
</Value>
<Value name="2">
<Value>Code</Value>
</Value>
<Value name="3">
<Value>Einde</Value>
</Value>
<Value name="4">
<Value>NictizCode</Value>
</Value>
<Value name="5">
<Value>Omschrijving</Value>
</Value>
<Value name="6">
<Value>Patiententerm</Value>
</Value>
</Data>
<State>v2ZorgpartijZorgpartijKwalificatieState</State>
<StreamLocation>^CONNECTORSD8C0.v2ZorgpartiE5A7S</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
