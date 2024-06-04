Class VektisAGB.Api.Client.model.v2RelatieZorgpartijRelaties Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

/// CODE, length = 8 numeriek in een string, AGBCode
/// * This property is required.
Property AGBCode As %String(MAXLEN = 8, MINLEN = 8);

/// ROEPNAAM, maxLength = 60, Naam waaronder de zorgpartij bekend is of vermeld wil staan
/// * This property is required.
Property Naam As %String(MAXLEN = 60, MINLEN = 1);

/// 
/// * This property is required.
Property Relaties As list Of VektisAGB.Api.Client.model.v2RelatieRelatie(XMLITEMNAME = "Relatie");

/// 
/// * This property is required.
Property ZorgpartijType As VektisAGB.Api.Client.model.ReferentiegegevensZorgpartijType(XMLNAME = "ZorgpartijType");

Storage Default
{
<Data name="v2RelatieZorgpartijRelatiesState">
<Value name="1">
<Value>AGBCode</Value>
</Value>
<Value name="2">
<Value>Naam</Value>
</Value>
<Value name="3">
<Value>Relaties</Value>
</Value>
<Value name="4">
<Value>ZorgpartijType</Value>
</Value>
</Data>
<State>v2RelatieZorgpartijRelatiesState</State>
<StreamLocation>^CONNECTORSD8C0.v2RelatieZo1613S</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
