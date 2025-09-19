-- Low stock alert
SELECT p.product_id, p.name, i.qty_on_hand, p.reorder_level
FROM products p
JOIN inventory i ON p.product_id = i.product_id
WHERE i.qty_on_hand <= p.reorder_level;

-- Monthly sales per product
SELECT TO_CHAR(order_date,'YYYY-MM') month, product_id, SUM(qty*unit_price) total_sales
FROM orders
GROUP BY TO_CHAR(order_date,'YYYY-MM'), product_id
ORDER BY month;
