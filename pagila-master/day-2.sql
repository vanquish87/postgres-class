-- SELECT COUNT(*) FROM payment
-- WHERE amount=0;

-- SELECT first_name, last_name FROM customer
-- WHERE first_name='ADAM';

-- SELECT COUNT(*) FROM payment
-- WHERE customer_id=100;

-- SELECT first_name, last_name FROM customer
-- WHERE first_name='ERICA';

-- SELECT * FROM payment
-- WHERE amount>10 ORDER BY amount DESC ;

-- SELECT first_name, last_name FROM customer
-- WHERE first_name is not null;

-- SELECT COUNT(*) FROM rental
-- WHERE return_date is null;

-- SELECT payment_id, amount FROM payment
-- WHERE amount <= 2
-- ORDER BY amount DESC;

-- SELECT * FROM payment
-- WHERE amount = 10.99 AND customer_id = 426;


-- SELECT * FROM payment
-- WHERE amount = 10.99 or amount = 9.99 and customer_id = 426;

-- SELECT * FROM payment
-- WHERE (amount = 10.99 or amount = 9.99) and customer_id = 426;

-- SELECT * FROM payment
-- WHERE customer_id = 30
-- or (customer_id = 31
-- AND amount = 2.99)
-- ORDER BY customer_id;

-- SELECT * FROM payment
-- WHERE (customer_id = 30
-- or customer_id = 31)
-- AND amount = 2.99
-- ORDER BY customer_id;

-- SELECT * FROM payment
-- WHERE (customer_id = 322 or customer_id =346 or customer_id = 354)
-- and (amount < 2 or amount > 10)
-- ORDER BY customer_id ASC, amount DESC;

-- SELECT payment_id, amount FROM payment
-- WHERE amount BETWEEN 1.99 AND 6.99
-- ORDER BY amount DESC;

-- SELECT payment_id, amount FROM payment
-- WHERE amount NOT BETWEEN 1.99 AND 6.99
-- ORDER BY amount DESC;

-- SELECT payment_id, amount, payment_date AS date 
-- FROM payment
-- WHERE payment_date BETWEEN '2020-01-24' AND '2020-01-26'
-- ORDER BY payment_date DESC;

-- SELECT COUNT(*) FROM payment
-- WHERE (payment_date BETWEEN '2020-01-26' AND '2020-01-28')
-- AND (amount BETWEEN 1.99 and 3.99);

-- SELECT * FROM customer
-- WHERE customer_id IN (123, 212, 243, 323)

-- SELECT COUNT(*) FROM payment
-- WHERE customer_id IN (12, 25, 67, 93, 124, 234)
-- AND amount IN (4.99, 7.99, 9.99)
-- AND payment_date BETWEEN '2020-01-01' AND '2020-02-01';

-- % for anything after
-- SELECT * FROM actor
-- WHERE first_name LIKE 'A%'

-- _ for 1 value before 'A'
-- SELECT * FROM actor
-- WHERE first_name LIKE '_A%'

-- not case-senstive
-- SELECT * FROM actor
-- WHERE first_name ILIKE '_A%';

-- A is anywhere
-- SELECT * FROM actor
-- WHERE first_name LIKE '%A%'

-- A is nowhere
-- SELECT * FROM actor
-- WHERE first_name NOT LIKE '%A%'

-- SELECT * FROM film
-- WHERE description LIKE '%Drama%'
-- AND title Like '_T%'


-- SELECT COUNT(*) FROM film
-- WHERE description LIKE '%Documentary%';

-- SELECT * FROM customer
-- WHERE first_name LIKE '___'
-- AND (last_name LIKE '%X' 
-- OR last_name LIKE '%Y');

-- daily challenges
-- SELECT COUNT(*) AS number_of_movie FROM film
-- WHERE description LIKE '%Saga%'
-- AND (title LIKE 'A%R'
-- OR title LIKE '%R');

-- SELECT * FROM customer
-- WHERE first_name LIKE '%ER%'
-- AND first_name LIKE '_A%'
-- ORDER BY last_name DESC;

