Use IFTProject;

Select * from Customer;
Select * from Employee;
Select * from pay;
Select * from StoreSaleLineItem order by invoiceID;
Select * from Sales;
Select * from Inventory order by ListPrice Desc;
Select * from Supplier;

/*Sample receipt select statement with joins here. Using the join statements we determine the 
customer and the employee that put in the order. It is ordered by CustomerID.*/

Select 
	SS.invoiceID,
	Sum(SS.SalePice * SS.Quantity) As InvoiceTotal,
	Cus.CustID,
	Sales.EmpID,
	Sales.SaleTime,
	cus.LastName+', '+ Cus.FirstName As CustomerName
From
	Customer Cus 
	Join Sales On Cus.CustID = Sales.CustID
	Join StoreSaleLineItem SS On Sales.invoiceID = SS.invoiceID
Group By
	SS.invoiceID, Cus.CustID, Sales.EmpID, Sales.SaleTime, Cus.FirstName, Cus.LastName
Order By 
	SS.invoiceID
;

/*We want to get the top ten items in our inventory that are more than the average price of all items in the inventory.
As well as the inventory so that if we need to order more we can */

Select Top 10
	InventoryID, 
	itemName,
	ListPrice,
	Stock,
	Case
		When Stock < 30 Then 'Buy'
		Else 'Enough stock'
	End As 'Should We Order?'
From
	Inventory
Where
	ListPrice > (Select AVG(SalePice) From StoreSaleLineItem)
Order By 
	ListPrice Desc
;

