Class DTSensors.Api.Client.model.CloudConnector Extends (%SerialObject, %JSON.Adaptor, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

/// Map of labels used for indexing and search of cloud connectors.
/// * This property is required.
Property labels As DTSensors.Api.Client.model.CloudConnectorlabels;

/// The resource name of a device
/// * This property is required.
Property name As %String(MAXLEN = "");

/// The product number of the device. This is the same product number that can be found on the support pages for both [Sensors](https://support.disruptive-technologies.com/hc/en-us/sections/360003211399-Sensors) and [Cloud Connectors](https://support.disruptive-technologies.com/hc/en-us/sections/360003168340-Cloud-Connectors).
/// * This property is required.
Property productNumber As %String(MAXLEN = "");

/// 
/// * This property is required.
Property reported As DTSensors.Api.Client.model.CloudConnectorreported;

/// For cloud connectors the value is "ccon"
/// * This property is required.
Property type As %String(MAXLEN = "", VALUELIST = ",ccon");

/// The timestamp (UTC) of  when the Sensor was last modified.
Property updateTime As %String(MAXLEN = "");

Storage Default
{
<Data name="CloudConnectorState">
<Value name="1">
<Value>labels</Value>
</Value>
<Value name="2">
<Value>name</Value>
</Value>
<Value name="3">
<Value>productNumber</Value>
</Value>
<Value name="4">
<Value>reported</Value>
</Value>
<Value name="5">
<Value>type</Value>
</Value>
<Value name="6">
<Value>updateTime</Value>
</Value>
</Data>
<State>CloudConnectorState</State>
<StreamLocation>^DTSensors.AD1EA.CloudConnectorS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
