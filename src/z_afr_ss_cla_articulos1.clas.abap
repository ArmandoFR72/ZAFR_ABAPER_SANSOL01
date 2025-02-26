CLASS z_afr_ss_cla_articulos1 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS z_afr_ss_cla_articulos1 IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.
         DATA: IT_Art TYPE STANDARD TABLE OF zafr_ss_ta_arts1.
         IT_Art = VALUE #(
         ( client = SY-MANDT   id = 1   descrip = 'Caja de MiniColores'   descadi = 'Estuche de MiniColores'   color = 'Varios'
           piezas = 12   stock = 10
           url = 'https://lalibreteria.mx/collections/agenda-2025/products/agenda-2025-guindos-hard-cover' )
         ( client = SY-MANDT   id = 2   descrip = 'Monthly Planner'   descadi = 'Planifica metas y proyectos'   color = 'Negro'
           piezas = 1   stock = 100
           url = 'https://lalibreteria.mx/cdn/shop/products/la-libreteria-Libreta-MonthyPlanner-1_c5c1f533-8cbd-4cab-b7d8-8fe1125dff3c_700x.jpg?v=1700616264' )
         ( client = SY-MANDT   id = 3   descrip = 'MarcaTextos'   descadi = 'Stabilo Boss Original'   color = 'Varios'
           piezas = 8   stock = 20
           url = 'https://lalibreteria.mx/collections/marcatextos/products/stabilo-boss-original' )
         ( client = SY-MANDT   id = 4   descrip = 'Lapiz'   descadi = 'Tombow 2558 #HB'   color = 'Negro'
           piezas = 1   stock = 1
           url = 'https://lalibreteria.mx/cdn/shop/files/la-libreteria-tombow2558-1_600x.jpg?v=1711139173' )
          ).
          INSERT zafr_ss_ta_arts1 FROM TABLE @IT_Art.
          IF   SY-SUBRC = 0.
               OUT->write( 'Registros Insertados en la Tabla de BD.' ).
          ELSE.
               OUT->write( 'Error al Insertar en la Tabla de BD.' ).
          ENDIF.
  ENDMETHOD.
ENDCLASS.
