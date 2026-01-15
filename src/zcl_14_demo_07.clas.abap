CLASS zcl_14_demo_07 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_14_demo_07 IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    DATA connections TYPE z14_connections.

    connections = VALUE #( ( carrier_id = 'LH' connection_id = '0400' airport_from_id = 'FRA' airport_to_id = 'JFK' )
                           ( carrier_id = 'AB' connection_id = '4343' airport_from_id = 'JFK' airport_to_id = 'FRA' )
                           ( connection_id = '1234' ) ).

    " Lesen von Einzelsätzen
    TRY.
        DATA(connection) = connections[ connection_id = '0500' ].
        out->write( 'Yo' ).
        out->write( connection ).
      CATCH cx_sy_itab_line_not_found.
    ENDTRY.

    IF line_exists( connections[ connection_id = '0500' ] ).
      out->write( 'Yo' ).
    ENDIF.

    " Lesen von mehreren
    data conref type ref to z14_connection.
    LOOP AT connections INTO connection WHERE carrier_id IS NOT INITIAL.
      "connection-airport_to_id = 'JFK'.
      out->write( |{ sy-tabix }| ).
      out->write( connection ).
      "out->write( connections[ sy-tabix ] ).
    ENDLOOP.
  ENDMETHOD.
ENDCLASS.
