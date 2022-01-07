@EndUserText.label: 'Text association for retail'
@AccessControl.authorizationCheck: #NOT_REQUIRED

define view entity Z_I_RETAIL_MLR as select from zdb_retail_mlr 
{
 key retailerid,
 key sku,
  @Semantics.text: true
  description,
  theme,
  local_last_changed_at,
  last_changed_at
    
}
