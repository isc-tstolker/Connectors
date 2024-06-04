Class CONNECTORSPKG.ZorgAB.Api.Client.model.SubOrganization Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

Property author As %String(MAXLEN = "");

Property className As %String(%JSONFIELDNAME = "_className", MAXLEN = "");

Property id As %String(%JSONFIELDNAME = "_id", MAXLEN = "");

Property mainOrganizationId As %String(MAXLEN = "");

Property self As %String(%JSONFIELDNAME = "_self", MAXLEN = "");

Property subOrganizationId As %String(MAXLEN = "");

Property timestamp As %String(MAXLEN = "");

Storage Default
{
<Data name="SubOrganizationState">
<Value name="1">
<Value>author</Value>
</Value>
<Value name="2">
<Value>className</Value>
</Value>
<Value name="3">
<Value>id</Value>
</Value>
<Value name="4">
<Value>mainOrganizationId</Value>
</Value>
<Value name="5">
<Value>self</Value>
</Value>
<Value name="6">
<Value>subOrganizationId</Value>
</Value>
<Value name="7">
<Value>timestamp</Value>
</Value>
</Data>
<State>SubOrganizationState</State>
<StreamLocation>^CONNECTORS34FF.SubOrganizaCEEDS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
