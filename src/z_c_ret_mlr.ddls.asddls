@EndUserText.label: 'Projection Retail'
@AccessControl.authorizationCheck: #NOT_REQUIRED

@Metadata.allowExtensions: true
@ObjectModel.semanticKey: ['retailerid','sku']

define view entity Z_C_RET_MLR as projection on Z_I_RET_MLR 
{
    key retailerid,
    key sku,
    @Consumption.hidden: true
    RetailSingletonID,
    description,
    theme,
    local_last_changed_at,
    last_changed_at,
    /* Associations */
    _retailsingleton : redirected to parent Z_C_RET_SINGLETON_MLR 
}
