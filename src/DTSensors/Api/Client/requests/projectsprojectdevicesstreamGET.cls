Class DTSensors.Api.Client.requests.projectsprojectdevicesstreamGET Extends Ens.Request [ ProcedureBlock ]
{

Parameter METHOD = "get";

Parameter URL = "/projects/{project}/devices:stream";

Property %Consume As %String(MAXLEN = "");

Property %ContentType As %String(MAXLEN = "");

Property %URL As %String(MAXLEN = "") [ InitialExpression = {..#URL} ];

/// List of device identifiers to limit the query to a set of specific devices. Will default to all devices if not present.
Property querydeviceIds As list Of %String(MAXLEN = "");

/// List of device types to limit the results to. Will default to all Device types if not present.
/// 
/// Available device types:
/// | Device Type        | Device Details                                                                                                     |
/// | ------------------ | ------------------------------------------------------------------------------------------------------------------ |
/// | `temperature`      | [Temperature](https://developer.disruptive-technologies.com/docs/concepts/devices#temperature-sensor)              |
/// | `proximity`        | [Proximity](https://developer.disruptive-technologies.com/docs/concepts/devices#proximity-sensor)                  |
/// | `touch`            | [Touch](https://developer.disruptive-technologies.com/docs/concepts/devices#touch-sensor)                          |
/// | `humidity`         | [Humidity](https://developer.disruptive-technologies.com/docs/concepts/devices#humidity-sensor)                    |
/// | `proximityCounter` | [Proximity Counter](https://developer.disruptive-technologies.com/docs/concepts/devices#counting-proximity-sensor) |
/// | `touchCounter`     | [Touch Counter](https://developer.disruptive-technologies.com/docs/concepts/devices#counting-touch-sensor)         |
/// | `waterDetector`    | [Water Detector](https://developer.disruptive-technologies.com/docs/concepts/devices#water-detector-sensor)        |
/// | `co2`              | [CO2](https://developer.disruptive-technologies.com/docs/concepts/devices#co2-sensor)                              |
/// | `motion`           | [Motion](https://developer.disruptive-technologies.com/docs/concepts/devices#motion-sensor)                        |
/// | `contact`          | [Contact](https://developer.disruptive-technologies.com/docs/concepts/devices#contact-sensor)                      |
/// | `deskOccupancy`    | [Desk Occupancy](https://developer.disruptive-technologies.com/docs/concepts/devices#desk-occupancy-sensor)        |
/// | `ccon`             | [Cloud Connector](https://developer.disruptive-technologies.com/docs/concepts/devices#cloud-connector-details)     |
Property querydeviceTypes As list Of %String(MAXLEN = "");

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

/// List of label filter expressions that filters the set of Devices for the results.
/// 
/// Each expression takes the form `labelKey=labelValue`, or just `labelKey` if you only want
/// to search for the presence of a label.
Property querylabelFilters As list Of %String(MAXLEN = "");

/// List of product numbers to limit the results to. Will default to all product numbers if not present.
Property queryproductNumbers As list Of %String(MAXLEN = "");

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
	If (..querytoken '= "") {
		Do httpRequest.SetParam("token",..querytoken)
	}
	Set key = ""
	For  {
		Set tmpValue = ..querydeviceIds.GetNext(.key)
		Quit:key=""
		Do httpRequest.SetParam("deviceIds", tmpValue, key)
	}
	Set key = ""
	For  {
		Set tmpValue = ..querylabelFilters.GetNext(.key)
		Quit:key=""
		Do httpRequest.SetParam("labelFilters", tmpValue, key)
	}
	Set key = ""
	For  {
		Set tmpValue = ..querydeviceTypes.GetNext(.key)
		Quit:key=""
		Do httpRequest.SetParam("deviceTypes", tmpValue, key)
	}
	Set key = ""
	For  {
		Set tmpValue = ..queryeventTypes.GetNext(.key)
		Quit:key=""
		Do httpRequest.SetParam("eventTypes", tmpValue, key)
	}
	Set key = ""
	For  {
		Set tmpValue = ..queryproductNumbers.GetNext(.key)
		Quit:key=""
		Do httpRequest.SetParam("productNumbers", tmpValue, key)
	}
	Quit sc
}

Storage Default
{
<Data name="projectsprojectdevicesstreamGETDefaultData">
<Subscript>"projectsprojectdevicesstreamGET"</Subscript>
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
<Value>querydeviceIds</Value>
</Value>
<Value name="5">
<Value>querydeviceTypes</Value>
</Value>
<Value name="6">
<Value>queryeventTypes</Value>
</Value>
<Value name="7">
<Value>querylabelFilters</Value>
</Value>
<Value name="8">
<Value>queryproductNumbers</Value>
</Value>
<Value name="9">
<Value>querytoken</Value>
</Value>
</Data>
<DefaultData>projectsprojectdevicesstreamGETDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
