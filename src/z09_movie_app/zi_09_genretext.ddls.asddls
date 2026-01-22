@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Genre Text'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_09_GenreText as select from DDCDS_CUSTOMER_DOMAIN_VALUE_T( p_domain_name: 'ZABAP_GENRE' )
//inner join   DDCDS_CUSTOMER_DOMAIN_VALUE_T( p_domain_name: 'ZABAP_GENRE' ) as g on g.value_low = t.genre
{
  key domain_name,
  key value_position,
  key language,
  value_low as Genre,
  text as Text
  
} where language = $session.system_language
