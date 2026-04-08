-- create table sales(
-- 	invoiceno varchar,
-- 	stockcode varchar,
-- 	description text,
-- 	quantity int,
-- 	invoicedata timestamp,
-- 	unitprice float,
-- 	customerid float,
-- 	country varchar,
-- 	revenue float,
-- 	month_ varchar,
-- 	year_ varchar
-- );



-- #Total Revenue
-- SELECT SUM("Revenue") AS total_revenue FROM sales;




-- select "Month", "Year", sum("Revenue")as revenue
-- from sales
-- group by "Year", "Month"
-- order by "Year", "Month";



-- #Top 10 customer
-- SELECT "CustomerID", SUM("Revenue") AS total_spent
-- FROM sales
-- GROUP BY "CustomerID"
-- ORDER BY "total_spent" DESC
-- LIMIT 10;


-- #Top Products
-- SELECT "Description", SUM("Quantity") AS total_sold
-- FROM sales
-- GROUP BY "Description"
-- ORDER BY total_sold DESC
-- LIMIT 10;


-- #Revenue by Country
SELECT "Country", SUM("Revenue") AS revenue
FROM sales
GROUP BY "Country"
ORDER BY revenue DESC;
