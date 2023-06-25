use produce_store_test;

/* Summary Query to show the average transaction 
payment between my company and the customers */

-- select all customer transactions and total them
SELECT COUNT(*) AS total_transactions,
-- show the average transaction total of every sale (2 decimal places)
CAST(AVG(saleAmount) AS DECIMAL(5,2)) AS average_transaction,
-- show the total money spent by customers
SUM(saleAmount) AS transactions_total
-- from salesTransaction table
FROM salestransaction
-- only transactions that are after the following date
WHERE saleDate > '2023/01/01';


/* Summary Query to show most and least expensive 
transaction between my company and the vendors */

-- select all vendor transactions and total them
SELECT COUNT(*) AS total_vendor_transactions,
-- most expensive transaction
MAX(purchaseAmount) AS highest_transaction,
-- least expensive transaction
MIN(purchaseAmount) AS lowest_transaction
-- from purchasetransaction table
FROM purchaseTransaction
-- only transactions that are after the following date
WHERE purchaseDate > '2023/01/01';


/* Summary Query to show customers who have 
spent the most money at my business */

SELECT customer_customerId,
-- show the total transactions for each customer ID
COUNT(*) AS transaction_total,
-- show the sum of every transaction made by a certain customer ID
SUM(saleAmount) AS customer_transaction_total
-- from salestransaction table
FROM salestransaction
-- group each row by customerId
GROUP BY customer_customerId
-- order the results to show highest total amount spent to lowest
ORDER BY customer_transaction_total DESC;


