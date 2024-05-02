SELECT
    mediatypeid AS mediatype_id,
    name AS mediatype_name
FROM {{source('music', 'mediatype')}}