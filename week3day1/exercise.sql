create schema w3;
go 

CREATE TABLE w3.Customers
(
    ID INT NOT NULL PRIMARY KEY, 
    firstname NVARCHAR(50) NOT NULL,
    lastname NVARCHAR(50) NOT NULL,
    cardnumber bigint null
);
GO

create table w3.Products
(
    ID INT NOT NULL PRIMARY KEY, 
    Name NVARCHAR(50) NOT NULL,
    Price MONEY NOT NULL
);
GO

create table w3.Orders
(
    ID INT NOT NULL, 
    productid int not null FOREIGN key REFERENCES w3.Products(id),
    customerid int not null FOREIGN key REFERENCES w3.Customers(id)
);
GO

insert into w3.Products
(ID, Name, Price)
VALUES
(1, 'orange', 5), (2, 'apple', 3), (3, 'persimmon', 4);
GO

insert into w3.customers
(ID, firstname, lastname, cardnumber)
VALUES
(1, 'john', 'smith', null), (2, 'john', 'doe', null), (3, 'abraham', 'lincon', null );
GO

insert into w3.orders
(ID, productid, customerid)
VALUES
(1, 1, 3), (2, 1, 2), (3, 3, 2 );
GO

insert into w3.products
(ID, name, price)
VALUES
(4, 'iPhone', 200);
GO

insert into w3.customers
(ID, firstname, lastname)
VALUES
(4, 'tina', 'smith');
GO

insert into w3.orders
(ID, productid, customerid)
VALUES
(4, 4, 4);
GO

select * from w3.orders
inner join w3.products on products.id = productid
where (customerid = 4);
GO

select sum(price)
from w3.orders
INNER JOIN w3.products on productid = orders.id
group by productid
having productid = 4;
GO

UPDATE w3.products
SET [price] = 250
WHERE id = 4;
GO
