{{ config(materialized='view') }}


WITH flights_t AS (
    SELECT * 
    FROM {{source('flights_data_t', 'flights_t')}}
)
SELECT * FROM flights_t