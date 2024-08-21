@AbapCatalog.sqlViewName: 'Z_LZ_V_ART'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Vista Articulos Arte'
@Metadata.allowExtensions: true

define view Z_LZ_CDS_ART as select from zlz_tab_art
{
    key client as client,
    key id_art as IdArt,
    descr as Descr,
    descr2 as Descr2,
    color as Color,
    piezas as Piezas,
    stock as Stock,
    usrl as Usrl,
    
    case
    when stock = 0 then 0
    when stock between 1 and 10 then 1
    when stock between 11 and 99 then 2
    when stock >= 100 then 3
    else 0
    end as status
}
