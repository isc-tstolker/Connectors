Class CONNECTORSPKG.ZorgAB.Api.Client.model.TelecomInput Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

Property active As %Boolean [ InitialExpression = "1" ];

Property name As %String(MAXLEN = "");

Property preferred As %Boolean [ InitialExpression = "0" ];

Property type As %String(MAXLEN = "");

Property value As %String(MAXLEN = "");

Storage Default
{
<Data name="TelecomInputState">
<Value name="1">
<Value>active</Value>
</Value>
<Value name="2">
<Value>name</Value>
</Value>
<Value name="3">
<Value>preferred</Value>
</Value>
<Value name="4">
<Value>type</Value>
</Value>
<Value name="5">
<Value>value</Value>
</Value>
</Data>
<State>TelecomInputState</State>
<StreamLocation>^CONNECTORSPKG34FF.TelecomInputS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
