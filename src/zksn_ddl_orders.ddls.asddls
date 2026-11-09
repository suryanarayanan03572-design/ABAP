@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS View for orders table'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZKSN_DDL_ORDERS as select from zksn_orders
{
  key order_id as OrderId,
  order_date as OrderDate,
  customer_id as CustomerId,
  amount as Amount,
  currency as Currency,
  status as Status
}
