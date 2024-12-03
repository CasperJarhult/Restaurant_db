SELECT r.name AS restaurant_name, 
       SUM(o.total_amount) AS total_revenue
FROM Restaurant r
JOIN Orders o 
    ON r.id = o.restaurant_id
GROUP BY r.name
ORDER BY total_revenue DESC;

SELECT d.name AS dish_name, 
       SUM(od.quantity) AS total_orders
FROM Dish d
JOIN OrderDish od 
    ON d.id = od.dish_id
GROUP BY d.name
ORDER BY total_orders DESC;

SELECT r.name AS restaurant_name, 
       t.table_number, 
       AVG(o.total_amount) AS avg_revenue
FROM Restaurant r
JOIN SeatingTable t 
    ON r.id = t.restaurant_id
JOIN Orders o 
    ON t.id = o.table_id
GROUP BY r.name, t.table_number
ORDER BY avg_revenue DESC;

SELECT c.name AS customer_name, 
       SUM(o.total_amount) AS total_spent
FROM Customer c
JOIN Orders o 
    ON c.id = o.customer_id
GROUP BY c.name
ORDER BY total_spent DESC;
