@AbapCatalog.viewEnhancementCategory: [ #NONE ]

@AccessControl.authorizationCheck: #NOT_REQUIRED

@EndUserText.label: 'Customer with Travels'

@Metadata.ignorePropagatedAnnotations: true

define view entity Z09_CUSTOMERWITHTRAVELS
  as select from Z09_Customer

  association [0..*] to Z09_Travel as _Travel on $projection.CustomerId = _Travel.CustomerId

{
  key CustomerId,

      FirstName,
      LastName,
      Title,
      Street,
      PostalCode,
      City,
      CountryCode,

      /* Associations */
      _Travel
}

where CountryCode = 'DE'
