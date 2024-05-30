USE ecommerce;

SELECT * FROM invoices;

SELECT * FROM invoices AS i
JOIN products AS p
ON i.product_id = p.product_id;

-- Which countries generate the most sales?
SELECT country, ROUND(SUM(line_price), 2) AS total_sales
FROM invoices
GROUP BY country
ORDER BY total_sales DESC
LIMIT 20;

-- What is the average line_price value for each product category?
SELECT p.category AS product_category, ROUND(AVG(line_price), 2) AS average_line_item_price
FROM invoices AS i
JOIN products AS p
ON i.product_id = p.product_id
WHERE i.country = 'united kingdom'
GROUP BY product_category
ORDER BY average_line_item_price DESC
LIMIT 20;

-- What is the average invoice value for each product category?
WITH
invoice_category AS (
	SELECT i.invoice_number, p.category
	FROM invoices AS i
	JOIN products AS p
	ON i.product_id = p.product_id
	GROUP BY i.invoice_number, p.category
),
total_invoice_amount AS (
	SELECT invoice_number, SUM(line_price) AS invoice_amount
	FROM invoices
	GROUP BY invoice_number
)
SELECT c.category, ROUND(AVG(t.invoice_amount), 2) AS average_invoice_amount
FROM invoice_category AS c
JOIN total_invoice_amount AS t
ON t.invoice_number = c.invoice_number
GROUP BY category
ORDER BY average_invoice_amount DESC
LIMIT 20;


-- Which products sell the best in the UK? (how many?)
SELECT SUM(i.quantity) AS total_qty_sold, p.product_id, p.description
FROM invoices AS i
JOIN products AS p
ON i.product_id = p.product_id
WHERE i.country = 'united kingdom'
GROUP BY p.product_id
ORDER BY total_qty_sold DESC
LIMIT 20;


-- Which categories sell the best in the UK? (how many?)
SELECT p.category, SUM(i.quantity) AS total_qty_sold
FROM invoices AS i
JOIN products AS p
ON i.product_id = p.product_id
WHERE i.country = 'united kingdom'
GROUP BY p.category
ORDER BY total_qty_sold DESC
LIMIT 20;

-- Which products generate the most revenue?
SELECT p.description, ROUND(SUM(i.line_price), 2) AS total_sales
FROM invoices AS i
JOIN products AS p
ON i.product_id = p.product_id
WHERE i.country = 'united kingdom'
GROUP BY p.description
ORDER BY total_sales DESC
LIMIT 20;

-- Which categories generate the most revenue?
SELECT p.category, ROUND(SUM(i.line_price), 2) AS total_sales
FROM invoices AS i
JOIN products AS p
ON i.product_id = p.product_id
WHERE i.country = 'united kingdom'
GROUP BY p.category
ORDER BY total_sales DESC
LIMIT 20;