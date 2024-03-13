Class CONNECTORSPKG.ZorgAB.Api.Client.model.IdentificationInput Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

Property active As %Boolean [ InitialExpression = "1" ];

Property description As %String(MAXLEN = "");

Property type As %String(MAXLEN = "");

Property value As %String(MAXLEN = "");

Storage Default
{
<Data name="IdentificationInputState">
<Value name="1">
<Value>active</Value>
</Value>
<Value name="2">
<Value>description</Value>
</Value>
<Value name="3">
<Value>type</Value>
</Value>
<Value name="4">
<Value>value</Value>
</Value>
</Data>
<State>IdentificationInputState</State>
<StreamLocation>^CONNECTORS34FF.Identificat7648S</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
