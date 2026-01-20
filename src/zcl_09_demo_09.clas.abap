CLASS zcl_09_demo_09 DEFINITION
  PUBLIC FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
ENDCLASS.


CLASS zcl_09_demo_09 IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    SELECT
      FROM Z00_Demo07( P_CarrierID = 'LH' )
      FIELDS *
      " WHERE carrierId = 'LH' optional, daher schlechte Lösung
      INTO TABLE @DATA(flights).

    out->write( flights ).
  ENDMETHOD.
ENDCLASS.
