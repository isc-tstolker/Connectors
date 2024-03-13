Class CONNECTORSPKG.ZorgAB.Api.Client.model.Identification Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

Property active As %Boolean [ InitialExpression = "1" ];

Property author As %String(MAXLEN = "");

Property description As %String(MAXLEN = "");

Property index As %String(MAXLEN = "");

Property timestamp As %String(MAXLEN = "");

Property type As %String(MAXLEN = "");

Property value As %String(MAXLEN = "");

Storage Default
{
<Data name="IdentificationState">
<Value name="1">
<Value>active</Value>
</Value>
<Value name="2">
<Value>author</Value>
</Value>
<Value name="3">
<Value>description</Value>
</Value>
<Value name="4">
<Value>index</Value>
</Value>
<Value name="5">
<Value>timestamp</Value>
</Value>
<Value name="6">
<Value>type</Value>
</Value>
<Value name="7">
<Value>value</Value>
</Value>
</Data>
<State>IdentificationState</State>
<StreamLocation>^CONNECTORSP34FF.IdentificationS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
