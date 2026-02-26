@AccessControl.authorizationCheck: #MANDATORY
@Metadata.allowExtensions: true
@ObjectModel.sapObjectNodeType.name: 'ZCITCIT_BASEAM022022'
@EndUserText.label: '###GENERATED Core Data Service Entity'
define root view entity ZCITR_CIT_BASEAM022022
  as select from ZCIT_BASEAM022
{
  key sales_id as SalesID,
  customer_id as CustomerID,
  sales_org as SalesOrg,
  distr_channel as DistrChannel,
  division as Division,
  doc_date as DocDate,
  @Consumption.valueHelpDefinition: [ {
    entity.name: 'I_CurrencyStdVH', 
    entity.element: 'Currency', 
    useForValidation: true
  } ]
  currency as Currency,
  status as Status,
  @Semantics.user.createdBy: true
  created_by as CreatedBy,
  @Semantics.systemDateTime.createdAt: true
  created_at as CreatedAt,
  @Semantics.user.lastChangedBy: true
  last_changed_by as LastChangedBy,
  @Semantics.systemDateTime.lastChangedAt: true
  last_changed_at as LastChangedAt,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  local_last_changed_at as LocalLastChangedAt
}
