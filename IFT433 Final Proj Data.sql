-- Begin adding data to tables
Use IFTProject;
--Customer Data
/*Created a database of current customers that visit our bakery*/
Insert Into Customer Values
	('Vincent', 'Li', '1234 Place Pl.', Getdate()),
	('Thibaut', 'Henkens', '31014 Portage Road', GetDate()),
	('Ema', 'Woolley', '34 Hovde Junction', GetDate()),
	('Alika', 'Elix', '60662 Randy Circle', GetDate()),
	('Carola', 'Willment', '81082 Acker Parkway', GetDate()),
	('Elle', 'Stable', '901 Lawn Junction', GetDate()),
	('Bel', 'Finnemore', '3 Shopko Alley', GetDate()),
	('Ursuline', 'Lochran', '4 2nd Place', GetDate()),
	('Caesar', 'Mottershead', '111 Portage Terrace', GetDate()),
	('Jemimah', 'Siberry', '0 Kim Street', GetDate()),
	('Puff', 'Watling', '0462 Reinke Road', GetDate()),
	('Temple', 'Draper', '50 Delaware Place', GetDate()),
	('Harmony', 'Gheorghe', '455 Katie Road', GetDate()),
	('Lauritz', 'Gumery', '919 Clarendon Avenue', GetDate()),
	('Robbie', 'Herrema', '81398 Mallory Park', GetDate()),
	('Ike', 'Urion', '3 Colorado Avenue', GetDate()),
	('Hyacinthia', 'Fabbro', '1 Lyons Hill', GetDate()),
	('Hyacinth', 'Ewan', '93931 Porter Trail', GetDate()),
	('Almira', 'Keller', '8 Browning Terrace', GetDate()),
	('Emory', 'Epple', '8971 6th Hill', GetDate()),
	('Antone', 'Fransman', '6 David Lane', GetDate()),
	('Darline', 'Condit', '005 Gale Way', GetDate()),
	('Inna', 'Cronin', '41 Mayer Alley', GetDate()),
	('Eldin', 'Walkling', '8 Pierstorff Avenue', GetDate()),
	('Jodee', 'Terese', '6 Anthes Crossing', GetDate()),
	('Gawain', 'Angeau', '4 Artisan Place', GetDate()),
	('Kilian', 'Byard', '2460 Bluestem Avenue', GetDate()),
	('Frank', 'Dumberrill', '41705 Banding Parkway', GetDate()),
	('Edgard', 'Durram', '4527 Upham Junction', GetDate()),
	('Betta', 'Dumbrall', '54859 Nobel Lane', GetDate()),
	('Shaw', 'Schwander', '2076 Judy Road', GetDate()),
	('Marco', 'Plessing', '6084 Rigney Hill', GetDate()),
	('Sianna', 'Pergens', '3991 Kingsford Circle', GetDate()),
	('Bastien', 'Curmi', '975 Forster Point', GetDate()),
	('Anthia', 'Leitch', '47982 Hanover Parkway', GetDate()),
	('Jordan', 'Redington', '43 Corscot Parkway', GetDate()),
	('Lavina', 'Lack', '604 Wayridge Lane', GetDate()),
	('Lucky', 'Zimmer', '0 Shopko Circle', GetDate()),
	('Athena', 'Balwin', '44 Ramsey Way', GetDate()),
	('Alvinia', 'Pay', '0675 Hooker Street', GetDate()),
	('Paddie', 'Belhome', '18343 Acker Way', GetDate()),
	('Seymour', 'Kingwell', '38 Heffernan Lane', GetDate()),
	('Melania', 'Eberz', '69808 Erie Hill', GetDate()),
	('Margarethe', 'Gian', '61058 Center Crossing', GetDate()),
	('Megan', 'Onion', '8 Heffernan Avenue', GetDate()),
	('Jareb', 'Augar', '6 Harbort Pass', GetDate()),
	('Sissie', 'Grafhom', '053 Killdeer Center', GetDate()),
	('Brockie', 'Blackadder', '38244 Orin Road', GetDate())
;
Select * from Customer;

--Employee Data
--Our company is small so we've only got a few people on board with us
Select * from Employee;
Insert into Employee Values
	('Hank', 'Fire', 'Owner', 21, 100000, 345121234);
Insert into Employee Values
	('Petal', 'Jam', 'Manager', 19, 20000, 235911919),
	('Manny', 'Packer', 'Sales1', 18,  8000, 102837234),
	('Eric', 'Dam', 'Sales1', 23, 8000, 323009999),
	('Nate', 'Hampster', 'Accountant', 20, 20000, 123456789)
;

--Thought I could use a few more employees 
Insert into Employee Values
	('Zach', 'Rivers', 'Sales1', 20, 12000,983475983),
	('Harper', 'Collins', 'Sales1', 29, 10000, 654379393),
	('David', 'Spade', 'Sales2', 18, 8000,101295656)
	;
