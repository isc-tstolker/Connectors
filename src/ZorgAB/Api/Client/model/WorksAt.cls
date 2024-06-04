Class CONNECTORSPKG.ZorgAB.Api.Client.model.WorksAt Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

Property author As %String(MAXLEN = "");

Property availability As %String(MAXLEN = "");

Property className As %String(%JSONFIELDNAME = "_className", MAXLEN = "");

Property id As %String(%JSONFIELDNAME = "_id", MAXLEN = "");

Property individualId As %String(MAXLEN = "");

Property organizationId As %String(MAXLEN = "");

Property self As %String(%JSONFIELDNAME = "_self", MAXLEN = "");

Property speciality As %String(MAXLEN = "");

Property telecoms As list Of CONNECTORSPKG.ZorgAB.Api.Client.model.Telecom;

Property timestamp As %String(MAXLEN = "");

Storage Default
{
<Data name="WorksAtState">
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
<Value>organizationId</Value>
</Value>
<Value name="7">
<Value>self</Value>
</Value>
<Value name="8">
<Value>speciality</Value>
</Value>
<Value name="9">
<Value>telecoms</Value>
</Value>
<Value name="10">
<Value>timestamp</Value>
</Value>
</Data>
<State>WorksAtState</State>
<StreamLocation>^CONNECTORSPKG.Zorg34FF.WorksAtS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
