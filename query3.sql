-- Assignment: Project 6
-- Description: Count the number of transactions that include a PG-rated film

USE sakila;
SELECT COUNT(amount) AS COUNT_all
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