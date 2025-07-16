SELECT * FROM public.customers
ORDER BY customer_id ASC;
--1
select customer_name,amount
FROM customers
INNER JOIN orders
ON customers.customer_id = orders.customer_id;

--2
SELECT COUNT(o.customer_id) as total_orders,c.customer_name
FROM customers as c
LEFT JOIN orders as o
USING(customer_id)
GROUP BY c.customer_name
ORDER BY total_orders DESC;

--3
SELECT COUNT(s.customer_id) as total_tickets,customer_name
FROM customers as c
LEFT JOIN support_tickets as s
USING(customer_id)
GROUP BY customer_name
ORDER BY total_tickets DESC;

--4
SELECT *,CASE
WHEN amount>200 THEN 'HIGH-VALUE'
ELSE 'LOW-VALUE'
END value_customer FROM orders
ORDER BY amount DESC;




