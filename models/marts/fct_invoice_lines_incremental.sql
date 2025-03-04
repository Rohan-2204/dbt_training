{{
        config(
            materialized = 'incremental',
            unique_key = 'invoice_id'
        )
}}


select
    *,
    current_timestamp() as etl_invoice_datetime_est
from {{ref('stg_music__invoices')}}
{% if is_incremental() %}
    -- this filter will only be applied on an incremental run
    where invoice_date_est > (select max(invoice_date_est) from {{ this }}) 
{% endif %}