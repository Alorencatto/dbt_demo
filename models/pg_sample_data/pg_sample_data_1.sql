
-- Força o resultado ser uma tabela
{{ config(materialized='table') }}


with teste_1 as (
    SELECT *,'teste' as teste FROM {{ source('pg_sample_data','instrutor') }}
),

final as(
    select * from teste_1
)

select * from final


