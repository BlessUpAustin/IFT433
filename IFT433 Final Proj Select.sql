Use IFTProject;

Select * from Customer;
Select * from Employee;
Select * from StoreSaleLineItem;
Select * from Sales;
Select * from Inventory order by ListPrice Desc;

/*Sample recipt select statement with joins here. Using the joing statments we determine the 
customer and the employee that put in the order. It is ordered by CustomerID.*/


Select 
	--*,
	Sales.invoiceID,
	Cus.CustID,
	Sales.EmpID,
	Sales.SaleTime,
	Cus.FirstName + ' ' + Cus.LastName As CustomerName
From
Customer Cus 
	Join Sales On Cus.CustID = Sales.CustID
	Join StoreSaleLineItem SS On Sales.invoiceID = SS.invoiceID
Order By 
	Cus.CustID;

/*When I want to price on the invoice. I would use this code to get the invoice total*/
Select 
	SS.invoiceID,
	Sum(SS.SalePice * SS.Quantity) As Sum 
From 
	Sales Join StoreSaleLineItem SS On Sales.invoiceID = SS.invoiceID
Group By
	SS.invoiceID;
