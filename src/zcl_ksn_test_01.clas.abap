CLASS zcl_ksn_test_01 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_ksn_test_01 IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

  delete from ZKSN_ORDERS.

    insert ZKSN_ORDERS from table @( value #( ( Client = sy-mandt order_id = '0000000101' order_date = '20261109' customer_id = '0000000101'
    amount = '100' currency = 'INR' status = 'C' )
    ( Client = sy-mandt order_id = '0000000102' order_date = '20261109' customer_id = '0000000102'
    amount = '100' currency = 'INR' status = 'C' )
    ( Client = sy-mandt order_id = '0000000103' order_date = '20261109' customer_id = '0000000103'
    amount = '100' currency = 'INR' status = 'C' ) ) ).

    out->write( |{ sy-dbcnt } records in ZKSN_ORDERS | ).


  ENDMETHOD.
ENDCLASS.
