Class VektisAGB.Api.Client.model.v2ZorgpartijZorgpartijAdres Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

/// DATUMAANVANG, dateTime, Datum vanaf wanneer het adres geldig is
/// * This property is required.
Property Aanvang As %TimeStamp;

/// DATUMEINDE, dateTime, Datum tot en met wanneer het adres geldig is
Property Einde As %TimeStamp;

/// HUISNUMMER, Huisnummer van het adres
/// * This property is required.
Property Huisnummer As %Integer;

/// HUISNUMMERTOEVOEGING, maxLength = 8, Huisnummertoevoeging van het adres
Property HuisnummerToevoeging As %String(MAXLEN = 8, MINLEN = 0);

/// 
/// * This property is required.
Property Land As VektisAGB.Api.Client.model.ReferentiegegevensLand(XMLNAME = "Land");

/// PLAATS, maxLength = 60, Plaatsnaam van het adres
/// * This property is required.
Property Plaats As %String(MAXLEN = 60, MINLEN = 1);

/// POSTCODE, maxLength = 8, Postcode van het adres voor zowel binnenlandse als buitenlandse adressen
/// * This property is required.
Property Postcode As %String(MAXLEN = 8, MINLEN = 1);

Property Provincie As VektisAGB.Api.Client.model.ReferentiegegevensProvincie(XMLNAME = "Provincie");

/// STRAATNAAM, maxLength = 60, Straatnaam van het adres
/// * This property is required.
Property Straat As %String(MAXLEN = 60, MINLEN = 1);

/// 
/// * This property is required.
Property Type As VektisAGB.Api.Client.model.ReferentiegegevensAdresType(XMLNAME = "AdresType");

Storage Default
{
<Data name="v2ZorgpartijZorgpartijAdresState">
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
<Value>Land</Value>
</Value>
<Value name="6">
<Value>Plaats</Value>
</Value>
<Value name="7">
<Value>Postcode</Value>
</Value>
<Value name="8">
<Value>Provincie</Value>
</Value>
<Value name="9">
<Value>Straat</Value>
</Value>
<Value name="10">
<Value>Type</Value>
</Value>
</Data>
<State>v2ZorgpartijZorgpartijAdresState</State>
<StreamLocation>^CONNECTORSD8C0.v2ZorgpartiC6C5S</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
