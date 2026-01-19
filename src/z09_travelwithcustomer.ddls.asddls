@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Travel with customer'
@Metadata.ignorePropagatedAnnotations: true
define view entity Z09_TravelWithCustomer as select from Z09_Travel as t
inner join Z09_Customer as c on c.CustomerId = t.CustomerId
{
  key c.CustomerId,
  key t.TravelId,
  c.FirstName,
  c.LastName,
  c.Title,
  c.Street,
  c.PostalCode,
  c.City,
  c.CountryCode,
  t.AgencyId,
  t.BeginDate,
  t.EndDate,
  @Semantics.amount.currencyCode: 'CurrencyCode'
  t.BookingFee,
  @Semantics.amount.currencyCode: 'CurrencyCode'
  t.TotalPrice,
  t.CurrencyCode,
  t.Description,
  t.Status
} where c.CountryCode = 'DE'
