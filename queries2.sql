SELECT * FROM online_retail;

--1
SELECT description as items,SUM(quantity*unitprice) as total_revenue
FROM online_retail 
GROUP BY items 
ORDER BY total_revenue desc;

--2
SELECT description as items , SUM(quantity*unitprice) as total_revenue,
CASE
WHEN SUM(quantity*unitprice)>3000 THEN 'HIGH PERFORMING'
ELSE 'LOW PERFORMING'
END AS performance
FROM online_retail
GROUP BY description
ORDER BY total_revenue DESC;

--3
SELECT 
    Description,
    AVG(UnitPrice) AS avg_price_per_product
FROM 
    online_retail
GROUP BY 
    Description
HAVING 
    AVG(UnitPrice) > (
        SELECT AVG(UnitPrice) FROM online_retail
    )
ORDER BY 
    avg_price_per_product DESC;