-- Must add constraint to age
Alter table employee
Add Check (Age < 100);

--Inventory Data --Don't need the ItemID
--During our database creation we realized that there can be some change in our columns
Select * from Inventory;

Alter Table inventory
Drop column ItemID;
GO

--Test inventory
Insert Into Inventory Values
	('Biscotti', 5, 12.99, 'This is a biscuit'),
	('Danish', 99, 23.55,'Convallis Limited'),
	('Muffins', 80, 22.57,'Id Sapien Foundation'),
	('Scones', 82, 23.22,'Fusce Foundation'),
	('Turnovers', 20, 24.77,'Quisque Ac Libero Corp.'),
	('Palm Leaves', 63, 12.46,'Rutrum LLC'),
	('Cinnamon Rolls', 91, 13.47,'Elit Aliquam Auctor Inc.'),
	('Chocolate Mousse', 64, 19.13,'Odio Aliquam Vulputate Consulting'),
	('Double Mousse', 65, 11.77,'Est Foundation'),
	('Sesame Twist', 58, 7.50,'Id Mollis Nec Institute'),
	('Chocolate Chip Cookie', 78, 21.65,'Pede Nonummy Ut Institute'),
	('Snicker Doodles', 53, 6.76,'Ut Company'),
	('Butter Cookies', 99, 15.72,'Integer Id Magna Inc.'),
	('Apple Pie', 62, 10.41,'Nec LLC'),
	('Berry Pie', 56, 7.15,'Eros Inc.'),
	('Peach Pie', 88, 19.45,'Sed Corporation'),
	('Cherry Pie', 88, 17.75,'Fringilla Cursus Purus LLP'),
	('Cheese Cake', 32, 2.55,'Lectus Rutrum Urna Associates'),
	('Jerry Garcia', 60, 6.30,'Tortor Limited'),
	('Pumpkin Pie', 43, 13.11,'Nulla Ltd'),
	('Coconut Cream Pie', 79, 15.37,'Odio Vel Est LLC'),
	('Fresh Fruit Tart', 80, 15.09,'Commodo Ipsum Incorporated'),
	('Lemon Lust Tart', 31, 17.84,'Velit Sed Malesuada Company'),
	('Apple Almond Tart', 66, 8.49,'Ipsum Primis Company'),
	('New York Cheesecake', 100, 21.70,'Sed Eu Nibh Consulting'),
	('Cupcakes SM', 85, 1.39,'Dictum Magna Institute'),
	('Cupcakes LG', 51, 10.57,'Nibh Corp.'),
	('Coffee Cake', 38, 6.08,'Malesuada Company'),
	('Bundt Cakes', 76, 3.64,'Eu Consulting'),
	('Loaf Cakes', 67, 4.67,'Fermentum Arcu Vestibulum PC')
;

Insert into Inventory Values 
	('Sugar', 10, 14.99, 'Ingredient');

--Adding our suppliers into the database
--We've only got a few suppliers that we buy from.
Select * from Supplier;

Insert Into Supplier Values
	('Supplier1', GetDate(), '2460 Red Avenue', 'James Karry');
Insert into Supplier Values 
	('Supplier2', GetDate(), '2460 Blue Avenue', 'Katy Perry'),
	('Supplier3', GetDate(), '1212 Yellow Dr.', 'Card Mat')
;

Select * from FoodItem;
Insert into FoodItem Values
	(1, 1, GetDate(), 3.6);

/*We've got a big list of Items in our inventory but it is further
subcategorized as food items here*/
INSERT INTO FoodItem VALUES
	(2,38,'2017-04-27 16:21:29',2),
	(3,56,'2017-02-08 04:51:40',5),
	(4,31,'2017-03-10 21:36:30',2),
	(5,59,'2017-02-19 06:53:06',2),
	(6,41,'2017-04-27 12:26:07',1),
	(7,20,'2017-11-20 22:36:59',1),
	(8,76,'2017-04-18 23:46:24',2),
	(9,10,'2018-11-10 11:55:06',1),
	(10,32,'2018-10-26 01:12:17',1)
;
GO
/*Here are the ingredients to the said FoodItems. It's documented here because we would like to know
when we need to stock up on ingredients for our recipes*/
Select * from ingredient;
Select * from Inventory;

Alter Table ingredient
	Add RefFoodItem Int;
GO

Insert into ingredient Values
	(31, '15g', 1);
Insert Into ingredient Values
	(15, '10 Cup', 1);

--Recipe data insert
/*We put the ingredient and Fooditems together here. When we would like to check on how to make a Food item,
we check here and reference the ingredient list to see if we need to restock*/
Select * from Recipe;

