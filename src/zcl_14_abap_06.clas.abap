CLASS zcl_14_abap_06 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_14_abap_06 IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

    data travel_id type /dmo/travel_id VALUE 5.

    try.
      data(twc) = ZCL_14_HELPER=>get_travel_with_customer( travel_id ).
    catch zcx_abap_no_data.
      out->write( |No data found for travel { travel_id }| ).
    endtry.

    out->write( twc ).

  ENDMETHOD.

ENDCLASS.
