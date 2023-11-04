-- task 1
SELECT c.customer_id, c.name, c.email, c.location, COUNT(o.order_id) AS total_orders FROM customers c LEFT JOIN orders o ON c.customer_id = o.customer_id GROUP BY c.customer_id ORDER BY total_orders DESC;










