-- Math functions
-- SELECT 
-- rental_rate,
-- rental_rate + 1
-- FROM film;

-- SELECT
-- film_id,
-- rental_rate,
-- CEILING(rental_rate * 1.4) -.01 AS new_rate
-- FROM film;

-- SELECT 
-- film_id,
-- ROUND(rental_rate / replacement_cost* 100, 2) AS replace_cents
-- FROM film
-- WHERE ROUND(rental_rate / replacement_cost* 100, 2) < 4;


-- CASE
-- SELECT
-- amount,
-- CASE
-- WHEN amount < 2 THEN 'low amount'
-- WHEN amount < 5 THEN 'medium amount'
-- END
-- FROM payment;


--  REPLACE function
SELECT 
CAST(REPLACE(passenger_id, ' ', '') AS BIGINT)
FROM flights
