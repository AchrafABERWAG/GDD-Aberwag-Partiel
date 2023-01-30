SELECT description, SUM(price)
FROM service
GROUP BY description
ORDER BY SUM(price);
