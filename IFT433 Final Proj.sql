Use Master;

Drop DATABASE IFTProject;
GO
--Creating the DATABASE
CREATE DATABASE IFTProject;
GO
Use IFTProject;

--Creating the tables 
CREATE TABLE Employee (
  EmpID INT IDENTITY(1,1),
  FirstName VARCHAR (30),
  LastName VARCHAR (30),
  Position VARCHAR (15),
  Age INT,
  Salary MONEY,
  SS# INT,
  PRIMARY KEY (EmpID),
  CONSTRAINT Age CHECK (Age > 17 and SS# > 99999999)
);

CREATE TABLE Customer (
  CustID INT IDENTITY(1,1),
  FirstName VARCHAR (30),
  LastName VARCHAR (30),
  Address NVARCHAR (50),
  DateJoined DATE DEFAULT GETDATE(),
  PRIMARY KEY (CustID)
);

CREATE TABLE Sales (
  invoiceID INT IDENTITY(1,1),
  EmpID INT,
  CustID INT,
  SaleTime DateTime DEFAULT GETDATE(),
  PRIMARY KEY (invoiceID)
);

CREATE TABLE Supplier (
  SupplyID INT IDENTITY(1,1),
  Name VARCHAR (20) NOT NULL,
  StartDATE DATE,
  Address VARCHAR (20),
  Rep VARCHAR (20),
  PRIMARY KEY (SupplyID)
);

CREATE TABLE Inventory (
  InventoryID INT IDENTITY(1,1),
  ItemID INT NOT NULL,
  itemName nVARCHAR (40),
  Stock INT,
  ListPrice MONEY,
  Desciption VARCHAR (100),
  PRIMARY KEY (InventoryID)
 );
 
CREATE TABLE ingredient (
  ingredientID INT IDENTITY(1,1),
  ItemID INT,
  Measurement VARCHAR (20),
  Primary Key (ingredientID)
);

--Start Tables with FOREIGN KEYs
CREATE TABLE FoodItem (
  ItemID INT IDENTITY(1,1),
  InventoryID INT,
  RecipeID INT,
  DATEMade DATE,
  cusRating INT,
  PRIMARY KEY (ItemID),
  FOREIGN KEY (InventoryID) REFERENCES Inventory(InventoryID)
);

CREATE TABLE Purchase (
  PurchaseID INT IDENTITY(1,1),
  SupplyID INT,
  ItemID INT,
  Price MONEY,
  Qty INT,
  PRIMARY KEY (PurchaseID),
  FOREIGN KEY (SupplyID) REFERENCES Supplier(SupplyID)
);

CREATE TABLE Pay (
  PayID INT IDENTITY(1,1),
  PayPeriod INT,
  EmpID INT,
  hrsWrked decimal(5,2),
  PRIMARY KEY (PayID),
  FOREIGN KEY (EmpID) REFERENCES Employee(EmpID)
);

CREATE TABLE Recipe (
  RecipeID INT IDENTITY(1,1),
  ingredientID INT,
  DATECREATEd DATE,
  creatorID INT,
  Qty Varchar (20),
  PRIMARY KEY (RecipeID),
  FOREIGN KEY (ingredientID) REFERENCES ingredient(IngredientID)
);

CREATE TABLE StoreSaleLineItem (
  StoreSaleID INT IDENTITY(1,1),
  invoiceID INT,
  InventoryID INT,
  SalePice Decimal(7,2),
  Quantity INT,
  PRIMARY KEY (StoreSaleID),
  FOREIGN KEY (invoiceID) REFERENCES Sales(invoiceID),
  FOREIGN KEY (inventoryID) REFERENCES Inventory(inventoryID)
);

