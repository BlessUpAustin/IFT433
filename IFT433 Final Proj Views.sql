Select * from Inventory;
GO

/*Creating a simple view that will show items that might need to be restocked before we can continue our work.*/
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