# Northwind-Project
This project involves creating SQL tables and loading the tables with data.
The main idea is to replicate the Northwind database.
Below is the schema / diagram for the tables

![image](https://github.com/kowusuasante/Northwind-Project/assets/149259861/6f97fc5d-95bc-41b5-89c5-ef0f279b9b73)

1.	Create the database named ‘Northwnd’
2.	Use the diagram below to design and create the tables  
3.	Load data into the tables
a.	The following tables will be loaded manually with Insert statements (Shippers,Suppliers, and US_states). In the Shippers and Suppliers tables, auto generate the Shippers_id and supplier_id respectively. The values for these tables are provided in the appendix a.
b.	The data for the remaining tables as provided as csv files which should then be loaded into the tables.
c.	Data for Customer_demographics and Customer_demo are missing but the tables should be created.
4.	Perform the following:

Appendix a.
Us_states

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

Supplier

        ('Exotic Liquids', 'Charlotte Cooper', 'Purchasing Manager', '49 Gilbert St.', 'London', NULL, 'EC1 4SD', 'UK', '(171) 555-2222', NULL, NULL),
	('New Orleans Cajun Delights', 'Shelley Burke', 'Order Administrator', 'P.O. Box 78934', 'New Orleans', 'LA', '70117', 'USA', '(100) 555-4822', NULL, '#CAJUN.HTM#'),
	('Grandma Kelly''s Homestead', 'Regina Murphy', 'Sales Representative', '707 Oxford Rd.', 'Ann Arbor', 'MI', '48104', 'USA', '(313) 555-5735', '(313) 555-3349', NULL),
	('Tokyo Traders', 'Yoshi Nagase', 'Marketing Manager', '9-8 Sekimai Musashino-shi', 'Tokyo', NULL, '100', 'Japan', '(03) 3555-5011', NULL, NULL),
	('Cooperativa de Quesos ''Las Cabras''', 'Antonio del Valle Saavedra', 'Export Administrator', 'Calle del Rosal 4', 'Oviedo', 'Asturias', '33007', 'Spain', '(98) 598 76 54', NULL, NULL),
	('Mayumi''s', 'Mayumi Ohno', 'Marketing Representative', '92 Setsuko Chuo-ku', 'Osaka', NULL, '545', 'Japan', '(06) 431-7877', NULL, 'Mayumi''s (on the World Wide Web)#http://www.microsoft.com/accessdev/sampleapps/mayumi.htm#'),
	('Pavlova, Ltd.', 'Ian Devling', 'Marketing Manager', '74 Rose St. Moonie Ponds', 'Melbourne', 'Victoria', '3058', 'Australia', '(03) 444-2343', '(03) 444-6588', NULL),
	('Specialty Biscuits, Ltd.', 'Peter Wilson', 'Sales Representative', '29 King''s Way', 'Manchester', NULL, 'M14 GSD', 'UK', '(161) 555-4448', NULL, NULL),
	('PB Knäckebröd AB', 'Lars Peterson', 'Sales Agent', 'Kaloadagatan 13', 'Göteborg', NULL, 'S-345 67', 'Sweden', '031-987 65 43', '031-987 65 91', NULL),
	( 'Refrescos Americanas LTDA', 'Carlos Diaz', 'Marketing Manager', 'Av. das Americanas 12.890', 'Sao Paulo', NULL, '5442', 'Brazil', '(11) 555 4640', NULL, NULL),
	( 'Heli Süßwaren GmbH & Co. KG', 'Petra Winkler', 'Sales Manager', 'Tiergartenstraße 5', 'Berlin', NULL, '10785', 'Germany', '(010) 9984510', NULL, NULL),
	( 'Plutzer Lebensmittelgroßmärkte AG', 'Martin Bein', 'International Marketing Mgr.', 'Bogenallee 51', 'Frankfurt', NULL, '60439', 'Germany', '(069) 992755', NULL, 'Plutzer (on the World Wide Web)#http://www.microsoft.com/accessdev/sampleapps/plutzer.htm#'),
	( 'Nord-Ost-Fisch Handelsgesellschaft mbH', 'Sven Petersen', 'Coordinator Foreign Markets', 'Frahmredder 112a', 'Cuxhaven', NULL, '27478', 'Germany', '(04721) 8713', '(04721) 8714', NULL),
	( 'Formaggi Fortini s.r.l.', 'Elio Rossi', 'Sales Representative', 'Viale Dante, 75', 'Ravenna', NULL, '48100', 'Italy', '(0544) 60323', '(0544) 60603', '#FORMAGGI.HTM#'),
	( 'Norske Meierier', 'Beate Vileid', 'Marketing Manager', 'Hatlevegen 5', 'Sandvika', NULL, '1320', 'Norway', '(0)2-953010', NULL, NULL),
	( 'Bigfoot Breweries', 'Cheryl Saylor', 'Regional Account Rep.', '3400 - 8th Avenue Suite 210', 'Bend', 'OR', '97101', 'USA', '(503) 555-9931', NULL, NULL),
	( 'Svensk Sjöföda AB', 'Michael Björn', 'Sales Representative', 'Brovallavägen 231', 'Stockholm', NULL, 'S-123 45', 'Sweden', '08-123 45 67', NULL, NULL),
	( 'Aux joyeux ecclésiastiques', 'Guylène Nodier', 'Sales Manager', '203, Rue des Francs-Bourgeois', 'Paris', NULL, '75004', 'France', '(1) 03.83.00.68', '(1) 03.83.00.62', NULL),
	( 'New England Seafood Cannery', 'Robb Merchant', 'Wholesale Account Agent', 'Order Processing Dept. 2100 Paul Revere Blvd.', 'Boston', 'MA', '02134', 'USA', '(617) 555-3267', '(617) 555-3389', NULL),
	( 'Leka Trading', 'Chandra Leka', 'Owner', '471 Serangoon Loop, Suite #402', 'Singapore', NULL, '0512', 'Singapore', '555-8787', NULL, NULL),
	( 'Lyngbysild', 'Niels Petersen', 'Sales Manager', 'Lyngbysild Fiskebakken 10', 'Lyngby', NULL, '2800', 'Denmark', '43844108', '43844115', NULL),
	( 'Zaanse Snoepfabriek', 'Dirk Luchte', 'Accounting Manager', 'Verkoop Rijnweg 22', 'Zaandam', NULL, '9999 ZZ', 'Netherlands', '(12345) 1212', '(12345) 1210', NULL),
	( 'Karkki Oy', 'Anne Heikkonen', 'Product Manager', 'Valtakatu 12', 'Lappeenranta', NULL, '53120', 'Finland', '(953) 10956', NULL, NULL),
	( 'G''day, Mate', 'Wendy Mackenzie', 'Sales Representative', '170 Prince Edward Parade Hunter''s Hill', 'Sydney', 'NSW', '2042', 'Australia', '(02) 555-5914', '(02) 555-4873', 'G''day Mate (on the World Wide Web)#http://www.microsoft.com/accessdev/sampleapps/gdaymate.htm#'),
	( 'Ma Maison', 'Jean-Guy Lauzon', 'Marketing Manager', '2960 Rue St. Laurent', 'Montréal', 'Québec', 'H1J 1C3', 'Canada', '(514) 555-9022', NULL, NULL),
	( 'Pasta Buttini s.r.l.', 'Giovanni Giudici', 'Order Administrator', 'Via dei Gelsomini, 153', 'Salerno', NULL, '84100', 'Italy', '(089) 6547665', '(089) 6547667', NULL),
	( 'Escargots Nouveaux', 'Marie Delamare', 'Sales Manager', '22, rue H. Voiron', 'Montceau', NULL, '71300', 'France', '85.57.00.07', NULL, NULL),
	( 'Gai pâturage', 'Eliane Noz', 'Sales Representative', 'Bat. B 3, rue des Alpes', 'Annecy', NULL, '74000', 'France', '38.76.98.06', '38.76.98.58', NULL),
	( 'Forêts d''érables', 'Chantal Goulet', 'Accounting Manager', '148 rue Chasseur', 'Ste-Hyacinthe', 'Québec', 'J2S 7S8', 'Canada', '(514) 555-2955', '(514) 555-2921', NULL);

	Shipper
 
	INSERT INTO shippers VALUES
	( 'Speedy Express', '(503) 555-9831'),
	( 'United Package', '(503) 555-3199'),
	( 'Federal Shipping', '(503) 555-9931'),
	( 'Alliance Shippers', '1-800-222-0451'),
	( 'UPS', '1-800-782-7892'),
	( 'DHL', '1-800-225-5345');

 
