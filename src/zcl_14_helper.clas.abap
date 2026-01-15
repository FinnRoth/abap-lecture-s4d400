CLASS zcl_14_helper DEFINITION
  PUBLIC FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    CLASS-METHODS get_travel_with_customer
      IMPORTING travel_id                   TYPE /dmo/travel_id
      RETURNING VALUE(travel_with_customer) TYPE zabap_travel_with_customer
      RAISING zcx_abap_no_data.

    CLASS-METHODS get_travels
      IMPORTING customer_id    TYPE /dmo/customer_id
      RETURNING VALUE(travels) TYPE z14_travels
      RAISING zcx_abap_no_data.
ENDCLASS.


CLASS zcl_14_helper IMPLEMENTATION.
  METHOD get_travel_with_customer.
*    DATA(travel) = zcl_abap_helper=>get_travel( travel_id ).
*    DATA(customer) = zcl_abap_helper=>get_customer( travel-customer_id ).

    select from /dmo/customer
      inner join /dmo/travel
        on /dmo/customer~customer_id = /dmo/travel~customer_id
      fields *
      into corresponding FIELDS of @travel_with_customer.
    endselect.
  ENDMETHOD.

  METHOD get_travels.
    select from /dmo/travel
      fields *
      into table @travels.
  ENDMETHOD.

ENDCLASS.
