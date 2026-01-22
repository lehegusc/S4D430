@AbapCatalog.viewEnhancementCategory: [ #NONE ]

@AccessControl.authorizationCheck: #NOT_REQUIRED

@EndUserText.label: 'Movie'

/*+[hideWarning] { "IDS" : [ "CARDINALITY_CHECK" ]  } */
define root view entity ZR_09_MOVIETP
  as select from ZI_09_MOVIE

  association [0..1] to ZI_09_AverageRating as _AverageRating on $projection.MovieUuid = _AverageRating.MovieUuid
  association [0..1] to ZI_09_GenreText     as _Genre         on $projection.Genre = _Genre.Genre
  composition [0..*] of ZR_09_RatingTP      as _Ratings

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

      /* Transient Data */

      _AverageRating.AverageRating,

      _AverageRating.AverageRatingCriticality,

                                    


      /* Associations */

      _Ratings,
      _Genre
}
