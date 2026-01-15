CLASS zcl_14_abap_02 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_14_abap_02 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    "data c type /dmo/customer.
    data customer_id type /dmo/customer_id.
    data first_name type /dmo/first_name.
    data last_name type /dmo/last_name.
    data city type /dmo/city.
    data country type land1.

    customer_id = '123456'.
    first_name = 'Finn'.
    last_name = 'Roth'.
    city = 'Walsheim'.
    country = 'DE'.

    out->write( |{ customer_id }, { first_name } { last_name }, { city }, { country }| ).

  ENDMETHOD.
ENDCLASS.
