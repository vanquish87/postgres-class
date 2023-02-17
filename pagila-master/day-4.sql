-- day4
-- SELECT LOWER(email) AS email_lower,
-- LENGTH(email)
-- FROM customer;

-- SELECT LOWER(first_name), LOWER(last_name), LOWER(email)
-- FROM customer
-- WHERE LENGTH(first_name) > 10
-- OR LENGTH(last_name) > 10;

-- SELECT lEFT(first_name, 2), RIGHT(first_name, 2), first_name
-- FROM customer;

-- SELECT RIGHT(lEFT(first_name, 2),1), first_name
-- FROM customer;

-- SELECT RIGHT(email, 5), LEFT(RIGHT(email, 4),1)
-- FROM customer
-- WHERE RIGHT(email, 4) = '.org';

-- concatenate
-- SELECT LEFT(first_name,1) || '.' || LEFT(last_name,1),
-- first_name, last_name
-- FROM customer;

-- SELECT LEFT(email,1) || '***' || RIGHT(email,19),
-- email
-- FROM customer;

-- Position
-- SELECT 
-- POSITION('@' IN email),
-- LEFT(email, POSITION('@' IN email) - 1),
-- email
-- FROM customer;

-- SELECT 
-- POSITION(last_name IN email),
-- LEFT(email, POSITION(last_name IN email) - 2),
-- last_name || ',' || LEFT(email, POSITION(last_name IN email) - 2),
-- email
-- FROM customer

-- Substring
-- SELECT email,
-- SUBSTRING (email from POSITION('.' in email) + 1 for LENGTH(last_name))
-- FROM customer;

-- SELECT email,
-- SUBSTRING (email from 3 for 2)
-- FROM customer;

-- SELECT email,
-- SUBSTRING (email from POSITION('.' in email) + 1 for LENGTH(last_name))
-- FROM customer;

-- SELECT LEFT(email,1) || '***' ||
-- RIGHT(LEFT(email, POSITION('.' IN email) + 1),1) || '***' ||
-- RIGHT(email,19),
-- email
-- FROM customer;

-- extract function
-- SELECT 
-- EXTRACT (MONTH from rental_date),
-- COUNT(*)
-- FROM rental
-- GROUP BY EXTRACT (MONTH from rental_date)
-- ORDER BY COUNT(*) DESC;

-- challenge
-- SELECT 
-- EXTRACT (MONTH from payment_date) as month,
-- SUM(amount)
-- FROM payment
-- GROUP BY EXTRACT (MONTH from payment_date)
-- ORDER BY SUM(amount) DESC;

-- SELECT 
-- customer_id,
-- EXTRACT (week from payment_date) as week,
-- SUM(amount)
-- FROM payment
-- GROUP BY EXTRACT (week from payment_date),
-- customer_id
-- ORDER BY SUM(amount) DESC 

-- To_CHAR function
-- SELECT 
-- SUM(amount),
-- TO_CHAR(payment_date, 'Dy Month YY')
-- FROM payment
-- GROUP BY TO_CHAR(payment_date, 'Dy Month YY');

-- SELECT 
-- SUM(amount),
-- TO_CHAR(payment_date, 'DD/MM/YY')
-- FROM payment
-- GROUP BY TO_CHAR(payment_date, 'DD/MM/YY');

-- CURRENT_TIMESTAMP
-- SELECT CURRENT_TIMESTAMP,
-- CURRENT_TIMESTAMP - rental_date
-- FROM rental;


-- SELECT CURRENT_TIMESTAMP,
-- EXTRACT(day from CURRENT_TIMESTAMP - rental_date)
-- FROM rental;

-- SELECT 
-- return_date - rental_date
-- FROM rental
-- WHERE customer_id = 35;


SELECT 
customer_id,
AVG(return_date - rental_date)
FROM rental
GROUP BY customer_id
ORDER BY AVG(return_date - rental_date) DESC;


