-- Name: G M Toufiqul Hoque
-- Course: DA651.1001
-- Assignment: Project 6
-- Description: Run query using CONCAT, return the statement “Sean Williams has starred in XX films”,
-- where XX is the total number of films he has starred in


USE sakila;
SELECT CONCAT( a.first_name, ' ', a.last_name, ' ', 'has',' ', 'been ',' ', 'in', ' ' , COUNT(f.film_id),' ', 'films') AS message
FROM actor a
JOIN film_actor fa
ON a.actor_id= fa.actor_id
JOIN film f
ON fa.film_id= f.film_id
WHERE a.first_name ='Sean' AND a.last_name ='Williams' 
GROUP BY fa.actor_id
;
