SELECT type_room,availablity,number_of_people,email,phone,budget
FROM client
JOIN room 
ON client.id= room.id;