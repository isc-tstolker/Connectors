Class DTSensors.Api.Client.requests.projectsprojectdevicesdeviceeventsGET Extends Ens.Request [ ProcedureBlock ]
{

Parameter METHOD = "get";

Parameter URL = "/projects/{project}/devices/{device}/events";

Property %Consume As %String(MAXLEN = "");

Property %ContentType As %String(MAXLEN = "");

Property %URL As %String(MAXLEN = "") [ InitialExpression = {..#URL} ];

/// The identifier of the Device.
Property pathdevice As %String(MAXLEN = "");

/// The end of the time range to fetch events for. Defaults to now if not set. The value 
/// should be in the [RFC 3339](https://tools.ietf.org/html/rfc3339) format: `YYYY-MM-DDTHH:MM:SSZ`.
/// 
/// The `endTime` parameter will be rounded up to the nearest second forwards in time, and **will not** 
/// include events on this exact timestamp.
Property queryendTime As %String(MAXLEN = "");

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

/// Requested page size.
/// 
/// Maximum page size is 1000, which is also the default.
Property querypageSize As %Integer;

/// A token identifying a page of results to return.
/// 
/// Should be a `nextPageToken` value returned from a previous call. If not specified, the first page of results will be returned.
Property querypageToken As %String(MAXLEN = "");

/// The start of the time range to fetch events for. Defaults to 24h ago if not set, but can be 
/// set to as far back as 31 days ago. The value should be in the 
/// [RFC 3339](https://tools.ietf.org/html/rfc3339) format: `YYYY-MM-DDTHH:MM:SSZ`.
/// 
/// The `startTime` parameter will be rounded down to the nearest second backwards in time, and **will** include
/// events on this exact timestamp.
Property querystartTime As %String(MAXLEN = "");

/// Load %Net.HttpRequest with this property object.
Method LoadHttpRequestObject(ByRef httpRequest As %Net.HttpRequest) As %Status
{
	Set sc = $$$OK
	Set httpRequest.ContentType = ..%ContentType
	Do httpRequest.SetHeader("accept", ..%Consume)
	Set ..%URL = $Replace(..#URL,"{device}", ..pathdevice)
	Set key = ""
	For  {
		Set tmpValue = ..queryeventTypes.GetNext(.key)
		Quit:key=""
		Do httpRequest.SetParam("eventTypes", tmpValue, key)
	}
	If (..querystartTime '= "") {
		Do httpRequest.SetParam("startTime",..querystartTime)
	}
	If (..queryendTime '= "") {
		Do httpRequest.SetParam("endTime",..queryendTime)
	}
	If (..querypageSize '= "") {
		Do httpRequest.SetParam("pageSize",..querypageSize)
	}
	If (..querypageToken '= "") {
		Do httpRequest.SetParam("pageToken",..querypageToken)
	}
	Quit sc
}

Storage Default
{
<Data name="projectsprojectdevicesdeviceeventsGETDefaultData">
<Subscript>"projectsprojectdevicesdeviceeventsGET"</Subscript>
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
<Value>queryendTime</Value>
</Value>
<Value name="6">
<Value>queryeventTypes</Value>
</Value>
<Value name="7">
<Value>querypageSize</Value>
</Value>
<Value name="8">
<Value>querypageToken</Value>
</Value>
<Value name="9">
<Value>querystartTime</Value>
</Value>
</Data>
<DefaultData>projectsprojectdevicesdeviceeventsGETDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
