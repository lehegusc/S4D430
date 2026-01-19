@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Travel with customer'
define view entity Z09_TravelWithCustomer
  as select from Z09_Customer as c
    inner join   Z09_Travel   as t on c.CustomerId = t.CustomerId
{
  key t.TravelId,
      c.FirstName,
      c.LastName,
      c.Title,
      c.Street,
      c.PostalCode,
      c.City,
      t.AgencyId,
      t.CustomerId,
      t.BeginDate,
      t.EndDate,
      t.BookingFee,
      t.TotalPrice,
      t.CurrencyCode,
      t.Description,
      t.Status
}
where
  c.CountryCode = 'DE'
