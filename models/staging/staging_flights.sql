{{ config(materialized='view') }}


WITH flights_EH AS (
    SELECT * 
    FROM {{source('flights_data', 'flights')}}
)
SELECT * FROM flights_EH