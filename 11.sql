SELECT email, price
FROM client
JOIN reservation ON client.id = reservation.id
JOIN room ON reservation.id = room.id
ORDER BY price;