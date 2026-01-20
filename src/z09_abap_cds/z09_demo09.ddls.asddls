@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Demo 9: Path Expressioms'
@Metadata.ignorePropagatedAnnotations: true
define view entity Z09_DEMO09 as select from Z09_DEMO08
{
  key CarrierId,
  key ConnectionId,
  AirportFromId,
  AirportToId,
  _Carrier.name as Name,
  
  /* Associations */
  _Carrier,
  _Flights
}
