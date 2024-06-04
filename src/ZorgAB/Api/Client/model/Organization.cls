Class ZorgAB.Api.Client.model.Organization Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

Property active As %Boolean [ InitialExpression = "1" ];

Property addresses As list Of ZorgAB.Api.Client.model.Address;

Property applicationIds As list Of %String(MAXLEN = "");

Property attachments As list Of ZorgAB.Api.Client.model.Attachment;

Property author As %String(MAXLEN = "");

Property className As %String(%JSONFIELDNAME = "_className", MAXLEN = "");

Property comment As %String(MAXLEN = "");

Property credentials As list Of ZorgAB.Api.Client.model.Credential;

Property displayName As %String(MAXLEN = "");

Property electronicServices As list Of ZorgAB.Api.Client.model.ElectronicService;

Property id As %String(%JSONFIELDNAME = "_id", MAXLEN = "");

Property identifications As list Of ZorgAB.Api.Client.model.Identification;

Property medMijZorgaanbiedernaam As %String(MAXLEN = "");

Property names As list Of ZorgAB.Api.Client.model.OrganizationName;

Property self As %String(%JSONFIELDNAME = "_self", MAXLEN = "");

Property speciality As %String(MAXLEN = "");

Property telecoms As list Of ZorgAB.Api.Client.model.Telecom;

Property timestamp As %String(MAXLEN = "");

/// Deprecated. Supported until 31-12-2020
Property type As list Of %String(MAXLEN = "");

Property types As list Of ZorgAB.Api.Client.model.Type;

Property ura As %String(MAXLEN = "");

Storage Default
{
<Data name="OrganizationState">
<Value name="1">
<Value>active</Value>
</Value>
<Value name="2">
<Value>addresses</Value>
</Value>
<Value name="3">
<Value>applicationIds</Value>
</Value>
<Value name="4">
<Value>attachments</Value>
</Value>
<Value name="5">
<Value>author</Value>
</Value>
<Value name="6">
<Value>className</Value>
</Value>
<Value name="7">
<Value>comment</Value>
</Value>
<Value name="8">
<Value>credentials</Value>
</Value>
<Value name="9">
<Value>displayName</Value>
</Value>
<Value name="10">
<Value>electronicServices</Value>
</Value>
<Value name="11">
<Value>id</Value>
</Value>
<Value name="12">
<Value>identifications</Value>
</Value>
<Value name="13">
<Value>medMijZorgaanbiedernaam</Value>
</Value>
<Value name="14">
<Value>names</Value>
</Value>
<Value name="15">
<Value>self</Value>
</Value>
<Value name="16">
<Value>speciality</Value>
</Value>
<Value name="17">
<Value>telecoms</Value>
</Value>
<Value name="18">
<Value>timestamp</Value>
</Value>
<Value name="19">
<Value>type</Value>
</Value>
<Value name="20">
<Value>types</Value>
</Value>
<Value name="21">
<Value>ura</Value>
</Value>
</Data>
<State>OrganizationState</State>
<StreamLocation>^CONNECTORSPKG34FF.OrganizationS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
