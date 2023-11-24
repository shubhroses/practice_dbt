{{ config(materialized='table') }}

WITH source_data AS (
    SELECT c_customer_id,
           c_first_name,
           c_last_name,
           c_current_addr_sk,
           c_preferred_cust_flag
    FROM "SNOWFLAKE_SAMPLE_DATA"."TPCDS_SF100TCL"."CUSTOMER"
    WHERE c_current_cdemo_sk = 10
)

SELECT *
FROM source_data
