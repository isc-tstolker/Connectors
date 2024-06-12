Class DTSensors.Api.Client.model.ConnectivityError Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

Property code As %Integer;

Property message As %String(MAXLEN = "");

Storage Default
{
<Data name="ConnectivityErrorState">
<Value name="1">
<Value>code</Value>
</Value>
<Value name="2">
<Value>message</Value>
</Value>
</Data>
<State>ConnectivityErrorState</State>
<StreamLocation>^DTSensorsD1EA.ConnectivitCC24S</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
