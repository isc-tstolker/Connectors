Class VektisAGB.Api.Client.model.v2ZorgpartijZorgpartijErkenning Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

/// DATUMAANVANG, dateTime, Datum vanaf wanneer de erkenning geldig is
/// * This property is required.
Property Aanvang As %TimeStamp;

/// ERKENNINGTYPE, length = 6 numeriek in een string, Code erkenning, waarde komt voor in codelijst AGB029 of in referentiegegevens 'erkenningen'
/// * This property is required.
Property Code As %String(MAXLEN = 6, MINLEN = 6);

/// DATUMEINDE, dateTime, Datum tot en met wanneer de erkenning geldig is
Property Einde As %TimeStamp;

/// BETEKENIS, maxLength = 255, Omschrijving van het erkenningtype
/// * This property is required.
Property Omschrijving As %String(MAXLEN = 255, MINLEN = 1);

/// REFERENTIE, maxLength = 32, Nummer, code of lidmaatschapsnummer van de erkenning zoals dat bij de erkenner bekend is
/// * This property is required.
Property RegistratieNummer As %String(MAXLEN = 32, MINLEN = 1);

Storage Default
{
<Data name="v2ZorgpartijZorgpartijErkenningState">
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
<Value>Omschrijving</Value>
</Value>
<Value name="5">
<Value>RegistratieNummer</Value>
</Value>
</Data>
<State>v2ZorgpartijZorgpartijErkenningState</State>
<StreamLocation>^CONNECTORSD8C0.v2ZorgpartiAAAAS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
