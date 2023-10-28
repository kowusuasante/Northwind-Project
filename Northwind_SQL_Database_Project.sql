CREATE DATABASE NORTHWIND

USE NORTHWIND

CREATE TABLE CATEGORIES
(
 Category_ID INT IDENTITY NOT NULL,
 Category_Name NVARCHAR(15) NOT NULL,
 Description NTEXT NULL,
 Picture IMAGE,
 PRIMARY KEY (Category_ID)
 )

CREATE TABLE CUSTOMER_DEMOGRAPHICS
  (
   Customer_Type_ID NCHAR(10) NOT NULL,
   Customer_Desc NTEXT NULL
   PRIMARY KEY (Customer_Type_ID)
   )

CREATE TABLE CUSTOMERS
(
 Customer_ID NCHAR (5) NOT NULL,
 Company_Name NVARCHAR(40) NOT NULL,
 Contact_Name NVARCHAR(30) NULL,
 Contact_Title NVARCHAR(30) NULL,
 Address NVARCHAR(60),
 City NVARCHAR(15) NULL,
 Region NVARCHAR(15) NULL,
 Postal_Code NVARCHAR(10) NULL,
 Country NVARCHAR(15) NULL,
 Phone NVARCHAR(24) NULL,
 Fax NVARCHAR(24) NULL,
 PRIMARY KEY (Customer_ID)
 )

CREATE TABLE PRODUCTS
(
 Product_ID INT PRIMARY KEY NOT NULL,
 Product_Name NVARCHAR(50) NOT NULL,
 Supplier_ID INT FOREIGN KEY REFERENCES SUPPLIERS(Supplier_ID),
 Category_ID INT FOREIGN KEY REFERENCES CATEGORIES(Category_ID),
 Quantity_Per_Unit NVARCHAR,
 Unit_Price DECIMAL (10,2),
 Units_In_Stock SMALLINT NULL,
 Units_On_Order SMALLINT NULL,
 Reorder_Level SMALLINT NULL,
 Discontinued SMALLINT NULL,
 )

 CREATE TABLE REGION 
 (
  Region_ID INT NOT NULL,
  Region_Description NCHAR(50) NOT NULL,
  PRIMARY KEY (Region_ID)
  )

   CREATE TABLE SHIPPERS
 (
  Shipper_ID INT IDENTITY NOT NULL,
  Company_name NVARCHAR(40) NOT NULL,
  Phone NVARCHAR(40) NULL,
  PRIMARY KEY (Shipper_ID)
  )

 CREATE TABLE SUPPLIERS
 (
  Supplier_ID INT PRIMARY KEY NOT NULL,
  Company_Name NVARCHAR(40) NULL,
  Contact_Name NVARCHAR(30) NULL,
  Contact_Title NVARCHAR(30) NULL,
  Address NVARCHAR(60) NULL,
  City NVARCHAR(15) NULL,
  Region NVARCHAR(15) NULL,
  Postal_Code NVARCHAR(10) NULL,
  Country NVARCHAR(15) NULL,
  Phone NVARCHAR(24) NULL,
  Fax NVARCHAR(24) NULL,
  Homepage NVARCHAR(100) NULL,
  )

  CREATE TABLE US_STATES
  (
   State_ID INT NOT NULL,
   State_Name NCHAR(25) NULL,
   State_Abbr NCHAR(2) NULL,
   State_Region NCHAR(7) NULL,
   PRIMARY KEY (State_ID)
   )

  CREATE TABLE ORDER_DETAILS
  (
   Order_ID INT  FOREIGN KEY REFERENCES ORDERS(Order_ID) NOT NULL,
   Product_ID INT FOREIGN KEY REFERENCES PRODUCTS(Product_ID) NOT NULL,
   Unit_Price INT NOT NULL,
   Quantity SMALLINT NOT NULL,
   Discount REAL NOT NULL,
   PRIMARY KEY (Order_ID,Product_ID)
   )

 CREATE TABLE CUSTOMER_CUSTOMER_DEMO
 (
  Customer_ID NCHAR(5) FOREIGN KEY REFERENCES CUSTOMERS (Customer_ID) NOT NULL,
  Customer_Type_ID NCHAR(10) FOREIGN KEY REFERENCES CUSTOMER_DEMOGRAPHICS (Customer_Type_ID) NOT NULL,
  PRIMARY KEY (Customer_ID,Customer_Type_ID)
  )


   CREATE TABLE ORDERS
