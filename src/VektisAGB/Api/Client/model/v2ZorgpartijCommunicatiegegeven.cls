Class VektisAGB.Api.Client.model.v2ZorgpartijCommunicatiegegeven Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

/// DATUMAANVANG, dateTime, Datum vanaf wanneer het communicatiegegeven geldig is
/// * This property is required.
Property Aanvang As %TimeStamp;

/// 
/// * This property is required.
Property Doel As VektisAGB.Api.Client.model.ReferentiegegevensDoel(XMLNAME = "Doel");

/// DATUMEINDE, dateTime, Datum tot en met wanneer het communicatiegegeven geldig is
Property Einde As %TimeStamp;

/// NUMMER_URL, maxLength = 128, Waarde communicatiegegeven, t.w. een telefoonnummer of een URL
/// * This property is required.
Property Gegeven As %String(MAXLEN = 128, MINLEN = 1);

/// 
/// * This property is required.
Property Type As VektisAGB.Api.Client.model.ReferentiegegevensCommunicatiegegevenType(XMLNAME = "CommunicatiegegevenType");

Storage Default
{
<Data name="v2ZorgpartijCommunicatiegegevenState">
<Value name="1">
<Value>Aanvang</Value>
</Value>
<Value name="2">
<Value>Doel</Value>
</Value>
<Value name="3">
<Value>Einde</Value>
</Value>
<Value name="4">
<Value>Gegeven</Value>
</Value>
<Value name="5">
<Value>Type</Value>
</Value>
</Data>
<State>v2ZorgpartijCommunicatiegegevenState</State>
<StreamLocation>^CONNECTORSD8C0.v2ZorgpartiB8F7S</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
