create database CarRental
use CarRental
create table admin(
Username nvarchar(40) constraint pk_admin primary key,
Password nvarchar(25) 
)

create table Customer(
Customerid int constraint pk_customer primary key,
CustomerName nvarchar(30),
mail nvarchar(40),
Password nvarchar(25),
LoyaltyPoints int
)

create table Car(
Carid int constraint pk_Car primary key,
Carname nvarchar(40),
CarType nvarchar(40),
PerDayCharge int,
ChargePerKm int,
Available nvarchar(10)
)

create table CarRent(
RentId int constraint pk_rent primary key,
CarId int constraint fk_rentcar foreign key references Car(Carid),
CustomerId int constraint fk_rentCustomer foreign key references Customer(Customerid),
RentOrderDate Date,
ReturnOrderDate date,
OdoReading int,
ReturnOdoReading int,
Licensenumber int
)

insert into admin values('Pratibha@gmail.com', '1234@pass')
