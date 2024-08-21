CLASS z_lz_class_art DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS z_lz_class_art IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  data: it_tab TYPE STANDARD TABLE OF zlz_tab_art.

        it_tab = VALUE #(
        ( client = sy-mandt id_art = 1 descr = 'lápices colores' descr2 = 'Set de lápices Faber Castell ecolapiz lata' color = 'varios'
        piezas = 48 stock = 10
        usrl = 'https://www.artisticarubens.com.ar/media/catalog/product/cache/fe834d3b1b015d6516f54b6ea9487258/s/e/set-lapices-colores-fabercastell-ecolapiz-x48-ventana_1.jpg'
        )
        ( client = sy-mandt id_art = 2 descr = 'Atril' descr2 = 'Atril infantil Seurat con Banco con rotafolio' color = 'Marron'
        piezas = 2 stock = 5
        usrl = 'https://www.artisticarubens.com.ar/media/catalog/product/cache/fe834d3b1b015d6516f54b6ea9487258/a/t/atril_seurat_nenes_2.jpg'
        )
        ( client = sy-mandt id_art = 3 descr = 'Cuaderno de dibujo' descr2 = 'Block Plantec para Dibujo A5 90grs.40hjs anillado lateral' color = 'azul'
        piezas = 1 stock = 50
        usrl = 'https://www.artisticarubens.com.ar/media/catalog/product/cache/fe834d3b1b015d6516f54b6ea9487258/b/l/block-plantec-dibujo-a5-90g-40h-anilladolateral_1.jpg'
        )
        ).

        INSERT zlz_tab_art FROM TABLE @it_tab.

        if sy-subrc = 0.
            out->write( 'Se cargo correctamente' ).
        else.
            out->write( 'Algo fallo' ).
        endif.

  ENDMETHOD.
ENDCLASS.
