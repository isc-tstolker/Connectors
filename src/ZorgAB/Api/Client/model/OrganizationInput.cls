Class ZorgAB.Api.Client.model.OrganizationInput Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

Property addresses As list Of ZorgAB.Api.Client.model.AddressInput;

Property attachments As list Of ZorgAB.Api.Client.model.AttachmentInput;

Property comment As %String(MAXLEN = "");

Property credentials As list Of ZorgAB.Api.Client.model.CredentialInput;

Property electronicServices As list Of ZorgAB.Api.Client.model.ElectronicServiceInput;

Property identifications As list Of ZorgAB.Api.Client.model.IdentificationInput;

Property names As list Of ZorgAB.Api.Client.model.OrganizationNameInput;

Property speciality As %String(MAXLEN = "");

Property telecoms As list Of ZorgAB.Api.Client.model.TelecomInput;

/// Deprecated. Supported until 31-12-2020
Property type As list Of %String(MAXLEN = "");

Property types As list Of ZorgAB.Api.Client.model.TypeInput;

Storage Default
{
<Data name="OrganizationInputState">
<Value name="1">
<Value>addresses</Value>
</Value>
<Value name="2">
<Value>attachments</Value>
</Value>
<Value name="3">
<Value>comment</Value>
</Value>
<Value name="4">
<Value>credentials</Value>
</Value>
<Value name="5">
<Value>electronicServices</Value>
</Value>
<Value name="6">
<Value>identifications</Value>
</Value>
<Value name="7">
<Value>names</Value>
</Value>
<Value name="8">
<Value>speciality</Value>
</Value>
<Value name="9">
<Value>telecoms</Value>
</Value>
<Value name="10">
<Value>type</Value>
</Value>
<Value name="11">
<Value>types</Value>
</Value>
</Data>
<State>OrganizationInputState</State>
<StreamLocation>^CONNECTORS34FF.Organizatio7BD5S</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
