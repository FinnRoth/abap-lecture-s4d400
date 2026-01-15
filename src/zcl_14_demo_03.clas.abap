CLASS zcl_14_demo_03 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_14_demo_03 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    DATA age        TYPE i           VALUE 18.
    DATA gender     TYPE c LENGTH 1  VALUE 'W'.
    DATA first_name TYPE c LENGTH 40 VALUE 'Hans'.
    DATA last_name  TYPE c LENGTH 40 VALUE 'Hund'.

    IF age < 18.
      out->write( |Hallo { first_name }| ).
    ELSEIF gender = 'm' OR gender = 'M'.
      out->write( |Hallo Herr { last_name }| ).
    ELSE.
      out->write( |Hallo Frau { last_name }| ).
    ENDIF.

    out->write( |Yooo { COND #( WHEN age < 18                     THEN first_name
                                WHEN gender = 'm' OR gender = 'M' THEN |Herr { last_name }|
                                ELSE                                   |Frau { last_name }| ) }| ).

    case gender.
      when 'm'.
        out->write( |Hallo Herr { last_name }| ).
      when 'w'.
        out->write( |Hallo Frau { last_name }| ).
      when others.
        out->write( |huh?| ).
    endcase.

    out->write( |Hallo { switch #( gender when 'm' or 'M' then |Herr { last_name }|
                                          when 'w' or 'W' then |Frau { last_name }|
                                          else first_name ) }| ).

  ENDMETHOD.
ENDCLASS.
