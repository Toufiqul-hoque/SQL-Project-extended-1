-- Name: G M Toufiqul Hoque
-- Course: DA651.1001
-- Assignment: Project 6
-- Description: Run query for Count the number of unique customers that have rented a PG-rated film


USE sakila;
SELECT COUNT(DISTINCT cu.customer_id) AS NUMBER_OF_customer
FROM payment p
INNER JOIN customer cu
ON p.customer_id= cu.customer_id
INNER JOIN rental r
ON p.rental_id=r.rental_id
INNER JOIN  inventory i
ON r.inventory_id=i.inventory_id
INNER JOIN film f
ON f.film_id= i.film_id
WHERE f.rating LIKE 'PG'
;