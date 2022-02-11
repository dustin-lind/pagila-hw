/* 
 * Use a JOIN to list the number of copies of each film in the inventory system that begins with the letter h.
 * Use tables inventory and film.
 * Order by film title alphabetically.
 */
SELECT
    film.film_id,
    title,
    count(*) as count
FROM film
INNER JOIN inventory USING(film_id)
WHERE SUBSTR(title,1,1) = 'H'
GROUP BY film_id
ORDER BY title DESC;
