SELECT * FROM customers;

CREATE VIEW customer_summary AS 
SELECT c.customer_id,c.customer_name,SUM(o.amount) as total_amount,ROUND(AVG(o.amount),2) as avg_amout,COUNT(o.order_id) as num_of_orders
FROM customers AS c
LEFT JOIN orders AS o
USING(customer_id)
GROUP BY c.customer_id,c.customer_name
ORDER BY total_amount DESC;

SELECT 
  cs.customer_id,
  cs.customer_name,
  cs.total_amount,
  cs.avg_amout,
  cs.num_of_orders,
  COUNT(st.ticket_id) AS num_tickets,
  MAX(st.ticket_date) AS last_ticket_date,
  MAX(st.issue) AS last_issue
FROM customer_summary AS cs
LEFT JOIN support_tickets AS st
USING(customer_id)
GROUP BY 
  cs.customer_id,
  cs.customer_name,
  cs.total_amount,
  cs.avg_amout,
  cs.num_of_orders
ORDER BY num_tickets DESC;




