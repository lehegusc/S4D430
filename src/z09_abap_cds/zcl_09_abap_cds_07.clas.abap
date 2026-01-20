CLASS zcl_09_abap_cds_07 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_09_abap_cds_07 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    SELECT
    FROM Z09_CustomerWithTravels
    FIELDS FirstName, LastName, \_travel-description, \_travel-BeginDate
    INTO TABLE @DATA(customer).

    out->write( customer ).
  ENDMETHOD.
ENDCLASS.
