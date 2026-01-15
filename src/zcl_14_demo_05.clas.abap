CLASS zcl_14_demo_05 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_14_demo_05 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    out->write( zcl_14_calculator=>calculate_percentage( base = 200 percentage = 4 ) ).

    try.
      data(result) = zcl_14_calculator=>divide( op1 = 5 op2 = 0 ).
      out->write( result ).
    catch cx_sy_zerodivide into data(x).
      out->write( x->get_text( ) ).
    endtry.

    try.
      result = zcl_14_calculator=>divide( op1 = 5 op2 = 1 ).
      out->write( result ).
    catch cx_sy_zerodivide into x.
      out->write( x->get_text( ) ).
    endtry.

    try.
      out->write( zcl_abap_calculator=>calculate_power( base = 9 exponent = 3 ) ).
    catch zcx_abap_exponent_too_high into data(y).
      out->write( y->get_text( ) ).
    endtry.

  ENDMETHOD.

ENDCLASS.
