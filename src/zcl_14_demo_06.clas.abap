CLASS zcl_14_demo_06 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    interfaces if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_14_demo_06 IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    data connection type z14_connection.
    connection-carrier_id = 'LH'.
    out->write( connection ).

  ENDMETHOD.

ENDCLASS.
