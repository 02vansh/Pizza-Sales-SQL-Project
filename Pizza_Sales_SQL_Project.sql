-- Analyze the revenue generated over time.

SELECT orders.order_date as DAY, 
round(sum(order_details.quantity * pizzas.price),0) as Revenue
FROM orders JOIN order_details JOIN pizzas JOIN pizza_types
ON order_details.order_id = orders.order_id and order_details.pizza_id = pizzas.pizza_id and pizzas.pizza_type_id = pizza_types.pizza_type_id
GROUP BY day
ORDER BY DAY;