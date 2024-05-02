SELECT
    InvoiceLineId AS invoiceline_id
    InvoiceId AS invoice_id
    TrackId AS track_id,
    UnitPrice AS invoice_lineitem_revenue_usd,
    Quantity AS quanity_purchased
FROM {{ source('music', 'invoiceline')}}