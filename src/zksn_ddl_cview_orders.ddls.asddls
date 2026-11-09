@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption view for Orders table'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity ZKSN_DDL_CVIEW_ORDERS as projection on ZKSN_DDL_ORDERS
{
    key OrderId,
    OrderDate,
    CustomerId,
    @Semantics.amount.currencyCode: 'Currency'
    Amount,
    Currency,
    Status
}
