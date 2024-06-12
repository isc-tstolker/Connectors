Class DTSensors.Api.Client.model.ClaimKit Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

Property devices As list Of DTSensors.Api.Client.model.ClaimDevice;

/// The display name of the kit. This is the same as the name on the 
/// printed sticker on the kit box.
Property displayName As %String(MAXLEN = "");

/// The identifier of the kit that was requested. In this case, 
/// it will be the same as the identifier in the request.
Property kitId As %String(MAXLEN = "");

Storage Default
{
<Data name="ClaimKitState">
<Value name="1">
<Value>devices</Value>
</Value>
<Value name="2">
<Value>displayName</Value>
</Value>
<Value name="3">
<Value>kitId</Value>
</Value>
</Data>
<State>ClaimKitState</State>
<StreamLocation>^DTSensors.Api.CliD1EA.ClaimKitS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
