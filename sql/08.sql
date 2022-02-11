/*
 * Use a JOIN to display the first and last names, as well as the address, of each staff member.
 * Use the tables staff and address.
 * Order by last name.
 */
SELECT
    first_name,
    last_name,
    address as street_address
FROM staff s
INNER JOIN address a ON s.address_id = a.address_id
