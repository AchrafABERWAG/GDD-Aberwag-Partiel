SELECT name_hotel, COUNT(room.id), SUM(price)
FROM hotels
JOIN room ON hotels.id = room.id
GROUP BY name_hotel;