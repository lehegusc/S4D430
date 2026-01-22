@AbapCatalog.viewEnhancementCategory: [ #NONE ]

@AccessControl.authorizationCheck: #NOT_REQUIRED

@EndUserText.label: 'Movie'

@Metadata.allowExtensions: true

@Search.searchable: true

define root view entity ZC_09_MOVIETP
  provider contract transactional_query
  as projection on ZR_09_MOVIETP

{
  key MovieUuid,

      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.7
      Title,
      @ObjectModel.text.element: [ 'Text' ]
      Genre,
      PublishingYear,
      RuntimeInMin,
      ImageUrl,
      CreatedAt,
      CreatedBy,
      LastChangedAt,
      LastChangedBy,
      AverageRating,
      
      
      /* Transient */
      
      
      AverageRatingCriticality,
      _Genre.Text,

      /* Associations */
      _Ratings : redirected to composition child ZC_09_RatingTP
}
