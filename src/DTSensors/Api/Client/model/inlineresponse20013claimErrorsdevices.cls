Class DTSensors.Api.Client.model.inlineresponse20013claimErrorsdevices Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

/// If it's `NOT_FOUND`, a device in the `deviceIds` list in the request couldn't be found.
/// If it's `ALREADY_CLAIMED`, either one of the devices in `kitIds` or in `deviceIds` of
/// the request was already claimed (`isClaimed` was `true`).
Property code As %String(MAXLEN = "", VALUELIST = ",NOT_FOUND,ALREADY_CLAIMED");

/// The identifier of the device that failed to be claimed.
Property deviceId As %String(MAXLEN = "");

/// A user presentable error message of why this specific device couldn't be claimed.
Property message As %String(MAXLEN = "");

Storage Default
{
<Data name="inlineresponse20013claimErrorsdevicesState">
<Value name="1">
<Value>code</Value>
</Value>
<Value name="2">
<Value>deviceId</Value>
</Value>
<Value name="3">
<Value>message</Value>
</Value>
</Data>
<State>inlineresponse20013claimErrorsdevicesState</State>
<StreamLocation>^DTSensorsD1EA.inlinerespoBBA4S</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
