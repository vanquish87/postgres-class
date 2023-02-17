-- SELECT sum(amount), ROUND(AVG(amount), 2) AS AVERAGE
-- FROM payment;

-- SELECT AVG(replacement_cost) FROM film;

-- SELECT customer_id, SUM(amount) FROM payment
-- GROUP BY customer_id
-- ORDER BY SUM(amount) DESC;

-- SELECT staff_id, SUM(amount), COUNT(*) FROM payment
-- GROUP BY staff_id
-- ORDER BY SUM(amount) DESC
-- LIMIT 1;

-- SELECT staff_id, SUM(amount), COUNT(*) FROM payment
-- WHERE amount != 0
-- GROUP BY staff_id
-- ORDER BY SUM(amount) DESC
-- LIMIT 1

-- SELECT staff_id, customer_id, SUM(amount), COUNT(*) FROM payment
-- GROUP BY staff_id, customer_id
-- ORDER BY COUNT(*) DESC;

-- SELECT staff_id, DATE(payment_date), SUM(amount), COUNT(*) FROM payment
-- WHERE amount != 0
-- GROUP BY staff_id, DATE(payment_date)
-- ORDER BY SUM(amount) DESC;


-- SELECT staff_id, DATE(payment_date), SUM(amount), COUNT(*) FROM payment
-- GROUP BY staff_id, DATE(payment_date)
-- HAVING COUNT(*) > 500
-- ORDER BY SUM(amount) DESC;

-- HAVING challenge
SELECT round(AVG(amount), 2), customer_id AS customer, DATE(payment_date), COUNT(*)
FROM payment
GROUP BY customer_id, DATE(payment_date)
HAVING COUNT(*) > 1 
ORDER BY AVG(amount) DESC;



