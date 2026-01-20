@AbapCatalog.viewEnhancementCategory: [ #NONE ]

@AccessControl.authorizationCheck: #NOT_REQUIRED

@EndUserText.label: 'Customer KPIs'

@Metadata.ignorePropagatedAnnotations: true

define view entity Z09_CustomerKPIs
  as select from Z09_TravelWithCustomer

{
  key CustomerId,

      CustomerName,
      Street,
      PostalCode,
      City,

      @Semantics.amount.currencyCode: 'CurrencyCode'
      sum(TotalPrice) + sum(BookingFee) as TotalRevenue,

      CurrencyCode,
      avg(Duration as abap.dec(16,0))   as AverageDuration,
      count(distinct AgencyId)          as NumberOfDifferentAgencys
}

group by CustomerId,
         CustomerName,
         Street,
         PostalCode,
         City,
         CurrencyCode

having sum(TotalPrice + BookingFee) >= 5000