Insert into Recipe Values
	(1, GETDATE(), 1, '10g');
Insert Into Recipe Values
	(2, GETDATE(), 1, '15g');

Select * from pay;
Select * from Employee;
Alter Table Pay
	Add PayRate Money;
GO

--The Pay table probably needs days to associate with the payperiod
Alter Table Pay
	Add Start_Date Date,
	End_Date Date;
GO

--Inserting Data for the pay.
Insert Into Pay Values
	(1, 1, 40, 52.08, '10/30/2017',' 11/13/2017'),
	(1, 2, 24, 10.41, '10/30/2017',' 11/13/2017'),
	(1, 3, 24, 4.16, '10/30/2017',' 11/13/2017'),
	(1, 4, 20, 4.16, '10/30/2017',' 11/13/2017'),
	(1, 5, 10, 10.41, '10/30/2017',' 11/13/2017')
;
Insert into Pay Values
	(1, 8, 15, 4.16, '10/30/2017',' 11/13/2017');

/*Added the start_date and end_date so i have to modify the table here */

Update Pay
Set End_date = '11-13-2017'
Where EmpID = 1 And EmpID < 6;

Update Pay
Set Start_Date = '10-30-2017'
Where EmpID = 1 OR EmpID < 6;


Select * from Sales;
Insert into Sales Values
	(3, 1, GetDate());
Insert Into Sales Values
	(3, 2, GetDate()),
	(3,4, GetDate()),
	(3,10, GetDate()),
	(3,15, GetDate()),
	(3,7, GetDate())
;

Select * from Sales;
Select * From StoreSaleLineItem;
Select * from Inventory;

Insert Into StoreSaleLineItem Values
	(1, 1, 12.99, 2);
Insert Into StoreSaleLineItem Values
	(1, 2, 23.55, 1),
	(1, 3, 22.05, 1),
	(1, 4, 23.22, 1)
;
--Adding a second invoice number
Insert into StoreSaleLineItem Values
	(2, 25, 21.70, 2),
	(2, 27, 10.57, 1),
	(2, 30, 4.67, 4)
;

Select * from Purchase;
SElect * from Supplier;

Insert into Purchase Values
	(1, 31, 5.99, 5);

--Adding more data into the sales table
INSERT INTO Sales VALUES
	(7,42,'02-08-17'),
	(4,10,'11-17-17'),
	(7,20,'10-27-17'),
	(7,36,'01-19-17'),
	(1,28,'10-24-18'),
	(2,12,'05-08-17'),
	(7,48,'12-18-16'),
	(1,14,'09-17-17'),
	(3,6,'01-09-17'),
	(4,17,'10-17-18'),
	(5,36,'07-23-17'),
	(3,33,'10-16-18'),
	(2,32,'10-23-17'),
	(3,29,'05-07-17'),
	(2,45,'06-27-17'),
	(1,25,'05-07-17'),
	(7,14,'02-03-17'),
	(5,40,'05-25-17'),
	(4,35,'08-24-17'),
	(1,2,'11-25-16'),
	(8,1,'08-29-18'),
	(7,25,'05-31-18'),
	(8,24,'03-02-17'),
	(4,29,'05-05-17'),
	(3,4,'11-15-17'),
	(5,16,'01-20-17'),
	(1,1,'09-11-18'),
	(4,47,'09-23-18'),
	(7,16,'01-31-17'),
	(1,23,'08-26-17'),
	(8,5,'07-09-17'),
	(8,43,'08-10-18'),
	(5,48,'11-07-18'),
	(7,10,'11-21-16'),
	(3,5,'12-30-17'),
	(1,12,'05-12-18'),
	(7,27,'07-23-17'),
	(6,26,'04-07-17'),
	(7,26,'04-18-17'),
	(8,45,'07-18-17'),
	(6,28,'12-27-17'),
	(5,47,'12-08-16'),
	(4,40,'08-22-17'),
	(4,39,'03-21-17'),
	(6,30,'10-08-18'),
	(6,30,'05-02-17'),
	(6,12,'06-27-18'),
	(1,46,'09-08-18'),
	(8,45,'09-19-18'),
	(6,42,'03-07-18'),
	(6,24,'10-10-17'),
	(7,2,'06-14-17'),
	(7,40,'09-08-17'),
	(8,14,'08-02-18'),
	(6,11,'09-19-17'),
	(8,3,'08-25-17'),
	(2,10,'11-27-17'),
	(3,8,'02-28-18'),
	(5,10,'11-14-18'),
	(8,43,'07-17-17'),
	(8,22,'11-10-17'),
	(2,12,'12-02-17'),
	(6,14,'04-26-17'),
	(5,41,'09-14-18'),
	(8,22,'03-23-18'),
	(5,46,'04-04-18'),
	(2,30,'06-28-18'),
	(7,45,'09-12-18'),
	(2,4,'09-21-18'),
	(5,37,'07-06-17'),
	(7,10,'06-21-18'),
	(6,25,'10-11-18'),
	(6,18,'09-17-17'),
	(4,24,'02-28-18'),
	(5,40,'01-04-18'),
	(4,30,'05-20-17'),
	(8,26,'04-29-18'),
	(4,36,'02-18-18'),
	(2,14,'08-27-17'),
	(4,41,'10-14-17'),
	(2,16,'06-02-18'),
	(2,22,'02-14-18'),
	(7,24,'06-26-17'),
	(4,26,'02-14-17'),
	(3,16,'04-02-17'),
	(3,47,'07-26-17'),
	(2,42,'01-16-17'),
	(4,35,'01-05-18'),
	(6,31,'09-16-18'),
	(5,5,'12-30-17'),
	(7,40,'07-31-17'),
	(5,8,'01-31-18'),
	(6,11,'03-28-17'),
	(7,45,'05-23-18'),
	(5,14,'06-19-18'),
	(1,4,'09-07-17'),
	(8,47,'03-14-17'),
	(5,1,'03-28-17'),
	(2,41,'02-14-17'),
	(4,15,'02-19-18')
