/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [orderid]
      ,[custid]
      ,[empid]
      ,[orderdate]
      ,[requireddate]
      ,[shippeddate]
      ,[shipperid]
      ,[freight]
      ,[shipname]
      ,[shipaddress]
      ,[shipcity]
      ,[shipregion]
      ,[shippostalcode]
      ,[shipcountry]
  FROM [TSQLV4].[Sales].[Orders]

--T-SQL Chapter 2 pg49-51(Digital addition)


--Exercise 1: Write a query against the Sales.Orders table that returns orders placed in June 2015

SELECT orderid, orderdate, custid, empid 
				FROM Sales.Orders
				WHERE orderdate BETWEEN 'June 1, 2015' and 'June 30, 2015';

--Exercise 2: Write a query against the Sales.Orders table that returns orders placed on the last day of  the month.

SELECT orderid, orderdate, custid, empid
				FROM Sales.Orders
				WHERE orderdate = EOMONTH(orderdate);

--Exercise 3: Write a query against the HR.Employees table that returns employees whith a last name containng the letter e twice or more:

SELECT empid, firstname, lastname
				FROM HR.Employees
				WHERE lastname Like '%e%e%';

--Exercise 4: Write a query against the Sales.OrderDetails table that returns orders with a total value(quantity *unitprice greater than 10,000, sorted by total value:

SELECT orderid, sum(qty*unitprice) AS totalvalue
				FROM  Sales.OrderDetails
				GROUP BY orderid
				HAVING sum(qty*unitprice)>10000
				ORDER BY totalvalue DESC;




