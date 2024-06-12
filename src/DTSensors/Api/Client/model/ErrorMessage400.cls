Class DTSensors.Api.Client.model.ErrorMessage400 Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

/// The status code of the error.
Property code As %Integer;

/// A link to the relevant section in the Developer Docs that describes the error in more detail.
Property help As %String(MAXLEN = "");

/// A message describing what went wrong.
Property message As %String(MAXLEN = "");

Storage Default
{
<Data name="ErrorMessage400State">
<Value name="1">
<Value>code</Value>
</Value>
<Value name="2">
<Value>help</Value>
</Value>
<Value name="3">
<Value>message</Value>
</Value>
</Data>
<State>ErrorMessage400State</State>
<StreamLocation>^DTSensorsD1EA.ErrorMessagFB0DS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
