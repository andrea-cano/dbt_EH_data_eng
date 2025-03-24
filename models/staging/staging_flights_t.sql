{{ config(materialized='view') }}


WITH flights_t AS (
    SELECT * 
    FROM {{source('flights_data_t', 'flights_t')}}
    WHERE flight_date BETWEEN '2023-10-01' AND '2024-09-30'
)
SELECT * FROM flights_t