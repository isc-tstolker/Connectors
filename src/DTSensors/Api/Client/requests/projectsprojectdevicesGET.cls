Class DTSensors.Api.Client.requests.projectsprojectdevicesGET Extends Ens.Request [ ProcedureBlock ]
{

Parameter METHOD = "get";

Parameter URL = "/projects/{project}/devices";

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

/// List of label filter expressions that filters the set of Devices for the results.
/// 
/// Each expression takes the form `labelKey=labelValue`, or just `labelKey` if you only want
/// to search for the presence of a label.
Property querylabelFilters As list Of %String(MAXLEN = "");

/// The field name you want to sort the devices by.
/// 
/// Fields are referred to using dot notation (eg. `reported.temperature.value`). The default order is ascending. 
/// To list the Devices in descending order, prefix the field name with a dash (`-`).
/// 
/// Here are some examples: 
/// * `-reported.networkStatus.updateTime`: Show the Devices that have sent a heartbeat the most recently first.
/// * `labels.name`: Show the Devices in alphabetical order by their display name.
/// * `-reported.networkStatus.signalStrength`: Show the Devices with the best signal strength first.
/// 
/// Here's the complete list of all the fields that can be used for sorting:
/// * `type`
/// * `labels.name`
/// * `productNumber`
/// * `reported.networkStatus.signalStrength`
/// * `reported.networkStatus.updateTime`
/// * `reported.batteryStatus.percentage`
/// * `reported.batteryStatus.updateTime`
/// * `reported.objectPresent.updateTime`
/// * `reported.touch.updateTime`
/// * `reported.temperature.value`
/// * `reported.temperature.updateTime`
/// * `reported.connectionStatus.updateTime`
/// * `reported.connectionLatency.updateTime`
/// * `reported.ethernetStatus.updateTime`
/// * `reported.cellularStatus.updateTime`
/// * `reported.objectPresentCount.updateTime`
/// * `reported.touchCount.updateTime`
/// * `reported.humidity.updateTime`
/// * `reported.humidity.value`
/// * `reported.waterPresent.updateTime`
/// * `reported.motion.updateTime`
/// * `reported.contact.updateTime`
/// * `reported.probeWireStatus.updateTime`
/// * `reported.deskOccupancy.updateTime`
/// * `reported.co2.updateTime`
/// * `reported.co2.ppm`
/// * `reported.pressure.updateTime`
/// * `reported.pressure.pascal`
Property queryorderBy As %String(MAXLEN = "");

/// Requested page size.
/// 
/// Maximum page size is 100, which is also the default.
Property querypageSize As %Integer;

/// A token identifying a page of results to return.
/// 
/// Should be a `nextPageToken` value returned from a previous call. If not specified, the first page of results will be returned.
Property querypageToken As %String(MAXLEN = "");

/// List of product numbers to limit the results to. Will default to all product numbers if not present.
Property queryproductNumbers As list Of %String(MAXLEN = "");

/// A general keyword-based search for Devices that searches for things like device type, labels, 
/// and identifiers. Does not provide any additional search capabilities compared to the other 
/// query parameters of this request, but provides a mechanism for more general search queries, 
/// such as input from a user.
Property queryquery As %String(MAXLEN = "");

/// Load %Net.HttpRequest with this property object.
Method LoadHttpRequestObject(ByRef httpRequest As %Net.HttpRequest) As %Status
{
	Set sc = $$$OK
	Set httpRequest.ContentType = ..%ContentType
	Do httpRequest.SetHeader("accept", ..%Consume)
	Set key = ""
	For  {
		Set tmpValue = ..querydeviceIds.GetNext(.key)
		Quit:key=""
		Do httpRequest.SetParam("deviceIds", tmpValue, key)
	}
	Set key = ""
	For  {
		Set tmpValue = ..querydeviceTypes.GetNext(.key)
		Quit:key=""
		Do httpRequest.SetParam("deviceTypes", tmpValue, key)
	}
	Set key = ""
	For  {
		Set tmpValue = ..querylabelFilters.GetNext(.key)
		Quit:key=""
		Do httpRequest.SetParam("labelFilters", tmpValue, key)
	}
	If (..queryorderBy '= "") {
		Do httpRequest.SetParam("orderBy",..queryorderBy)
	}
	If (..queryquery '= "") {
		Do httpRequest.SetParam("query",..queryquery)
	}
	Set key = ""
	For  {
		Set tmpValue = ..queryproductNumbers.GetNext(.key)
		Quit:key=""
		Do httpRequest.SetParam("productNumbers", tmpValue, key)
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
<Data name="projectsprojectdevicesGETDefaultData">
<Subscript>"projectsprojectdevicesGET"</Subscript>
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
<Value>querylabelFilters</Value>
</Value>
<Value name="7">
<Value>queryorderBy</Value>
</Value>
<Value name="8">
<Value>querypageSize</Value>
</Value>
<Value name="9">
<Value>querypageToken</Value>
</Value>
<Value name="10">
<Value>queryproductNumbers</Value>
</Value>
<Value name="11">
<Value>queryquery</Value>
</Value>
</Data>
<DefaultData>projectsprojectdevicesGETDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
