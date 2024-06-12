Class DTSensors.Api.Client.requests.projectsprojectdevicesdevicestreamGET Extends Ens.Request [ ProcedureBlock ]
{

Parameter METHOD = "get";

Parameter URL = "/projects/{project}/devices/{device}:stream";

Property %Consume As %String(MAXLEN = "");

Property %ContentType As %String(MAXLEN = "");

Property %URL As %String(MAXLEN = "") [ InitialExpression = {..#URL} ];

/// The identifier of the Device.
Property pathdevice As %String(MAXLEN = "");

/// List of event types to limit the results to. Will default to all event types if not present.
/// 
/// Here's an overview of the available event types:
/// 
/// | Event Type           | Event Details                                                                                                         |
/// | -------------------- | --------------------------------------------------------------------------------------------------------------------- |
/// | `touch`              | [Touch](https://developer.disruptive-technologies.com/docs/concepts/events#touch-event)                               |
/// | `temperature`        | [Temperature](https://developer.disruptive-technologies.com/docs/concepts/events#temperature-event)                   |
/// | `objectPresent`      | [Object Present](https://developer.disruptive-technologies.com/docs/concepts/events#object-present-event)             |
/// | `humidity`           | [Humidity](https://developer.disruptive-technologies.com/docs/concepts/events#humidity-event)                         |
/// | `objectPresentCount` | [Object-Present Count](https://developer.disruptive-technologies.com/docs/concepts/events#object-present-count-event) |
/// | `touchCount`         | [Touch Count](https://developer.disruptive-technologies.com/docs/concepts/events#touch-count-event)                   |
/// | `waterPresent`       | [Water Present](https://developer.disruptive-technologies.com/docs/concepts/events#water-present-event)               |
/// | `co2`                | [CO2](https://developer.disruptive-technologies.com/docs/concepts/events#co2-event)                                   |
/// | `pressure`           | [Pressure](https://developer.disruptive-technologies.com/docs/concepts/events#pressure-event)                         |
/// | `motion`             | [Motion](https://developer.disruptive-technologies.com/docs/concepts/events#motion-event)                             |
/// | `contact`            | [Contact](https://developer.disruptive-technologies.com/docs/concepts/events#contact-event)                           |
/// | `probeWireStatus`    | [Probe Wire Status](https://developer.disruptive-technologies.com/docs/concepts/events#probe-wire-status-event)       |
/// | `deskOccupancy`      | [Desk Occupancy](https://developer.disruptive-technologies.com/docs/concepts/events#desk-occupancy-event)             |
/// | `networkStatus`      | [Network Status](https://developer.disruptive-technologies.com/docs/concepts/events#network-status-event)             |
/// | `batteryStatus`      | [Battery Status](https://developer.disruptive-technologies.com/docs/concepts/events#battery-status-event)             |
/// | `connectionStatus`   | [Connection Status](https://developer.disruptive-technologies.com/docs/concepts/events#connection-status-event)       |
/// | `ethernetStatus`     | [Ethernet Status](https://developer.disruptive-technologies.com/docs/concepts/events#ethernet-status-event)           |
/// | `cellularStatus`     | [Cellular Status](https://developer.disruptive-technologies.com/docs/concepts/events#cellular-status-event)           |
Property queryeventTypes As list Of %String(MAXLEN = "");

/// An optional way of authenticating, that doesn't use the `authorization` HTTP header, 
/// is to pass the access token as a parameter.
/// 
/// This is especially useful for the `:stream` endpoints, as some Server Sent Events 
/// libraries does not allow one to modify the HTTP request, namely JavaScript's `EventSource`.
Property querytoken As %String(MAXLEN = "");

/// Load %Net.HttpRequest with this property object.
Method LoadHttpRequestObject(ByRef httpRequest As %Net.HttpRequest) As %Status
{
	Set sc = $$$OK
	Set httpRequest.ContentType = ..%ContentType
	Do httpRequest.SetHeader("accept", ..%Consume)
	Set ..%URL = $Replace(..#URL,"{device}", ..pathdevice)
	If (..querytoken '= "") {
		Do httpRequest.SetParam("token",..querytoken)
	}
	Set key = ""
	For  {
		Set tmpValue = ..queryeventTypes.GetNext(.key)
		Quit:key=""
		Do httpRequest.SetParam("eventTypes", tmpValue, key)
	}
	Quit sc
}

Storage Default
{
<Data name="projectsprojectdevicesdevicestreamGETDefaultData">
<Subscript>"projectsprojectdevicesdevicestreamGET"</Subscript>
<Value name="1">
<Value>%Consume</Value>
</Value>
<Value name="2">
<Value>%ContentType</Value>
</Value>
<Value name="3">
<Value>%URL</Value>
</Value>
<Value name="4">
<Value>pathdevice</Value>
</Value>
<Value name="5">
<Value>queryeventTypes</Value>
</Value>
<Value name="6">
<Value>querytoken</Value>
</Value>
</Data>
<DefaultData>projectsprojectdevicesdevicestreamGETDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
