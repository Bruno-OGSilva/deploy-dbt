-- models/staging/stg_customers.sql
with sources as(
    select * from "northwind"."public"."raw_customers"
),

renamed_and_cleaning as(
select
    customer_id,
    company_name,
    contact_name,
    contact_title,
    address,
    city,
    region,
    postal_code,
    country,
    phone,
    fax
from
    sources
)

select * from renamed_and_cleaning