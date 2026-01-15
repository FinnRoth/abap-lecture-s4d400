CLASS zcl_14_demo_08 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    interfaces if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_14_demo_08 IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    SELECT SINGLE FROM /dmo/connection
      FIELDS *
      WHERE carrier_id = 'LH'
        AND connection_id = '0400'
      INTO @DATA(connection).

    out->write( connection ).

    data connections type table of /dmo/connection.

    select from /dmo/connection
      fields *
      into table @connections.

    out->write( connections ).



  ENDMETHOD.

ENDCLASS.
