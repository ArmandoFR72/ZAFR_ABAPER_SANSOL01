@AbapCatalog.sqlViewName: 'ZAFRV_CDS_ARTS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS-Articulos-1'
@Metadata.allowExtensions: true
define view zafr_ss_cds_Arts1 as select from zafr_ss_ta_arts1
{
    key client as client,
    key id as Id,
    descrip as Descrip,
    descadi as Descadi,
    color as Color,
    piezas as Piezas,
    stock as Stock,
    url as Url,
    // 0 Neutral  Grey
    // 1 Negative Red
    // 2 Critical Yellow
    // 3 Positive Green
    case 
    when stock = 0 then 0
    when stock between 1 and 10 then 1
    when stock between 11 and 99 then 2
    when stock >= 100 then 3
    else 0
    end as status
}





