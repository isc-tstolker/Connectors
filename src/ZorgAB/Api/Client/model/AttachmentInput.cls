Class CONNECTORSPKG.ZorgAB.Api.Client.model.AttachmentInput Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

Property data As %String(MAXLEN = "");

Property description As %String(MAXLEN = "");

Property mimeType As %String(MAXLEN = "");

Storage Default
{
<Data name="AttachmentInputState">
<Value name="1">
<Value>data</Value>
</Value>
<Value name="2">
<Value>description</Value>
</Value>
<Value name="3">
<Value>mimeType</Value>
</Value>
</Data>
<State>AttachmentInputState</State>
<StreamLocation>^CONNECTORS34FF.AttachmentI1F1FS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
