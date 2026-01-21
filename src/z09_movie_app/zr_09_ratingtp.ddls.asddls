@AccessControl.authorizationCheck: #NOT_REQUIRED

@EndUserText.label: 'Rating'

@Metadata.ignorePropagatedAnnotations: true

define view entity ZR_09_RatingTP
  as select from ZI_09_Rating

  association to parent ZR_09_MOVIETP as _Movie on $projection.MovieUuid = _Movie.MovieUuid

{
  key RatingUuid,

      MovieUuid,
      UserName,
      Rating,
      RatingDate,

      /* Associations */
      _Movie
}
