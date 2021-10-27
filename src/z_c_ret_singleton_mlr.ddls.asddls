@EndUserText.label: 'Projection Retail Singleton'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
@ObjectModel.semanticKey: ['RetailSingletonID']

define root view entity Z_C_RET_SINGLETON_MLR 
provider contract transactional_query
as projection on Z_I_RET_SINGLETON_MLR 
{
    key RetailSingletonID,
    @Consumption.hidden: true
    LastChangedAtMax,
    /* Associations */
    _retail : redirected to composition child Z_C_RET_MLR
}
