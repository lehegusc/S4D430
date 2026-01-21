@AccessControl.authorizationCheck: #NOT_REQUIRED

@EndUserText.label: 'Rating'

@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true

define view entity ZC_09_RatingTP
  as projection on ZR_09_RatingTP

{
  key RatingUuid,

      MovieUuid,
      UserName,
      Rating,
      RatingDate,

      /* Associations */
      _Movie : redirected to parent ZC_09_MOVIETP
}
