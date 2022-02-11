/*
 * Use a JOIN to list each film and the number of actors who are listed for that film.
 * Use tables film and film_actor.
 */
SELECT *
FROM
(
    SELECT
        title,
        film_id,
        count(actor_id) as "actor_count"
    FROM film
    INNER JOIN film_actor USING(film_id)
    GROUP BY film_id
) as data
ORDER BY "actor_count", title;
