Class CONNECTORSPKG.ZorgAB.Api.Client.model.IndividualInput Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

Property addresses As list Of CONNECTORSPKG.ZorgAB.Api.Client.model.AddressInput;

Property attachments As list Of CONNECTORSPKG.ZorgAB.Api.Client.model.AttachmentInput;

Property comment As %String(MAXLEN = "");

Property credentials As list Of CONNECTORSPKG.ZorgAB.Api.Client.model.CredentialInput;

Property doB As %String(MAXLEN = "");

Property electronicServices As list Of CONNECTORSPKG.ZorgAB.Api.Client.model.ElectronicServiceInput;

Property gender As %String(MAXLEN = "", VALUELIST = ",male,female,other,unknown");

Property identifications As list Of CONNECTORSPKG.ZorgAB.Api.Client.model.IdentificationInput;

Property languages As list Of %String(MAXLEN = "");

Property names As list Of CONNECTORSPKG.ZorgAB.Api.Client.model.IndividualNameInput;

Property speciality As %String(MAXLEN = "");

Property telecoms As list Of CONNECTORSPKG.ZorgAB.Api.Client.model.TelecomInput;

Property types As list Of CONNECTORSPKG.ZorgAB.Api.Client.model.TypeInput;

Storage Default
{
<Data name="IndividualInputState">
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
<Value>doB</Value>
</Value>
<Value name="6">
<Value>electronicServices</Value>
</Value>
<Value name="7">
<Value>gender</Value>
</Value>
<Value name="8">
<Value>identifications</Value>
</Value>
<Value name="9">
<Value>languages</Value>
</Value>
<Value name="10">
<Value>names</Value>
</Value>
<Value name="11">
<Value>speciality</Value>
</Value>
<Value name="12">
<Value>telecoms</Value>
</Value>
<Value name="13">
<Value>types</Value>
</Value>
</Data>
<State>IndividualInputState</State>
<StreamLocation>^CONNECTORS34FF.IndividualIC150S</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
