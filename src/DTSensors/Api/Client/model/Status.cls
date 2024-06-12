Class DTSensors.Api.Client.model.Status Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

/// The error code of the failed operation.
/// 
/// Available error codes:
///  * `INVALID_ARGUMENT` - Invalid argument specified for the operation.
///  * `NOT_FOUND` - The resource does not exists.
///  * `INTERNAL_ERROR` - An internal error caused the operation to fail. Retriable.
/// * This property is required.
Property code As %String(MAXLEN = "", VALUELIST = ",INVALID_ARGUMENT,NOT_FOUND,INTERNAL_ERROR");

/// A developer-facing error message in English.
/// * This property is required.
Property message As %String(MAXLEN = "");

Storage Default
{
<Data name="StatusState">
<Value name="1">
<Value>code</Value>
</Value>
<Value name="2">
<Value>message</Value>
</Value>
</Data>
<State>StatusState</State>
<StreamLocation>^DTSensors.Api.ClienD1EA.StatusS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
