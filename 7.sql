SELECT stage, COUNT(client.id)
FROM client
JOIN reservation ON client.id = reservation.id
JOIN room ON reservation.id = room.id
GROUP BY stage
ORDER BY COUNT(client.id);