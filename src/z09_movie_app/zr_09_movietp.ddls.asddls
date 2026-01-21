@AbapCatalog.viewEnhancementCategory: [ #NONE ]

@AccessControl.authorizationCheck: #NOT_REQUIRED

@EndUserText.label: 'Movie'

define root view entity ZR_09_MOVIETP
  as select from ZI_09_MOVIE

  composition [0..*] of ZR_09_RatingTP as _Ratings

{
  key MovieUuid,

      Title,
      Genre,
      PublishingYear,
      RuntimeInMin,
      ImageUrl,
      CreatedAt,
      CreatedBy,
      LastChangedAt,
      LastChangedBy,

      /* Associations */

      _Ratings
}
