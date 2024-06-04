Class CONNECTORSPKG.ZorgAB.Api.Client.model.CredentialInput Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

Property active As %Boolean [ InitialExpression = "1" ];

Property description As %String(MAXLEN = "");

Property type As %String(MAXLEN = "");

Storage Default
{
<Data name="CredentialInputState">
<Value name="1">
<Value>active</Value>
</Value>
<Value name="2">
<Value>description</Value>
</Value>
<Value name="3">
<Value>type</Value>
</Value>
</Data>
<State>CredentialInputState</State>
<StreamLocation>^CONNECTORS34FF.CredentialI8F0ES</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
