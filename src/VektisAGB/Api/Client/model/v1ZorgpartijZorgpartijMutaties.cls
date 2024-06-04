Class CONNECTORSPKG.VektisAGB.Api.Client.model.v1ZorgpartijZorgpartijMutaties Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

Property Zorgpartijen As list Of CONNECTORSPKG.VektisAGB.Api.Client.model.v1ZorgpartijZorgpartijMutatie(XMLITEMNAME = "Zorgpartij");

Storage Default
{
<Data name="v1ZorgpartijZorgpartijMutatiesState">
<Value name="1">
<Value>Zorgpartijen</Value>
</Value>
</Data>
<State>v1ZorgpartijZorgpartijMutatiesState</State>
<StreamLocation>^CONNECTORSD8C0.v1ZorgpartiB048S</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
