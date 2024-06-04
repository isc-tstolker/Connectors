Class ZorgAB.Api.Client.model.SubOrganizationInput Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

/// 
/// * This property is required.
Property mainOrganizationId As %String(MAXLEN = "");

/// 
/// * This property is required.
Property subOrganizationId As %String(MAXLEN = "");

Storage Default
{
<Data name="SubOrganizationInputState">
<Value name="1">
<Value>mainOrganizationId</Value>
</Value>
<Value name="2">
<Value>subOrganizationId</Value>
</Value>
</Data>
<State>SubOrganizationInputState</State>
<StreamLocation>^CONNECTORS34FF.SubOrganizaB574S</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
