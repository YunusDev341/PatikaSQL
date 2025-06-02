
SELECT * 
FROM film 
WHERE title LIKE '%n' 
ORDER BY length DESC 
LIMIT 5;

WITH ranked_films AS (
    SELECT *, ROW_NUMBER() OVER (ORDER BY length ASC) AS rn
    FROM film
    WHERE title LIKE '%n'
)
SELECT * 
FROM ranked_films 
WHERE rn BETWEEN 6 AND 10;

SELECT * 
FROM customer 
WHERE store_id = 1 
ORDER BY last_name DESC 
LIMIT 4;
