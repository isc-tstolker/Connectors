/// Sample production
Class CONNECTORSPKG.FoundationProduction Extends Ens.Production [ Not ProcedureBlock ]
{

XData ProductionDefinition
{
<Production Name="CONNECTORSPKG.FoundationProduction" TestingEnabled="true" LogGeneralTraceEvents="true">
  <Description></Description>
  <ActorPoolSize>1</ActorPoolSize>
  <Item Name="Fitbit" Category="" ClassName="CONNECTORSPKG.Fitbit.Api.Client.bo.Operation" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="HTTPServer">api.fitbit.com</Setting>
    <Setting Target="Adapter" Name="SSLConfig">DefaultSSL</Setting>
    <Setting Target="Adapter" Name="HTTPPort"></Setting>
    <Setting Target="Adapter" Name="URL">/</Setting>
  </Item>
  <Item Name="VektisAGB" Category="" ClassName="CONNECTORSPKG.VektisAGB.Api.Client.bo.Operation" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="HTTPServer">test-agb-api.vektis.nl</Setting>
    <Setting Target="Adapter" Name="SSLConfig">VektisAGB</Setting>
    <Setting Target="Adapter" Name="HTTPPort">443</Setting>
    <Setting Target="Adapter" Name="URL">/zorg-ab</Setting>
  </Item>
  <Item Name="ZorgAB" Category="" ClassName="CONNECTORSPKG.ZorgAB.Api.Client.bo.Operation" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="true" Schedule="">
    <Setting Target="Adapter" Name="HTTPServer">zab.test.aorta-zorg.nl</Setting>
    <Setting Target="Adapter" Name="SSLConfig">Mitz testomgeving</Setting>
    <Setting Target="Adapter" Name="HTTPPort">443</Setting>
    <Setting Target="Adapter" Name="URL">/zab-ro</Setting>
  </Item>
</Production>
}

}
