SELECT name_hotel, AVG(salary)
FROM hotels
JOIN employee ON hotels.id = employee.id
GROUP BY name_hotel;