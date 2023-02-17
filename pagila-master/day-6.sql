-- Inner join
-- only rows which are in both tables

-- SELECT AA.*, first_name, last_name
-- FROM payment as AA
-- INNER JOIN customer as BB
-- ON AA.customer_id = BB.customer_id;

-- SELECT payment.*, first_name, last_name
-- FROM payment
-- INNER JOIN staff
-- ON payment.staff_id = staff.staff_id
-- WHERE staff.staff_id = 1;


-- SELECT
-- COUNT(*),
-- CASE
-- WHEN fare_conditions = 'Business' THEN 'Business'
-- WHEN fare_conditions = 'Economy' THEN 'Economy'
-- WHEN fare_conditions = 'Comfort' THEN 'Comfort'
-- END
-- FROM seats
-- INNER JOIN boarding_passes
-- ON seats.seat_no = boarding_passes.seat_no
-- GROUP BY 
-- CASE
-- WHEN fare_conditions = 'Business' THEN 'Business'
-- WHEN fare_conditions = 'Economy' THEN 'Economy'
-- WHEN fare_conditions = 'Comfort' THEN 'Comfort'
-- END;


-- SELECT 
-- COUNT(*),
-- fare_conditions
-- FROM seats
-- INNER JOIN boarding_passes
-- ON seats.seat_no = boarding_passes.seat_no
-- GROUP BY fare_conditions;
