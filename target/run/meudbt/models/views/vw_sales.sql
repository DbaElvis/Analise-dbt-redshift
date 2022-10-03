

  create view "dev"."public"."vw_sales__dbt_tmp" as (
    with source_sales as (
    select *
    from sales
),

renamed as (
    select 
    SALESID AS ID_VENDA,
    LISTID AS ID_LISTA,
    SELLERID AS ID_VENDEDOR,
    BUYERID AS ID_COMPRADOR,
    EVENTID AS ID_EVENTO,
    DATEID AS ID_DATE,
    QTYSOLD AS QUAQNTIDADE_VENDIDA,
    PRICEPAID AS VALOR_PAGO,
    COMMISSION AS COMISSAO,
    SALETIME AS DATA_VENDA
    from source_sales

)

select * from renamed
  ) ;
