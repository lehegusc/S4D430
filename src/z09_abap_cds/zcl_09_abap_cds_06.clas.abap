CLASS zcl_09_abap_cds_06 DEFINITION
  PUBLIC FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
ENDCLASS.


CLASS zcl_09_abap_cds_06 IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    SELECT
      FROM z09_customerkpis( p_city = 'Heidelberg' )
      FIELDS CustomerId, CustomerName, TotalRevenue
      INTO TABLE @DATA(customers).

    SORT customers BY TotalRevenue DESCENDING.

    out->write( customers ).
  ENDMETHOD.
ENDCLASS.
