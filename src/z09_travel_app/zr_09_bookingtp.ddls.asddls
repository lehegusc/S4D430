@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Booking'
define view entity ZR_09_BookingTP 
as select from ZI_09_Booking
association to parent ZR_09_TravelTP as _Travel
  on $projection.TravelId = _Travel.TravelId
{
  key TravelId,
  key BookingId,
  BookingDate,
  CustomerId,
  CarrierId,
  ConnectionId,
  FlightDate,
  FlightPrice,
  CurrencyCode,
  
  /* Associations */
  _Travel
}
