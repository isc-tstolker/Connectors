Class VektisAGB.Api.Client.model.v2RelatieRelatie Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

/// CODE, length = 8 numeriek in een string, AGBCode
/// * This property is required.
Property AGBCode As %String(MAXLEN = 8, MINLEN = 8);

/// DATUMAANVANG, dateTime, Datum vanaf wanneer een relatie geldig is
/// * This property is required.
Property Aanvang As %TimeStamp;

/// DATUMEINDE, dateTime, Datum vanaf wanneer een relatie geldig is
Property Einde As %TimeStamp;

/// RELATIENAAM, maxLength = 60, Naam die een relatie kan hebben
/// * This property is required.
Property Naam As %String(MAXLEN = 60, MINLEN = 1);

/// 
/// * This property is required.
Property Rol As VektisAGB.Api.Client.model.ReferentiegegevensRelatieRol(XMLNAME = "Rol");

/// 
/// * This property is required.
Property Type As VektisAGB.Api.Client.model.ReferentiegegevensRelatieType(XMLNAME = "Type");

Property Zorgaanbod As VektisAGB.Api.Client.model.ReferentiegegevensZorgaanbod(XMLNAME = "Zorgaanbod");

/// 
/// * This property is required.
Property ZorgpartijType As VektisAGB.Api.Client.model.ReferentiegegevensZorgpartijType(XMLNAME = "ZorgpartijType");

Storage Default
{
<Data name="v2RelatieRelatieState">
<Value name="1">
<Value>AGBCode</Value>
</Value>
<Value name="2">
<Value>Aanvang</Value>
</Value>
<Value name="3">
<Value>Einde</Value>
</Value>
<Value name="4">
<Value>Naam</Value>
</Value>
<Value name="5">
<Value>Rol</Value>
</Value>
<Value name="6">
<Value>Type</Value>
</Value>
<Value name="7">
<Value>Zorgaanbod</Value>
</Value>
<Value name="8">
<Value>ZorgpartijType</Value>
</Value>
</Data>
<State>v2RelatieRelatieState</State>
<StreamLocation>^CONNECTORSD8C0.v2RelatieRe16BCS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
