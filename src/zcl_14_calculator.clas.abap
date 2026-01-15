CLASS zcl_14_calculator DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    CLASS-METHODS divide
      IMPORTING op1           TYPE z14_decimal
                op2           TYPE z14_decimal
      RETURNING VALUE(result) TYPE z14_decimal
      RAISING   cx_sy_zerodivide.

    CLASS-METHODS calculate_percentage
      importing percentage                 type z14_decimal
                base                       type z14_decimal
      returning value(percentage_value)    type z14_decimal
      .

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_14_calculator IMPLEMENTATION.

  METHOD divide.
    IF op2 = 0.
      RAISE EXCEPTION TYPE cx_sy_zerodivide.
    ENDIF.

    result = op1 / op2.

  ENDMETHOD.

  METHOD calculate_percentage.
    percentage_value = ( percentage / 100 ) * base.
  ENDMETHOD.

ENDCLASS.
