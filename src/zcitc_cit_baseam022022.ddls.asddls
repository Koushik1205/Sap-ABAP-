@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@Endusertext: {
  Label: '###GENERATED Core Data Service Entity'
}
@Objectmodel: {
  Sapobjectnodetype.Name: 'ZCITCIT_BASEAM022022'
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZCITC_CIT_BASEAM022022
  provider contract TRANSACTIONAL_QUERY
  as projection on ZCITR_CIT_BASEAM022022
  association [1..1] to ZCITR_CIT_BASEAM022022 as _BaseEntity on $projection.SALESID = _BaseEntity.SALESID
{
  key SalesID,
  CustomerID,
  SalesOrg,
  DistrChannel,
  Division,
  DocDate,
  @Consumption: {
    Valuehelpdefinition: [ {
      Entity.Element: 'Currency', 
      Entity.Name: 'I_CurrencyStdVH', 
      Useforvalidation: true
    } ]
  }
  Currency,
  Status,
  @Semantics: {
    User.Createdby: true
  }
  CreatedBy,
  @Semantics: {
    Systemdatetime.Createdat: true
  }
  CreatedAt,
  @Semantics: {
    User.Lastchangedby: true
  }
  LastChangedBy,
  @Semantics: {
    Systemdatetime.Lastchangedat: true
  }
  LastChangedAt,
  @Semantics: {
    Systemdatetime.Localinstancelastchangedat: true
  }
  LocalLastChangedAt,
  _BaseEntity
}
