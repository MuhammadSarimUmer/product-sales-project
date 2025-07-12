SELECT SUM(quantity*unitprice) AS total_sales from online_retail;

SELECT * FROM online_retail;

SELECT description, SUM(quantity * unitprice) as total_revenue FROM online_retail
GROUP BY description
ORDER BY total_revenue DESC;

SELECT AVG(order_total) as avg_order_value
FROM(SELECT SUM(unitprice*quantity) as order_total,invoiceno
FROM online_retail GROUP BY invoiceno);


