Class ZorgAB.Api.Client.model.Relation Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

Property author As %String(MAXLEN = "");

Property availability As %String(MAXLEN = "");

Property className As %String(%JSONFIELDNAME = "_className", MAXLEN = "");

Property id As %String(%JSONFIELDNAME = "_id", MAXLEN = "");

Property individualId As %String(MAXLEN = "");

Property mainOrganizationId As %String(MAXLEN = "");

Property organizationId As %String(MAXLEN = "");

Property self As %String(%JSONFIELDNAME = "_self", MAXLEN = "");

Property speciality As %String(MAXLEN = "");

Property subOrganizationId As %String(MAXLEN = "");

Property telecoms As list Of ZorgAB.Api.Client.model.Telecom;

Property timestamp As %String(MAXLEN = "");

Storage Default
{
<Data name="RelationState">
<Value name="1">
<Value>author</Value>
</Value>
<Value name="2">
<Value>availability</Value>
</Value>
<Value name="3">
<Value>className</Value>
</Value>
<Value name="4">
<Value>id</Value>
</Value>
<Value name="5">
<Value>individualId</Value>
</Value>
<Value name="6">
<Value>mainOrganizationId</Value>
</Value>
<Value name="7">
<Value>organizationId</Value>
</Value>
<Value name="8">
<Value>self</Value>
</Value>
<Value name="9">
<Value>speciality</Value>
</Value>
<Value name="10">
<Value>subOrganizationId</Value>
</Value>
<Value name="11">
<Value>telecoms</Value>
</Value>
<Value name="12">
<Value>timestamp</Value>
</Value>
</Data>
<State>RelationState</State>
<StreamLocation>^CONNECTORSPKG.Zor34FF.RelationS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
