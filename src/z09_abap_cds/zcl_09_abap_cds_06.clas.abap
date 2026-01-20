CLASS zcl_09_abap_cds_06 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_09_abap_cds_06 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  SELECT
      FROM Z09_CUSTOMERKPIS( p_city = 'Heidelberg' )
      FIELDS CustomerId, CustomerName, TotalRevenue
      INTO TABLE @DATA(customers).

      sort customers by TotalRevenue DESCENDING.

    out->write( customers ).
  ENDMETHOD.
ENDCLASS.