(
 Order_ID INT IDENTITY NOT NULL,
 Customer_ID NCHAR(5) NULL,
 Employee_ID INT NULL,
 Order_Date DATE NULL,
 Required_Date DATE NULL,
 Shipped_Date DATE NULL,
 Ship_Via INT NULL,
 Freight INT NULL,
 Ship_Name NVARCHAR(40) NULL,
 Ship_Address NVARCHAR(60) NULL,
 Ship_City NVARCHAR(15) NULL,
 Ship_Region NVARCHAR(15) NULL,
 Ship_Postal_Code NVARCHAR(10), 
 Ship_Country NVARCHAR(15) NULL,
 PRIMARY KEY (Order_ID)
 )

CREATE TABLE EMPLOYEES
(
 Employee_ID INT IDENTITY NOT NULL,
 last_Name NVARCHAR(20) NOT NULL,
 First_Name NVARCHAR(10) NOT NULL,
 Title NVARCHAR(30) NULL,
 Title_Of_Courtesy NVARCHAR(30) NULL,
 Birth_Date DATE NULL,
 Hire_Date DATE NULL,
 Address NVARCHAR(60) NULL,
 City NVARCHAR(15) NULL,
 Region NVARCHAR(15) NULL,
 Postal_Code NVARCHAR(10) NULL,
 Country NVARCHAR(15),
 Home_Phone NVARCHAR(24) NULL,
 Extension NVARCHAR(4) NULL,
 Photo IMAGE NULL,
 Notes NTEXT NULL,
 Reports_To INT NULL,
 Photo_Path NVARCHAR(255) NULL,
 PRIMARY KEY (Employee_ID)
 )

 CREATE TABLE EMPLOYEE_TERRITORIES
 (
  Employee_ID INT FOREIGN KEY REFERENCES EMPLOYEES (Employee_ID) NOT NULL,
  Territory_ID NVARCHAR(20) FOREIGN KEY REFERENCES TERRITORIES(Territory_ID) NOT NULL,
  PRIMARY KEY (Employee_ID,Territory_ID)
  )

CREATE TABLE TERRITORIES
(
 Territory_ID NVARCHAR(20) NOT NULL,
 Territory_Description NCHAR(50) NOT NULL,
 Region_ID INT FOREIGN KEY REFERENCES REGION(Region_ID) NOT NULL,
 PRIMARY KEY (Territory_ID)
 )



INSERT INTO US_STATES(State_ID,State_Name,State_Abbr,State_Region)
VALUES
    (1, 'Alabama', 'AL', 'south'),
	(2, 'Alaska', 'AK', 'north'),
	(3, 'Arizona', 'AZ', 'west'),
	(4, 'Arkansas', 'AR', 'south'),
	(5, 'California', 'CA', 'west'),
	(6, 'Colorado', 'CO', 'west'),
	(7, 'Connecticut', 'CT', 'east'),
	(8, 'Delaware', 'DE', 'east'),
	(9, 'District of Columbia', 'DC', 'east'),
	(10, 'Florida', 'FL', 'south'),
	(11, 'Georgia', 'GA', 'south'),
	(12, 'Hawaii', 'HI', 'west'),
	(13, 'Idaho', 'ID', 'midwest'),
	(14, 'Illinois', 'IL', 'midwest'),
	(15, 'Indiana', 'IN', 'midwest'),
	(16, 'Iowa', 'IO', 'midwest'),
	(17, 'Kansas', 'KS', 'midwest'),
	(18, 'Kentucky', 'KY', 'south'),
	(19, 'Louisiana', 'LA', 'south'),
	(20, 'Maine', 'ME', 'north'),
	(21, 'Maryland', 'MD', 'east'),
	(22, 'Massachusetts', 'MA', 'north'),
	(23, 'Michigan', 'MI', 'north'),
	(24, 'Minnesota', 'MN', 'north'),
	(25, 'Mississippi', 'MS', 'south'),
	(26, 'Missouri', 'MO', 'south'),
	(27, 'Montana', 'MT', 'west'),
	(28, 'Nebraska', 'NE', 'midwest'),
	(29, 'Nevada', 'NV', 'west'),
	(30, 'New Hampshire', 'NH', 'east'),
	(31, 'New Jersey', 'NJ', 'east'),
	(32, 'New Mexico', 'NM', 'west'),
	(33, 'New York', 'NY', 'east'),
	(34, 'North Carolina', 'NC', 'east'),
	(35, 'North Dakota', 'ND', 'midwest'),
	(36, 'Ohio', 'OH', 'midwest'),
	(37, 'Oklahoma', 'OK', 'midwest'),
	(38, 'Oregon', 'OR', 'west'),
	(39, 'Pennsylvania', 'PA', 'east'),
	(40, 'Rhode Island', 'RI', 'east'),
	(41, 'South Carolina', 'SC', 'east'),
	(42, 'South Dakota', 'SD', 'midwest'),
	(43, 'Tennessee', 'TN', 'midwest'),
	(44, 'Texas', 'TX', 'west'),
	(45, 'Utah', 'UT', 'west'),
	(46, 'Vermont', 'VT', 'east'),
	(47, 'Virginia', 'VA', 'east'),
	(48, 'Washington', 'WA', 'west'),
	(49, 'West Virginia', 'WV', 'south'),
	(50, 'Wisconsin', 'WI', 'midwest'),
	(51, 'Wyoming', 'WY', 'west')


