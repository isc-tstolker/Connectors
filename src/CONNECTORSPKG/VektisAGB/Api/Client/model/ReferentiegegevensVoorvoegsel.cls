Class CONNECTORSPKG.VektisAGB.Api.Client.model.ReferentiegegevensVoorvoegsel Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

/// Code ELEMENT, lengte en (alfa)numeriek is afhankelijk van de codelijst
/// * This property is required.
Property Code As %String(MAXLEN = 8, MINLEN = 1);

/// BETEKENIS, maxLength = 255, Omschrijving van de code
/// * This property is required.
Property Omschrijving As %String(MAXLEN = 255, MINLEN = 1);

Storage Default
{
<Data name="ReferentiegegevensVoorvoegselState">
<Value name="1">
<Value>Code</Value>
</Value>
<Value name="2">
<Value>Omschrijving</Value>
</Value>
</Data>
<State>ReferentiegegevensVoorvoegselState</State>
<StreamLocation>^CONNECTORSD8C0.ReferentiegD7A9S</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
