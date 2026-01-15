CLASS zcl_14_abap_03 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_14_abap_03 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    data o1 type p length 16 decimals 4.
    data o2 type p length 16 decimals 4.
    data op type c length 1.

    o1 = '0'.
    o2 = '0.0'.
    op = '/'.

    DATA res type p length 16 decimals 4.

    res = switch #( op
                    when '+' then o1 + o2
                    when '-' then o1 - o2
                    when '*' then o1 * o2
                    when '/' then o1 / o2
                  ).

    out->write( |{ o1 } { op } { o2 } = { res }| ).

    out->write( sy-datum ).

  ENDMETHOD.
ENDCLASS.
