-- task 1
SELECT c.customer_id, c.name, c.email, c.location, COUNT(o.order_id) AS total_orders FROM customers c LEFT JOIN orders o ON c.customer_id = o.customer_id GROUP BY c.customer_id ORDER BY total_orders DESC;

--task 2
SELECT o.order_id, p.name AS product_name, oi.quantity, oi.quantity * oi.unit_price AS total_amount FROM orders_items oi JOIN orders o ON oi.order_id = o.order_id JOIN products p ON oi.product_id = p.product_id ORDER BY o.order_id ;


--task 3
SELECT c.name AS category_name, SUM(oi.quantity * oi.unit_price) AS total_revenue FROM categories c LEFT JOIN products p ON c.category_id = p.categories_id LEFT JOIN orders_items oi ON p.product_id = oi.product_id GROUP BY c.name ORDER BY total_revenue DESC;

--task 4 
SELECT c.name AS customer_name, SUM(oi.quantity * oi.unit_price) AS total_purchase_amount FROM customers c  JOIN orders o ON c.customer_id = o.customer_id  JOIN orders_items oi ON o.order_id = oi.order_id GROUP BY c.name ORDER BY total_purchase_amount DESC LIMIT 5;