/// Sample production
Class CONNECTORSPKG.FoundationProduction Extends Ens.Production [ Not ProcedureBlock ]
{

XData ProductionDefinition
{
<Production Name="CONNECTORSPKG.FoundationProduction" TestingEnabled="true" LogGeneralTraceEvents="true">
  <Description></Description>
  <ActorPoolSize>1</ActorPoolSize>
  <Item Name="VektisAGB" Category="" ClassName="CONNECTORSPKG.VektisAGB.Api.Client.bo.Operation" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="HTTPServer">test-agb-api.vektis.nl</Setting>
    <Setting Target="Adapter" Name="SSLConfig">VektisAGB</Setting>
    <Setting Target="Adapter" Name="HTTPPort">443</Setting>
  </Item>
  <Item Name="ZorgAB" Category="" ClassName="CONNECTORSPKG.ZorgAB.Api.Client.bo.Operation" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="true" Schedule="">
    <Setting Target="Adapter" Name="HTTPServer">zab.test.aorta-zorg.nl</Setting>
    <Setting Target="Adapter" Name="SSLConfig">Mitz testomgeving</Setting>
    <Setting Target="Adapter" Name="HTTPPort">443</Setting>
    <Setting Target="Adapter" Name="URL">/zab-ro</Setting>
  </Item>
  <Item Name="TestRetry" Category="" ClassName="CONNECTORSPKG.BO.GenericHTTP.Operation" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="true" Schedule="">
    <Setting Target="Adapter" Name="SSLConfig">Default</Setting>
    <Setting Target="Adapter" Name="URL"><![CDATA[https://iris.dev.iscdev.nl/.well-known/httptest?delay=5&http-status=500]]></Setting>
    <Setting Target="Host" Name="FailureTimeout">10</Setting>
    <Setting Target="Host" Name="RetryInterval">2</Setting>
    <Setting Target="Adapter" Name="ResponseTimeout">2</Setting>
    <Setting Target="Host" Name="AlertOnError">1</Setting>
  </Item>
  <Item Name="TestReplyCodeActions" Category="" ClassName="CONNECTORSPKG.BO.GenericHTTP.Operation" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="true" Schedule="">
    <Setting Target="Adapter" Name="SSLConfig">Default</Setting>
    <Setting Target="Adapter" Name="URL"><![CDATA[https://iris.dev.iscdev.nl/.well-known/httptest?http-status={1}]]></Setting>
    <Setting Target="Host" Name="FailureTimeout">10</Setting>
    <Setting Target="Host" Name="RetryInterval">2</Setting>
    <Setting Target="Adapter" Name="ResponseTimeout">2</Setting>
    <Setting Target="Host" Name="AlertOnError">1</Setting>
  </Item>
  <Item Name="GetIP" Category="" ClassName="CONNECTORSPKG.BO.GenericHTTP.Operation" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="true" Schedule="">
    <Setting Target="Adapter" Name="SSLConfig">Default</Setting>
    <Setting Target="Adapter" Name="URL">https://api.ipify.org?format=json</Setting>
    <Setting Target="Host" Name="AcceptHeader">application/json</Setting>
  </Item>
  <Item Name="GetAGBVestiging" Category="" ClassName="CONNECTORSPKG.BO.GenericHTTP.Operation" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="true" Schedule="">
    <Setting Target="Adapter" Name="SSLConfig">VektisAGB</Setting>
    <Setting Target="Adapter" Name="URL">https://test-agb-api.vektis.nl/v2/vestigingen/{1}</Setting>
    <Setting Target="Host" Name="AuthorizationType">Custom</Setting>
    <Setting Target="Host" Name="CustomAuthorizationHeader">Vektis 057f6201-ea65-4fce-8803-50e3507fb06a</Setting>
    <Setting Target="Host" Name="TraceOperations">*FULL*</Setting>
  </Item>
  <Item Name="GetInPlanningApplicationInfo" Category="" ClassName="CONNECTORSPKG.BO.GenericHTTP.Operation" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="true" Schedule="">
    <Setting Target="Adapter" Name="SSLConfig">VektisAGB</Setting>
    <Setting Target="Adapter" Name="URL">https://dicoon.acceptatie.rooster.nl/InPlanningService/rest/api/applicationinfo</Setting>
    <Setting Target="Host" Name="AuthorizationType">Bearer</Setting>
    <Setting Target="Adapter" Name="Credentials">InPlanning</Setting>
    <Setting Target="Host" Name="TraceOperations">*FULL*</Setting>
  </Item>
  <Item Name="HS.Util.Trace.Operations" Category="" ClassName="HS.Util.Trace.Operations" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
  </Item>
  <Item Name="Ens.Alert" Category="" ClassName="EnsLib.EMail.AlertOperation" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
  </Item>
</Production>
}

}
