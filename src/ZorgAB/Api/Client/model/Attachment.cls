Class ZorgAB.Api.Client.model.Attachment Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

Property author As %String(MAXLEN = "");

Property data As %String(MAXLEN = "");

Property description As %String(MAXLEN = "");

Property index As %String(MAXLEN = "");

Property mimeType As %String(MAXLEN = "");

Property timestamp As %String(MAXLEN = "");

Storage Default
{
<Data name="AttachmentState">
<Value name="1">
<Value>author</Value>
</Value>
<Value name="2">
<Value>data</Value>
</Value>
<Value name="3">
<Value>description</Value>
</Value>
<Value name="4">
<Value>index</Value>
</Value>
<Value name="5">
<Value>mimeType</Value>
</Value>
<Value name="6">
<Value>timestamp</Value>
</Value>
</Data>
<State>AttachmentState</State>
<StreamLocation>^CONNECTORSPKG.Z34FF.AttachmentS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
