CLASS zcl_14_abap_07 DEFINITION
  PUBLIC FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
ENDCLASS.


CLASS zcl_14_abap_07 IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    DATA customer_id TYPE /dmo/customer_id VALUE 5.

    TRY.
        DATA(travels) = zcl_14_helper=>get_travels( customer_id ).
      CATCH zcx_abap_no_data.
        out->write( |No data found for customer { customer_id }| ).
    ENDTRY.

    DELETE travels WHERE begin_date < sy-datum.

    DATA tref TYPE REF TO /dmo/travel.
    LOOP AT travels REFERENCE INTO tref.
      tref->booking_fee *= '1.1'.
    ENDLOOP.

    SORT travels BY description DESCENDING.

    out->write( travels ).
  ENDMETHOD.
ENDCLASS.
