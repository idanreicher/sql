/*
	sub query is a nested query
    where thre reuslts of one sub query 
    can be used in another qouery via
    relational operator or aggregatioan function
    
    must be encloased with parentheses
    
    if you use a sub query with where clause
    it can only have one column
    
    ORDER BY is not allowed in sub queries
    
    can be nested in other sub query
    
    used in WHERE ,HAVING, FROM and SELECT cluases
    

*/

/* 
find costomers who like to watch action movies
 */

/*  
Problem Statement:
Find customers who like to watch action movies?
*/

USE sakila;
-- Subquery
SELECT cust.customer_id, cust.first_name, cust.last_name
FROM customer cust
WHERE cust.customer_id IN
(
SELECT ren.customer_id
FROM rental ren
WHERE ren.inventory_id IN
(
SELECT inv.inventory_id
FROM inventory inv
WHERE inv.film_id IN
(
SELECT fl.film_id
FROM film fl
WHERE fl.film_id IN 
(
SELECT fc.film_id
FROM film_category fc
WHERE fc.category_id IN 
(
SELECT cat.category_id 
FROM category cat
WHERE cat.name = 'Action'
)))))
ORDER BY cust.customer_id, cust.first_name, cust.last_name;

/* same as */
-- Joins
SELECT DISTINCT cust.customer_id, cust.first_name, cust.last_name
FROM customer cust
INNER JOIN rental ren ON ren.customer_id = cust.customer_id
INNER JOIN inventory inv ON inv.inventory_id = ren.inventory_id
INNER JOIN film fl ON fl.film_id = inv.film_id
INNER JOIN film_category fc ON fc.film_id = fl.film_id
INNER JOIN category cat ON cat.category_id = fc.category_id
WHERE cat.name = 'Action'
ORDER BY cust.customer_id, cust.first_name, cust.last_name;



/* aggregation values */

SELECT fm.title, cat.name, dt.CountofCategory
FROM film fm 
INNER JOIN film_category fc ON fc.film_id = fm.film_id
INNER JOIN category cat ON cat.category_id = fc.category_id
INNER JOIN 
	(	SELECT COUNT(*) AS CountofCategory, fc.category_id
		FROM film_category fc
		GROUP BY fc.category_id) dt ON dt.category_id = fc.category_id;


/* correlated */

/*
Problem Statement:
Find all the customer's payments which are over their average payment.
*/

SELECT  payment_id, cust.first_name, cust.last_name, amount
FROM payment pt
INNER JOIN customer cust ON cust.customer_id = pt.customer_id
WHERE amount >
		(	SELECT AVG(amount)
			FROM payment pt1
			WHERE pt1.customer_id = pt.customer_id)
ORDER BY cust.customer_id;



SELECT  cust.first_name, cust.last_name, COUNT(payment_id) CountofPayment
FROM payment pt
INNER JOIN customer cust ON cust.customer_id = pt.customer_id
WHERE amount >
		(	SELECT AVG(amount)
			FROM payment pt1
			WHERE pt1.customer_id = pt.customer_id)
GROUP BY cust.first_name, cust.last_name
ORDER BY cust.customer_id;
































