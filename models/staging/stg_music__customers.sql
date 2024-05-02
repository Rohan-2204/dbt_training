SELECT
    CustomerId AS customer_id,
    FirstName AS customer_first_name, 
    LastName AS customer_last_name,
    Company AS customer_work_company,
    Address AS customer_mailing_address,
    City AS customer_mailing_city,
    State AS customer_mailing_state,
    Country AS customer_mailing_country,
    PostalCode AS customer_mailing_zipcode,
    Phone AS customer_phone_number,
    Fax AS customer_fax_number,
    Email AS customer_email_address,
    SupportRepId AS representative_employee_id
FROM {{source('music', 'customer')}}