INSERT INTO SUPPLIERS(Supplier_ID,Company_Name,Contact_Name,Contact_Title,Address,City,Region,Postal_Code,Country,Phone,Fax,Homepage)
VALUES
	(001,'Exotic Liquids', 'Charlotte Cooper', 'Purchasing Manager', '49 Gilbert St.', 'London', NULL, 'EC1 4SD', 'UK', '(171) 555-2222', NULL, NULL),
	(002,'New Orleans Cajun Delights', 'Shelley Burke', 'Order Administrator', 'P.O. Box 78934', 'New Orleans', 'LA', '70117', 'USA', '(100) 555-4822', NULL, '#CAJUN.HTM#'),
	(003,'Grandma Kelly''s Homestead', 'Regina Murphy', 'Sales Representative', '707 Oxford Rd.', 'Ann Arbor', 'MI', '48104', 'USA', '(313) 555-5735', '(313) 555-3349', NULL),
	(004,'Tokyo Traders', 'Yoshi Nagase', 'Marketing Manager', '9-8 Sekimai Musashino-shi', 'Tokyo', NULL, '100', 'Japan', '(03) 3555-5011', NULL, NULL),
	(005,'Cooperativa de Quesos ''Las Cabras''', 'Antonio del Valle Saavedra', 'Export Administrator', 'Calle del Rosal 4', 'Oviedo', 'Asturias', '33007', 'Spain', '(98) 598 76 54', NULL, NULL),
	(006,'Mayumi''s', 'Mayumi Ohno', 'Marketing Representative', '92 Setsuko Chuo-ku', 'Osaka', NULL, '545', 'Japan', '(06) 431-7877', NULL, 'Mayumi''s (on the World Wide Web)#http://www.microsoft.com/accessdev/sampleapps/mayumi.htm#'),
	(007,'Pavlova, Ltd.', 'Ian Devling', 'Marketing Manager', '74 Rose St. Moonie Ponds', 'Melbourne', 'Victoria', '3058', 'Australia', '(03) 444-2343', '(03) 444-6588', NULL),
	(008,'Specialty Biscuits, Ltd.', 'Peter Wilson', 'Sales Representative', '29 King''s Way', 'Manchester', NULL, 'M14 GSD', 'UK', '(161) 555-4448', NULL, NULL),
	(009,'PB Knäckebröd AB', 'Lars Peterson', 'Sales Agent', 'Kaloadagatan 13', 'Göteborg', NULL, 'S-345 67', 'Sweden', '031-987 65 43', '031-987 65 91', NULL),
	(010, 'Refrescos Americanas LTDA', 'Carlos Diaz', 'Marketing Manager', 'Av. das Americanas 12.890', 'Sao Paulo', NULL, '5442', 'Brazil', '(11) 555 4640', NULL, NULL),
	(011, 'Heli Süßwaren GmbH & Co. KG', 'Petra Winkler', 'Sales Manager', 'Tiergartenstraße 5', 'Berlin', NULL, '10785', 'Germany', '(010) 9984510', NULL, NULL),
	(012, 'Plutzer Lebensmittelgroßmärkte AG', 'Martin Bein', 'International Marketing Mgr.', 'Bogenallee 51', 'Frankfurt', NULL, '60439', 'Germany', '(069) 992755', NULL, 'Plutzer (on the World Wide Web)#http://www.microsoft.com/accessdev/sampleapps/plutzer.htm#'),
	(013, 'Nord-Ost-Fisch Handelsgesellschaft mbH', 'Sven Petersen', 'Coordinator Foreign Markets', 'Frahmredder 112a', 'Cuxhaven', NULL, '27478', 'Germany', '(04721) 8713', '(04721) 8714', NULL),
	(014, 'Formaggi Fortini s.r.l.', 'Elio Rossi', 'Sales Representative', 'Viale Dante, 75', 'Ravenna', NULL, '48100', 'Italy', '(0544) 60323', '(0544) 60603', '#FORMAGGI.HTM#'),
	(015, 'Norske Meierier', 'Beate Vileid', 'Marketing Manager', 'Hatlevegen 5', 'Sandvika', NULL, '1320', 'Norway', '(0)2-953010', NULL, NULL),
	(016, 'Bigfoot Breweries', 'Cheryl Saylor', 'Regional Account Rep.', '3400 - 8th Avenue Suite 210', 'Bend', 'OR', '97101', 'USA', '(503) 555-9931', NULL, NULL),
	(017, 'Svensk Sjöföda AB', 'Michael Björn', 'Sales Representative', 'Brovallavägen 231', 'Stockholm', NULL, 'S-123 45', 'Sweden', '08-123 45 67', NULL, NULL),
	(018, 'Aux joyeux ecclésiastiques', 'Guylène Nodier', 'Sales Manager', '203, Rue des Francs-Bourgeois', 'Paris', NULL, '75004', 'France', '(1) 03.83.00.68', '(1) 03.83.00.62', NULL),
	(019, 'New England Seafood Cannery', 'Robb Merchant', 'Wholesale Account Agent', 'Order Processing Dept. 2100 Paul Revere Blvd.', 'Boston', 'MA', '02134', 'USA', '(617) 555-3267', '(617) 555-3389', NULL),
	(020, 'Leka Trading', 'Chandra Leka', 'Owner', '471 Serangoon Loop, Suite #402', 'Singapore', NULL, '0512', 'Singapore', '555-8787', NULL, NULL),
	(021, 'Lyngbysild', 'Niels Petersen', 'Sales Manager', 'Lyngbysild Fiskebakken 10', 'Lyngby', NULL, '2800', 'Denmark', '43844108', '43844115', NULL),
	(022, 'Zaanse Snoepfabriek', 'Dirk Luchte', 'Accounting Manager', 'Verkoop Rijnweg 22', 'Zaandam', NULL, '9999 ZZ', 'Netherlands', '(12345) 1212', '(12345) 1210', NULL),
	(023, 'Karkki Oy', 'Anne Heikkonen', 'Product Manager', 'Valtakatu 12', 'Lappeenranta', NULL, '53120', 'Finland', '(953) 10956', NULL, NULL),
	(024, 'G''day, Mate', 'Wendy Mackenzie', 'Sales Representative', '170 Prince Edward Parade Hunter''s Hill', 'Sydney', 'NSW', '2042', 'Australia', '(02) 555-5914', '(02) 555-4873', 'G''day Mate (on the World Wide Web)#http://www.microsoft.com/accessdev/sampleapps/gdaymate.htm#'),
	(025, 'Ma Maison', 'Jean-Guy Lauzon', 'Marketing Manager', '2960 Rue St. Laurent', 'Montréal', 'Québec', 'H1J 1C3', 'Canada', '(514) 555-9022', NULL, NULL),
	(026, 'Pasta Buttini s.r.l.', 'Giovanni Giudici', 'Order Administrator', 'Via dei Gelsomini, 153', 'Salerno', NULL, '84100', 'Italy', '(089) 6547665', '(089) 6547667', NULL),
	(027, 'Escargots Nouveaux', 'Marie Delamare', 'Sales Manager', '22, rue H. Voiron', 'Montceau', NULL, '71300', 'France', '85.57.00.07', NULL, NULL),
	(028, 'Gai pâturage', 'Eliane Noz', 'Sales Representative', 'Bat. B 3, rue des Alpes', 'Annecy', NULL, '74000', 'France', '38.76.98.06', '38.76.98.58', NULL),
	(029, 'Forêts d''érables', 'Chantal Goulet', 'Accounting Manager', '148 rue Chasseur', 'Ste-Hyacinthe', 'Québec', 'J2S 7S8', 'Canada', '(514) 555-2955', '(514) 555-2921', NULL);

