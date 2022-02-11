/*
 * Use a JOIN to order the films by most profitable,
 * where the profit is the total amount that customer have payer for the film.
 * Use tables payment, rental, inventory, and film. 
 */
SELECT *
FROM
(
    SELECT
        title,
        sum(amount) as "profit"
    FROM film f
    JOIN inventory i ON(f.film_id = i.film_id)
    JOIN rental r ON(i.inventory_id = r.inventory_id)
    JOIN payment p ON(r.rental_id = p.rental_id)
    GROUP BY f.title
) as data
ORDER BY "profit" DESC;
