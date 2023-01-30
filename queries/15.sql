SELECT description, AVG(price) FROM service WHERE category = 'Relaxation' group by description ;
