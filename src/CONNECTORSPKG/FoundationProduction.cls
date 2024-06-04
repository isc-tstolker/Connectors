/// Sample production
Class CONNECTORSPKG.FoundationProduction Extends Ens.Production [ Not ProcedureBlock ]
{

XData ProductionDefinition
{
<Production Name="CONNECTORSPKG.FoundationProduction" TestingEnabled="true" LogGeneralTraceEvents="true">
  <Description></Description>
  <ActorPoolSize>1</ActorPoolSize>
  <Item Name="VektisAGB" Category="" ClassName="VektisAGB.Api.Client.bo.Operation" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="HTTPPort">443</Setting>
  </Item>
  <Item Name="ZorgAB" Category="" ClassName="ZorgAB.Api.Client.bo.Operation" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="true" Schedule="">
    <Setting Target="Adapter" Name="HTTPPort">443</Setting>
    <Setting Target="Adapter" Name="URL">/zab-ro</Setting>
  </Item>
  <Item Name="TestRetry" Category="" ClassName="CONNECTORSPKG.BO.GenericHTTP.Operation" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="true" Schedule="">
    <Setting Target="Host" Name="FailureTimeout">10</Setting>
    <Setting Target="Host" Name="RetryInterval">2</Setting>
    <Setting Target="Adapter" Name="ResponseTimeout">2</Setting>
    <Setting Target="Host" Name="TraceOperations">*FULL*</Setting>
  </Item>
  <Item Name="TestReplyCodeActions" Category="" ClassName="CONNECTORSPKG.BO.GenericHTTP.Operation" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="true" Schedule="">
    <Setting Target="Host" Name="FailureTimeout">10</Setting>
    <Setting Target="Host" Name="RetryInterval">2</Setting>
    <Setting Target="Adapter" Name="ResponseTimeout">2</Setting>
  </Item>
  <Item Name="GetIP" Category="" ClassName="CONNECTORSPKG.BO.GenericHTTP.Operation" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="true" Schedule="">
    <Setting Target="Host" Name="TraceOperations">*FULL*</Setting>
  </Item>
  <Item Name="GetAGBVestiging" Category="" ClassName="CONNECTORSPKG.BO.GenericHTTP.Operation" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="true" Schedule="">
    <Setting Target="Host" Name="TraceOperations">*FULL*</Setting>
  </Item>
  <Item Name="GetInPlanningApplicationInfo" Category="" ClassName="CONNECTORSPKG.BO.GenericHTTP.Operation" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="true" Schedule="">
    <Setting Target="Host" Name="TraceOperations">*FULL*</Setting>
  </Item>
  <Item Name="HS.Util.Trace.Operations" Category="" ClassName="HS.Util.Trace.Operations" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
  </Item>
  <Item Name="Ens.Alert" Category="" ClassName="EnsLib.EMail.AlertOperation" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
  </Item>
</Production>
}

}
