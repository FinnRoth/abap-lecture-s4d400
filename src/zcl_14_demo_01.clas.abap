CLASS zcl_14_demo_01 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_14_demo_01 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

**********************************************************************
* Hello World
**********************************************************************
    DATA text TYPE string. " Deklaration
    text = 'Hello World!'. " Wertzuweisung
    out->write( text ).

**********************************************************************
* Datentypen und Datenobjekte
**********************************************************************
    DATA age TYPE i. " Ganze Zahlen
    DATA salary_in_euro TYPE p length 16 decimals 2. " Kommazahlen
    DATA first_name TYPE c length 40. " Zeichenkette
    DATA matriculation_number TYPE n length 7. " Ziffernfolge
    DATA xmas TYPE d. " Datum
    DATA noon TYPE t. " Zeit
    DATA flag TYPE abap_boolean.

  ENDMETHOD.

ENDCLASS.
