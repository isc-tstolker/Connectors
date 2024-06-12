Class DTSensors.Api.Client.model.NewServiceAccount Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

/// The display name of the Service Account.
/// * This property is required.
Property displayName As %String(MAXLEN = "");

/// If true, this account will accept using the secret as a password in basic auth.
/// 
/// This is not recommended for production use, but may make it easier
/// to get prototypes quickly up and running.
/// * This property is required.
Property enableBasicAuth As %Boolean;

Storage Default
{
<Data name="NewServiceAccountState">
<Value name="1">
<Value>displayName</Value>
</Value>
<Value name="2">
<Value>enableBasicAuth</Value>
</Value>
</Data>
<State>NewServiceAccountState</State>
<StreamLocation>^DTSensorsD1EA.NewServiceA8F4ES</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
