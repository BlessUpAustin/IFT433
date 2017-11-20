Use IFTProject;

/*Updating the data in the Pay table because we need to alter the days which the pay periods are set to were all the same
*/

Begin Tran
Update Pay
Set Start_Date = '10/16/2017',
	End_Date = '10/29/2017'
Where PayID > 6 And PayID < 13;

Update Pay
Set Start_Date = '10/01/2017',
	End_Date = '10/15/2017'
Where PayID > 12; 
Select * from pay;

Commit Tran