INSERT INTO SHIPPERS(Company_name,Phone) 
VALUES
		('Speedy Express', '(503) 555-9831'),
		('United Package', '(503) 555-3199'),
		('Federal Shipping', '(503) 555-9931'),
		('Alliance Shippers', '1-800-222-0451'),
		('UPS', '1-800-782-7892'),
		('DHL', '1-800-225-5345');



--DROP DATABASE NORTHWIND

BULK INSERT  dbo.CATEGORIES
FROM 'C:\Users\kwabe\Documents\DA_SQL\SQL Project Data Files\Categories.csv'
WITH
(
        FORMAT='CSV',
        FIRSTROW=2
)

BULK INSERT  dbo.CUSTOMER_DEMOGRAPHICS
FROM 'C:\Users\kwabe\Documents\DA_SQL\SQL Project Data Files\CustomerDemographics.csv'
WITH
(
        FORMAT='CSV',
        FIRSTROW=2
)

BULK INSERT  dbo.CUSTOMERS
FROM 'C:\Users\kwabe\Documents\DA_SQL\SQL Project Data Files\Customers.csv'
WITH
(
        FORMAT='CSV',
        FIRSTROW=2
)

BULK INSERT  dbo.EMPLOYEES
FROM 'C:\Users\kwabe\Documents\DA_SQL\SQL Project Data Files\Employees.csv'
WITH
(
        FORMAT='CSV',
        FIRSTROW=2
)

