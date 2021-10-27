@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Retail Control View'
@Metadata.ignorePropagatedAnnotations: true

define view entity Z_I_RET_MLR 
as select from zdb_retail_mlr
association to parent Z_I_RET_SINGLETON_MLR as _retailsingleton
on $projection.RetailSingletonID = _retailsingleton.RetailSingletonID 
    {
    key retailerid ,
    key sku,
    1 as RetailSingletonID ,
    description,
    theme,
    @Semantics.systemDateTime.localInstanceLastChangedAt: true
    local_last_changed_at ,
    @Semantics.systemDateTime.lastChangedAt: true
    last_changed_at ,
    
    _retailsingleton // Make association public
}
