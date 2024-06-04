Class VektisAGB.Api.Client.model.v2OndernemingAdres Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

/// DATUMAANVANG, dateTime, Datum vanaf wanneer een AGBCode geldig is
/// * This property is required.
Property Aanvang As %TimeStamp;

/// DATUMEINDE, dateTime, Datum tot en met wanneer het adres geldig is
Property Einde As %TimeStamp;

/// HUISNUMMER, Huisnummer van het adres
/// * This property is required.
Property Huisnummer As %Integer;

/// HUISNUMMERTOEVOEGING, maxLength = 8, Huisnummertoevoeging van het adres
Property HuisnummerToevoeging As %String(MAXLEN = 8, MINLEN = 0);

/// PLAATS, maxLength = 60, Plaatsnaam van het adres
/// * This property is required.
Property Plaats As %String(MAXLEN = 60, MINLEN = 1);

/// POSTCODE, maxLength = 8, Postcode van het adres voor zowel binnenlandse als buitenlandse adressen
/// * This property is required.
Property Postcode As %String(MAXLEN = 8, MINLEN = 1);

/// STRAATNAAM, maxLength = 60, Straatnaam van het adres
/// * This property is required.
Property Straat As %String(MAXLEN = 60, MINLEN = 1);

Storage Default
{
<Data name="v2OndernemingAdresState">
<Value name="1">
<Value>Aanvang</Value>
</Value>
<Value name="2">
<Value>Einde</Value>
</Value>
<Value name="3">
<Value>Huisnummer</Value>
</Value>
<Value name="4">
<Value>HuisnummerToevoeging</Value>
</Value>
<Value name="5">
<Value>Plaats</Value>
</Value>
<Value name="6">
<Value>Postcode</Value>
</Value>
<Value name="7">
<Value>Straat</Value>
</Value>
</Data>
<State>v2OndernemingAdresState</State>
<StreamLocation>^CONNECTORSD8C0.v2Ondernemi7B04S</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
