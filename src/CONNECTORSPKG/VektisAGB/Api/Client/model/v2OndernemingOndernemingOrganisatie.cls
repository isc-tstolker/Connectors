Class CONNECTORSPKG.VektisAGB.Api.Client.model.v2OndernemingOndernemingOrganisatie Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

/// CODE, length = 8 numeriek in een string, AGBCode
/// * This property is required.
Property AGBCode As %String(MAXLEN = 8, MINLEN = 8);

/// DATUMAANVANG, dateTime, Datum vanaf wanneer een AGBCode geldig is
/// * This property is required.
Property AanvangAGBCode As %TimeStamp;

Property CorrespondentieAdres As CONNECTORSPKG.VektisAGB.Api.Client.model.v2OndernemingAdres(XMLNAME = "Adres");

/// DATUMEINDE, dateTime, Datum tot en met wanneer de AGBCode geldig is
Property EindeAGBCode As %TimeStamp;

/// HANDELSNAAM1, maxLength = 150, Eerste handelsnaam waaronder de onderneming bekend is bij het handelsregister
/// * This property is required.
Property Naam As %String(MAXLEN = 150, MINLEN = 1);

/// 
/// * This property is required.
Property Vestigingen As list Of CONNECTORSPKG.VektisAGB.Api.Client.model.v2OndernemingVestigingOrganisatie(XMLITEMNAME = "Vestiging");

Storage Default
{
<Data name="v2OndernemingOndernemingOrganisatieState">
<Value name="1">
<Value>AGBCode</Value>
</Value>
<Value name="2">
<Value>AanvangAGBCode</Value>
</Value>
<Value name="3">
<Value>CorrespondentieAdres</Value>
</Value>
<Value name="4">
<Value>EindeAGBCode</Value>
</Value>
<Value name="5">
<Value>Naam</Value>
</Value>
<Value name="6">
<Value>Vestigingen</Value>
</Value>
</Data>
<State>v2OndernemingOndernemingOrganisatieState</State>
<StreamLocation>^CONNECTORSD8C0.v2Ondernemi51C2S</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
