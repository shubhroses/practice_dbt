{{ config(materialized='table') }}


SELECT
    COUNT(*) as customer_count,
    c_preferred_cust_flag
FROM {{ ref('my_first_dbt_model') }}
GROUP BY c_preferred_cust_flag
