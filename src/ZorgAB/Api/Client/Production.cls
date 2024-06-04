Class CONNECTORSPKG.ZorgAB.Api.Client.Production Extends Ens.Production [ ProcedureBlock ]
{

XData ProductionDefinition
{
<Production Name="CONNECTORSPKG.ZorgAB.Api.Client" LogGeneralTraceEvents="false">
  <Description></Description>
  <ActorPoolSize>2</ActorPoolSize>
  <Item Name="CONNECTORSPKG.ZorgAB.Api.Client.bo.Operation" Category="" ClassName="CONNECTORSPKG.ZorgAB.Api.Client.bo.Operation" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="HTTPServer">zab.test.lsp.aorta-zorg.nl</Setting>
    <Setting Target="Adapter" Name="SSLConfig">DefaultSSL</Setting>
    <Setting Target="Adapter" Name="HTTPPort"></Setting>
    <Setting Target="Adapter" Name="URL">/zab</Setting>
  </Item>
  <Item Name="CONNECTORSPKG.ZorgAB.Api.Client.bp.Process" Category="" ClassName="CONNECTORSPKG.ZorgAB.Api.Client.bp.Process" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
  </Item>
  <Item Name="CONNECTORSPKG.ZorgAB.Api.Client.bp.SyncProcess" Category="" ClassName="CONNECTORSPKG.ZorgAB.Api.Client.bp.SyncProcess" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
  </Item>
</Production>
}

}
