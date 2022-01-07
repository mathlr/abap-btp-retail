@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Root view singleton for RetailerControl'

define root view entity Z_I_RET_SINGLETON_MLR 
as select from I_Language
    left outer join zdb_retail_mlr as t_ret on 0 = 0
composition [0..*] of Z_I_RET_MLR as _retail 
{
    key 1                      as RetailSingletonID,
    max (t_ret.last_changed_at) as LastChangedAtMax,
    
    /* Associations */
    _retail // Make association public
}
where
  I_Language.Language = $session.system_language