;

INSERT INTO StoreSaleLineItem VALUES
	(1, 27, 14.70, 6),
	(12, 28, 10.89, 4),
	(94, 7, 11.27, 9),
	(46, 3, 8.50, 9),
	(44, 7, 17.16, 6),
	(75, 26, 24.73, 10),
	(70, 8, 15.12, 10),
	(20, 29, 6.07, 1),
	(33, 21, 14.34, 6),
	(26, 5, 12.72, 9),
	(6, 23, 7.46, 9),
	(71, 6, 17.46, 8),
	(10, 10, 1.65, 8),
	(11, 16, 8.85, 5),
	(64, 30, 20.56, 9),
	(58, 23, 7.35, 4),
	(52, 19, 10.13, 5),
	(1, 14, 15.94, 9),
	(99, 17, 21.77, 10),
	(10, 25, 10.93, 4),
	(33, 24, 8.48, 10),
	(63, 11, 17.43, 4),
	(4, 29, 16.38, 9),
	(88, 13, 19.15, 9),
	(53, 11, 12.78, 4),
	(98, 8, 14.39, 3),
	(90, 5, 4.07, 4),
	(48, 9, 5.02, 9),
	(99, 9, 5.83, 4),
	(24, 27, 5.87, 4),
	(69, 17, 6.41, 4),
	(39, 20, 23.46, 2),
	(64, 15, 22.90, 7),
	(27, 13, 13.59, 4),
	(39, 7, 18.85, 8)
;

/*Filling out the other Tables */
Insert into Supplier Values
	('Everything Supplies', GetDate(), '9999 Everything Way', 'Rachel Booo'),
	('Sometime Supplies', GetDate(), '0001 Maybe Dr.', 'Larry Harry'),
	('Buy Moar Supplies', GetDate(), '1122 Here Place', 'Michael Moore'),
	('Hook Me Things', GetDate(), '1111 Derrick St', 'Alina	Mcelroy'),
	('Buy-Tech-Shop', Getdate(), '8475 Where Hr', 'Nakisha Freitas'),
	('Bakery Diamond', GetDate(), '19 Eaters St.', 'Hulk Smash'),
	('Good Supplies', GetDate(), '69 Sunshine Way', 'Black Canary'),
	('Black Sugar', GetDate(), '99 Balloon St', 'Rick Morty')
;

Insert into Employee values
	('Ashley', 'Smash', 'Junior Baker', 64, 10000, 235511919),
	('Liz', 'Lions', 'Line Baker', 22,  8000, 992837234),
	('Phil', 'Nike', 'Mascot', 31, 5000, 119921234)
;

Insert into Pay Values
	(2, 1, 40, 52.08, '10/30/2017',' 11/13/2017'),
	(2, 2, 24, 10.41, '10/30/2017',' 11/13/2017'),
	(2, 3, 24, 4.16, '10/30/2017',' 11/13/2017'),
	(2, 4, 20, 4.16, '10/30/2017',' 11/13/2017'),
	(2, 5, 10, 10.41, '10/30/2017',' 11/13/2017'),
	(3, 1, 40, 52.08, '10/30/2017',' 11/13/2017'),
	(3, 2, 24, 10.41, '10/30/2017',' 11/13/2017'),
	(3, 3, 24, 4.16, '10/30/2017',' 11/13/2017'),
	(3, 4, 20, 4.16, '10/30/2017',' 11/13/2017'),
	(3, 5, 10, 10.41, '10/30/2017',' 11/13/2017')
;
--Must adjust the dates the Pay Table. Done using alter
