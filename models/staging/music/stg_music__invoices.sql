SELECT
    InvoiceId AS invoice_id,
    CustomerId AS customer_id,
    InvoiceDate AS invoice_date_est,
    BillingAddress AS billing_address,
    BillingCity AS billing_city,
    BillingState AS billing_state,
    BillingCountry AS billing_country,
    BillingPostalCode AS billing_zipcode,
    Total AS invoice_revenue_usd
FROM {{source('music', 'invoice')}}