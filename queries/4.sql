SELECT first_name, last_name, SUM(total)
FROM client
JOIN reservation ON client.id = reservation.id
JOIN billing ON reservation.id = billing.id
GROUP BY first_name, last_name
ORDER BY SUM(total);