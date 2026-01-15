CLASS zcl_14_abap_01 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_14_abap_01 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    data first_name type c length 40.
    data last_name type c length 40.

    first_name = `Finn`.
    last_name = `Roth`.

    out->write( `Hallo ` && first_name && ` ` && last_name && `, wie gehts dir` ).

  ENDMETHOD.
ENDCLASS.
