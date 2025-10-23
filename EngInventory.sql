create database Inventory_Management
go 
use Inventory_Management
go
create table [User]
(
UserID        int primary key ,
Name          nvarchar(40) not null,
Password      nvarchar(30) not null,
Email       nvarchar(40)  unique not null,
Role        nvarchar(30) check(Role in ('Administrator','Stock Clerk'))
);
create table  Product
(
ProductID      int primary key identity(1,1) ,
Name           nvarchar(30),
Price          decimal ,
Quantity       int ,
Description    nvarchar(50),
SupplierID     int references Supplier(SupplierID)
);
create table Supplier 
(
SupplierID      int primary key,
Name            nvarchar(30),
Phone          nvarchar(30),
Email         nvarchar(30)
);
insert into [User] values (1,'sarah','sarah123','sarah@gmail.com','Administrator');
insert into [User] values (2,'soli','soli123','soli@gmail.com','Stock Clerk');
insert into Supplier values(1,'Basbosaa','0127854597','Basmalla@gmail');
insert into Supplier values(2,'Fozo','01278545667','Fayza@gmail');
insert into Supplier values(3,'Bibo','0127854597','Habiba@gmail');
insert into Product values('Sugare',40,500,'Good Quality',1);
insert into Product values('Tea',70,1200,'Good Quality',2);
insert into Product values('Meat',290,600,'Good Quality',3);
select*from Supplier;
select *from Product;
