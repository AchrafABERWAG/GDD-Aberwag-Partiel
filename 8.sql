SELECT category, total
FROM billing
JOIN service ON billing.id = service.id
GROUP BY category,total;