Class CONNECTORSPKG.VektisAGB.Api.Client.model.v1ZorgpartijZorgpartijMutatie Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

/// CODE, length = 8 numeriek in een string, AGBCode
/// * This property is required.
Property AGBCode As %String(MAXLEN = 8, MINLEN = 8);

/// 
/// * This property is required.
Property ZorgpartijType As CONNECTORSPKG.VektisAGB.Api.Client.model.ReferentiegegevensZorgpartijType(XMLNAME = "ZorgpartijType");

Storage Default
{
<Data name="v1ZorgpartijZorgpartijMutatieState">
<Value name="1">
<Value>AGBCode</Value>
</Value>
<Value name="2">
<Value>ZorgpartijType</Value>
</Value>
</Data>
<State>v1ZorgpartijZorgpartijMutatieState</State>
<StreamLocation>^CONNECTORSD8C0.v1Zorgpartij9CCS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
