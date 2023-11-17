{{ config(
  materialized='view',
  file_format='delta'
) }}

WITH data AS (

    SELECT * FROM {{ ref('int_okta_system_log') }}

)

select * from data