BULK INSERT  dbo.EMPLOYEE_TERRITORIES
FROM 'C:\Users\kwabe\Documents\DA_SQL\SQL Project Data Files\EmployeeTerritories.csv'
WITH
(
        FORMAT='CSV',
        FIRSTROW=2
)

BULK INSERT  dbo.ORDER_DETAILS
FROM 'C:\Users\kwabe\Documents\DA_SQL\SQL Project Data Files\Order_Details.csv'
WITH
(
        FORMAT='CSV',
        FIRSTROW=2
)

ALTER TABLE ORDER_DETAILS
ALTER COLUMN Unit_price MONEY NOT NULL


BULK INSERT  dbo.ORDERS
FROM 'C:\Users\kwabe\Documents\DA_SQL\SQL Project Data Files\Orders.csv'
WITH
(
        FORMAT='CSV',
        FIRSTROW=2
)

ALTER TABLE ORDERS
ALTER COLUMN Freight MONEY NULL

BULK INSERT  dbo.PRODUCTS
FROM 'C:\Users\kwabe\Documents\DA_SQL\SQL Project Data Files\Products.csv'
WITH
(
        FORMAT='CSV',
        FIRSTROW=2
)

ALTER TABLE PRODUCTS
ALTER COLUMN Quantity_Per_Unit NVARCHAR(20) NULL


BULK INSERT  dbo.REGION
FROM 'C:\Users\kwabe\Documents\DA_SQL\SQL Project Data Files\Region.csv'
WITH
(
        FORMAT='CSV',
        FIRSTROW=2
)

BULK INSERT  dbo.TERRITORIES
FROM 'C:\Users\kwabe\Documents\DA_SQL\SQL Project Data Files\Territories.csv'
WITH
(
        FORMAT='CSV',
        FIRSTROW=2
)


ALTER TABLE SUPPLIERS
ALTER COLUMN Supplier_ID INT IDENTITY 

USE NORTHWIND

SELECT * FROM SUPPLIERS

--1. Retrieve all suppliers from the 'USA' whose city starts with 'N' or has 'o' in the second letter.

