Class DTSensors.Api.Client.model.ClaimInfoResponseKit Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

/// 
/// * This property is required.
Property kit As DTSensors.Api.Client.model.ClaimKit;

/// Will always be "KIT" when the request was for a kit identifier.
/// * This property is required.
Property type As %String(MAXLEN = "", VALUELIST = ",KIT");

Storage Default
{
<Data name="ClaimInfoResponseKitState">
<Value name="1">
<Value>kit</Value>
</Value>
<Value name="2">
<Value>type</Value>
</Value>
</Data>
<State>ClaimInfoResponseKitState</State>
<StreamLocation>^DTSensorsD1EA.ClaimInfoRe33DDS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
