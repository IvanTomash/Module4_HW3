use AdventureWorks2022
--1
select * from Sales.Customer;
--2
select * from Sales.Store 
order by Sales.Store.Name;
--3
select top 10 * from HumanResources.Employee 
where HumanResources.Employee.BirthDate > '1989-09-28';
--4
select em.NationalIDNumber, em.LoginID, em.JobTitle from HumanResources.Employee as em 
where em.LoginID like '%0' 
order by em.JobTitle desc;
--5
select * from  Person.Person as person 
where person.ModifiedDate between '2008' and '2009' and person.MiddleName is not null and person.Title is null;
--6
select distinct dp.Name from HumanResources.Department as dp 
inner join HumanResources.EmployeeDepartmentHistory as edh on dp.DepartmentID = edh.DepartmentID;
--7
select COUNT(CommissionPct) from Sales.SalesPerson where CommissionPct > 0 group by TerritoryID;
--8
select * from HumanResources.Employee 
where HumanResources.Employee.VacationHours = (select MAX(HumanResources.Employee.VacationHours) from HumanResources.Employee);	
--9
select * from HumanResources.Employee as em 
where em.JobTitle  = 'Sales Representative' or em.JobTitle = 'Network Administrator' or em.JobTitle = 'Network Manager';
--10
select * from HumanResources.Employee as em 
left join Purchasing.PurchaseOrderHeader as poh on poh.EmployeeID = em.BusinessEntityID;
