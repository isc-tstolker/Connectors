Class CONNECTORSPKG.ZorgAB.Api.Client.model.Individual Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

Property active As %Boolean [ InitialExpression = "1" ];

Property addresses As list Of CONNECTORSPKG.ZorgAB.Api.Client.model.Address;

Property attachments As list Of CONNECTORSPKG.ZorgAB.Api.Client.model.Attachment;

Property author As %String(MAXLEN = "");

Property className As %String(%JSONFIELDNAME = "_className", MAXLEN = "");

Property comment As %String(MAXLEN = "");

Property credentials As list Of CONNECTORSPKG.ZorgAB.Api.Client.model.Credential;

Property displayName As %String(MAXLEN = "");

Property doB As %String(MAXLEN = "");

Property electronicServices As list Of CONNECTORSPKG.ZorgAB.Api.Client.model.ElectronicService;

Property gender As %String(MAXLEN = "", VALUELIST = ",male,female,other,unknown");

Property id As %String(%JSONFIELDNAME = "_id", MAXLEN = "");

Property identifications As list Of CONNECTORSPKG.ZorgAB.Api.Client.model.Identification;

Property languages As list Of %String(MAXLEN = "");

Property names As list Of CONNECTORSPKG.ZorgAB.Api.Client.model.IndividualName;

Property self As %String(%JSONFIELDNAME = "_self", MAXLEN = "");

Property speciality As %String(MAXLEN = "");

Property telecoms As list Of CONNECTORSPKG.ZorgAB.Api.Client.model.Telecom;

Property timestamp As %String(MAXLEN = "");

Property types As list Of CONNECTORSPKG.ZorgAB.Api.Client.model.Type;

Property uzi As %String(MAXLEN = "");

Storage Default
{
<Data name="IndividualState">
<Value name="1">
<Value>active</Value>
</Value>
<Value name="2">
<Value>addresses</Value>
</Value>
<Value name="3">
<Value>attachments</Value>
</Value>
<Value name="4">
<Value>author</Value>
</Value>
<Value name="5">
<Value>className</Value>
</Value>
<Value name="6">
<Value>comment</Value>
</Value>
<Value name="7">
<Value>credentials</Value>
</Value>
<Value name="8">
<Value>displayName</Value>
</Value>
<Value name="9">
<Value>doB</Value>
</Value>
<Value name="10">
<Value>electronicServices</Value>
</Value>
<Value name="11">
<Value>gender</Value>
</Value>
<Value name="12">
<Value>id</Value>
</Value>
<Value name="13">
<Value>identifications</Value>
</Value>
<Value name="14">
<Value>languages</Value>
</Value>
<Value name="15">
<Value>names</Value>
</Value>
<Value name="16">
<Value>self</Value>
</Value>
<Value name="17">
<Value>speciality</Value>
</Value>
<Value name="18">
<Value>telecoms</Value>
</Value>
<Value name="19">
<Value>timestamp</Value>
</Value>
<Value name="20">
<Value>types</Value>
</Value>
<Value name="21">
<Value>uzi</Value>
</Value>
</Data>
<State>IndividualState</State>
<StreamLocation>^CONNECTORSPKG.Z34FF.IndividualS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
