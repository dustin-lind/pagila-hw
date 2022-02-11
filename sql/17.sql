/*
 * Use a JOIN to order the countries by most profitable,
 * where the profit is the total amount that all customers from that country have payed.
 * Use tables payment, rental, customer, address, city, and country.
 * Order by country alphabetically.
 */

SELECT
    co.country,
    sum(p.amount) as profit
FROM payment p
JOIN rental r ON(p.rental_id = r.rental_id)
JOIN customer cu ON(r.customer_id = cu.customer_id)
JOIN address a ON(cu.address_id = a.address_id)
JOIN city ci ON(a.city_id = ci.city_id)
JOIN country co ON(ci.country_id = co.country_id)
GROUP BY co.country_id
ORDER BY co.country
