SELECT name_hotel, COUNT(room.id), COUNT(employee.id)
FROM hotels
JOIN room ON hotels.id = room.id
JOIN employee ON hotels.id = employee.id
GROUP BY name_hotel;