use produce_store_test;


/* Subquery to show the employees who
are making less money per hour than
the average wage of all employees */

SELECT employeeId,
employeeFN as First_Name,
employeeLN as Last_Name,
-- show wage of each employee below average
employeeWage as wage
FROM employees
-- check employees that are less than AVG
WHERE employeeWage < 
-- Subquery giving an average of all wages
(SELECT AVG(employeeWage) FROM employees);

/* CTE that holds employee data (employees joined 
with employee's emails) including the average 
wage partitioned by the employee's current position */

-- CTE opening 'WITH' clause
WITH CTE_Employee_Data as 
(
-- beginning of select statement
SELECT employeeFN as 'First Name',
employeeLN as 'Last Name',
-- concat the varchars to create the full email
CONCAT(username,atToDot,domain) as email,
employeePos as 'Position',
employeeWage as wage,
-- new column of average wage by store position
AVG(employeeWage) OVER(PARTITION BY employeePos) AS Avg_By_Position
-- join tables to get email data
FROM employees emp JOIN employeeEmail empmail
-- joined by employeeId from both tables
ON emp.employeeID = empmail.employees_employeeId
)
-- select all from the new CTE
SELECT * FROM CTE_Employee_Data
-- order by wage, lowest to highest
ORDER BY Avg_By_Position ASC;
