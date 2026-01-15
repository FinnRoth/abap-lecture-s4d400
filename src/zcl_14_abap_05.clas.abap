CLASS zcl_14_abap_05 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    interfaces if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_14_abap_05 IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

    data customer type z14_customer_info.

    customer = zcl_abap_helper=>get_customer( 1 ).
    out->write( customer ).

  ENDMETHOD.

ENDCLASS.
