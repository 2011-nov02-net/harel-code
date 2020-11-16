create schema w3;
go 

CREATE TABLE w3.Customers
(
    ID INT NOT NULL PRIMARY KEY, 
    firstname NVARCHAR(50) NOT NULL,
    lastname NVARCHAR(50) NOT NULL,
    cardnumber int null CHECK (cardnumber > 99999999999999 and cardnumber < 100000000000000000)
);
GO

create table w3.Products
(
    ID INT NOT NULL PRIMARY KEY, 
    Name NVARCHAR(50) NOT NULL,
    Price MONEY NOT NULL
);
GO