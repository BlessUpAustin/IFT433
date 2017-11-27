USE IFTProject;

Select * from Inventory;
GO

/*Creating a simple view that will show items that might need to be restocked before we can continue our work.*/
DROP VIEW IF EXISTS TestView;
GO

CREATE VIEW TestView AS 
SELECT itemName, Stock, ListPrice
FROM Inventory
WHERE ListPrice > 15;
Go

Select * from Sales;
Select * from StoreSaleLineItem;
Select * from Inventory;
GO

/*Created a view to display the sales currently and how much each item was based on the invoice*/
DROP VIEW IF EXISTS Month_Orders;
GO

Create View Month_Orders As
Select 
	Sales.EmpID,
	Sales.invoiceID,
	itemName,
	CONVERT(varchar, Sales.SaleTime, 100) AS 'DateTime',
	SSLI.SalePice * Quantity As 'Item Total'
From
	Sales 
	Join StoreSaleLineItem SSLI ON Sales.invoiceID = SSLI.invoiceID
	Join Inventory Inv On SSLI.InventoryID = Inv.InventoryID
;
GO

Select * from Month_Orders;
GO

/*View of the top 10 items in our inventory along with the customer review*/
DROP VIEW IF EXISTS Top_10_Inv;
GO

Create View Top_10_Inv As
Select Top 10 
	FoodItem.InventoryID,
	Inventory.itemName,
	FoodItem.cusRating
From	
	Inventory 
	Join FoodItem On Inventory.InventoryID = FoodItem.InventoryID
Order by cusRating Desc
;

Create View Overtime As 
Select * 
From 
	Pay
Where 
	hrsWrked > 40
With CHECK OPTION;
