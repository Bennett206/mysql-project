use produce_store_test;

INSERT INTO vendorInventory VALUES
(NULL,1,'Honey Crisp 25lbs',37.50,1.50,16),
(NULL,1,'Fiji 25lbs',25.00,1.00,25),
(NULL,1,'Sugarbee 25lbs',30.00,1.20,33),
(NULL,1,'Granny Smith 25lbs',25.00,1.00,17),
(NULL,2,'Diamond Princess Peaches 15lbs',20.00,1.33,54),
(NULL,2,'Strawberry 15lbs',33.75,2.25,123),
(NULL,3,'Avocado 35lbs',41.30,1.18,43),
(NULL,3,'Green Bell Pepper 25lbs',45.50,1.82,40),
(NULL,3,'Romaine Lettuce 25lbs',32.50,1.30,52),
(NULL,4,'Carrots 30lbs',37.50,1.25,11),
(NULL,4,'Heirloom Tomato 20lbs',34.80,1.74,75),
(NULL,5,'Sweet Potato 25lbs',23.50,0.94,96);

INSERT INTO product VALUES
(NULL,'Honey Crisp 25lbs',10,2.50),
(NULL,'Fiji 25lbs',15,1.75),
(NULL,'Sugarbee 25lbs',9,1.80),
(NULL,'Granny Smith 25lbs',8,1.50),
(NULL,'Diamond Princess Peaches 15lbs',19,2.00),
(NULL,'Strawberry 15lbs',22,3.00),
(NULL,'Avocado 35lbs',2,1.75),
(NULL,'Green Bell Pepper 25lbs',3,2.50),
(NULL,'Romaine Lettuce 25lbs',4,2.25),
(NULL,'Carrots 30lbs',4,2.00),
(NULL,'Heirloom Tomato 20lbs',2,3.00),
(NULL,'Sweet Potato 25lbs',5,1.75);

INSERT INTO purchaseTransaction VALUES
(NULL,3,3,5,356,1,'2023/04/17',150.00),
(NULL,1,1,5,356,1,'2023/04/17',112.50),
(NULL,2,2,5,356,1,'2023/04/17',100.00),
(NULL,9,9,5,234,3,'2023/04/18',227.50),
(NULL,5,5,1,545,2,'2023/04/18',140.00),
(NULL,6,6,1,545,2,'2023/04/18',236.25),
(NULL,10,10,5,221,4,'2023/04/20',375.00);


INSERT INTO purchaseTransactionDetail VALUES
(NULL,1,5,30.00,150.00),
(NULL,2,3,37.50,112.50),
(NULL,3,4,25.00,100.00),
(NULL,4,7,32.50,227.50),
(NULL,5,7,20.00,140.00),
(NULL,6,7,33.75,236.25),
(NULL,7,10,37.50,375.00);

INSERT INTO salesTransaction VALUES
(NULL,6,7,2,'2023/04/24',12.00),
(NULL,3,3,2,'2023/04/24',5.40),
(NULL,3,3,5,'2023/04/25',9.00),
(NULL,5,4,1,'2023/04/26',8.00),
(NULL,1,4,1,'2023/04/26',12.50),
(NULL,8,7,3,'2023/04/27',5.00);

INSERT INTO salesTransactionDetail VALUES
(NULL,1,6,4,3.00,12.00),
(NULL,2,3,3,1.80,5.40),
(NULL,3,3,5,1.80,9.00),
(NULL,4,7,4,2.00,8.00),
(NULL,5,1,5,2.50,12.50),
(NULL,6,8,2,2.50,5.00);

select * from salestransactiondetail;

