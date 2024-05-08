with int_customers_joined_to_employees as(
    select * from {{ref('int_customers_joined_to_employees')}}
),

int_invoice_lines_joined_to_invoices as(
    select * from {{ref('int_invoice_lines_joined_to_invoices')}}
),

int_tracks_joined_to_albums_artists_genres_mediatypes as(
    select * from {{ref('int_tracks_joined_to_albums_artists_genres_mediatypes')}}
),

joined as(
    select
        int_invoice_lines_joined_to_invoices.invoiceline_id,
        int_invoice_lines_joined_to_invoices.invoice_id,
        int_tracks_joined_to_albums_artists_genres_mediatypes.track_id,
        int_tracks_joined_to_albums_artists_genres_mediatypes.album_id,
        int_tracks_joined_to_albums_artists_genres_mediatypes.mediatype_id,
        int_tracks_joined_to_albums_artists_genres_mediatypes.genre_id,
        int_customers_joined_to_employees.customer_id,
        int_customers_joined_to_employees.employee_id,
        int_invoice_lines_joined_to_invoices.invoice_date_est,
        int_invoice_lines_joined_to_invoices.billing_state,
        int_invoice_lines_joined_to_invoices.billing_country,
        int_invoice_lines_joined_to_invoices.quantity_purchased,
        int_invoice_lines_joined_to_invoices.invoice_lineitem_revenue_usd,
        int_tracks_joined_to_albums_artists_genres_mediatypes.track_name,
        int_tracks_joined_to_albums_artists_genres_mediatypes.track_composer,
        int_tracks_joined_to_albums_artists_genres_mediatypes.album_title,
        int_tracks_joined_to_albums_artists_genres_mediatypes.artist_name,
        int_tracks_joined_to_albums_artists_genres_mediatypes.mediatype_name,
        int_tracks_joined_to_albums_artists_genres_mediatypes.genre_name,
        int_tracks_joined_to_albums_artists_genres_mediatypes.track_length_ms,
        int_tracks_joined_to_albums_artists_genres_mediatypes.track_length_seconds,
        int_tracks_joined_to_albums_artists_genres_mediatypes.track_length_mins,
        int_tracks_joined_to_albums_artists_genres_mediatypes.Bytes,
        int_customers_joined_to_employees.customer_mailing_state,
        int_customers_joined_to_employees.customer_mailing_country,
        int_customers_joined_to_employees.customer_email_address,
        int_customers_joined_to_employees.employee_name,
        int_customers_joined_to_employees.employee_title,
        int_customers_joined_to_employees.employee_city,
        int_customers_joined_to_employees.employee_state,
        int_customers_joined_to_employees.employee_country
    from int_tracks_joined_to_albums_artists_genres_mediatypes
    left join int_invoice_lines_joined_to_invoices 
        on int_tracks_joined_to_albums_artists_genres_mediatypes.track_id = int_invoice_lines_joined_to_invoices.track_id
    left join int_customers_joined_to_employees
        on int_invoice_lines_joined_to_invoices.customer_id = int_customers_joined_to_employees.customer_id
)

select * from joined