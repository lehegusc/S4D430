@AbapCatalog.viewEnhancementCategory: [ #NONE ]

@AccessControl.authorizationCheck: #NOT_REQUIRED

@EndUserText.label: 'Demo 8: Associations'

@Metadata.ignorePropagatedAnnotations: true

//Associations -> Joins on demand

define view entity Z09_DEMO08
  as select from /dmo/connection

  association [1..1] to /dmo/carrier as _Carrier // Beziehung Connection zu Carrier
    on $projection.CarrierId = _Carrier.carrier_id

  association [0..*] to /dmo/flight  as _Flights // Beziehung Connection zu Flight
    on  _Flights.carrier_id    = $projection.CarrierId
    and _Flights.connection_id = $projection.ConnectionId

{
  key carrier_id      as CarrierId,
  key connection_id   as ConnectionId,

      // key _Flights.flight_date       as FlightDate,
      //    _Carrier.name              as Name,
      airport_from_id as AirportFromId,
      airport_to_id   as AirportToId,

      /* Associations */
      _Carrier,
      _Flights
}

