@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Booking'
define view entity ZC_09_BookingTP as projection on ZR_09_BookingTP
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
  _Travel : redirected to parent ZC_09_TravelTP
}
 