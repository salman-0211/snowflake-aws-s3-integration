-- Simple aggregation: customers by city
SELECT city, COUNT(*) AS total_customers
FROM CUSTOMERS_S3
GROUP BY city
ORDER BY total_customers DESC;