SELECT * FROM SUPPLIERS
WHERE Country = 'USA' AND (City LIKE 'N%'or City LIKE '_O')

--2. •	Find suppliers whose company name contains 'Liquids' or has 'o' in the third letter.

SELECT * FROM SUPPLIERS 
WHERE Company_Name LIKE '%Liquids%' or Company_Name LIKE '__O%'

--3. Write a code to extract customerid, address and phone  where the phone number has open and close brackets and the address starts with C/

SELECT Customer_ID, Address, Phone
FROM CUSTOMERS
WHERE Phone LIKE '%[()]%' AND Address LIKE 'C/%'

--4. Retrieve suppliers whose contact name ends with 'i' or has 'a' in the third letter of their company name.

SELECT * FROM SUPPLIERS 
WHERE Contact_Name LIKE '%i' or Contact_Name LIKE '__a%'

--5. Find suppliers whose city starts with 'M'or has 'Land' in their company name. [0]

SELECT * FROM SUPPLIERS 
WHERE City LIKE 'M%' and Company_Name LIKE '%Land%'

--6. Find suppliers whose company name contains 'Ltd' and the contact name contains 'a'.

SELECT * FROM SUPPLIERS
WHERE Company_Name LIKE '%Ltd%' and Contact_Name like '%a%'

--7. Find suppliers with NULL fax numbers and whose company name contains 'Delights' [0]

SELECT * FROM SUPPLIERS
WHERE Fax IS NULL AND Company_Name LIKE 'Delights'

--8. Get suppliers with NOT NULL postal codes and whose city contains 'er'.

SELECT * FROM SUPPLIERS
WHERE Postal_Code IS NOT NULL 
AND City LIKE '%er%'

--9. Get suppliers with NOT NULL phone numbers and whose city starts with 'A'.

SELECT * FROM SUPPLIERS 
WHERE Phone IS NOT NULL 
AND City LIKE 'A%'

--10. Retrieve suppliers with NULL homepage and whose company name contains 'GmbH'

SELECT * FROM SUPPLIERS
WHERE Homepage IS NULL
AND Company_Name LIKE '%GmbH%'

--11. Extract Companyname and phone number for all customers whose phone numbers has open and close brackets. [56 ROWS]

SELECT Company_Name,Phone
FROM CUSTOMERS
WHERE Phone LIKE '%[()]%'

--12. Here's the SQL code to extract customer details where the phone number has more than one dot or the address starts with 'Av'

SELECT * FROM 
CUSTOMERS
WHERE Phone LIKE '%.%.%'
AND Address LIKE '%Av%'

--PART TWO (Logical Operator using Orders Table)

--1. For all Orders shipped from USA and shipvia is 1, extract all CustomerID, RequiredDate,ShippedDate,ShipCountry,Freight, and ShipVia from orders for orders where Freight is 100 or more

SELECT * FROM 
(SELECT o.Customer_ID, o.Required_Date, o.Shipped_Date, o.Ship_Country, o.Freight, o.Ship_Via
FROM ORDERS o
WHERE O.Ship_Country = 'USA' AND o.Ship_Via = 1) sub
WHERE Freight >= 100

--2. Extract all rows for all orders where the orderdate is after 1996 and Shipvia is not 1, and the freight is between 50 and 100

SELECT * FROM
(SELECT * FROM ORDERS
WHERE Order_Date > '1996-12-31'
and Ship_Via != 1) sub
WHERE Freight between 50 and 100

--3. How many orders shipped from USA from an address that starts with 187 were shipped before 1997?

SELECT * FROM
(SELECT * FROM ORDERS
WHERE Ship_Country = 'USA' AND Ship_Address LIKE '187%') sub
WHERE Shipped_Date < '1997-01-01'

--4. How many orders shipped or ordered in 1997, excluding orders shipped from USA, Portugal or Ireland were not shipped via 3?

SELECT * FROM
(SELECT *FROM orders
WHERE (YEAR(shipped_date) = '1997' OR YEAR(order_date) = '1997')
and Ship_Country not in ('USA','Portugal','Ireland')) sub
where Ship_Via != 3

--5. How many products are sold in bottles (use products table)

SELECT * from PRODUCTS
WHERE Quantity_Per_Unit LIKE '%bottle%'