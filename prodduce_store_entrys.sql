use produce_store_test;

INSERT INTO vendor VALUES
(NULL,325,'Peterson Fruit Co. Inc.','2023/06/03','2021/01/24'),
(NULL,190,'Charlie\'s Produce','2023/06/01','2018/04/29'),
(NULL,767,'Sound Produce','2023/06/01','2017/01/24'),
(NULL,131,'Pacific Rim Distributing','2023/06/03','2019/12/13'),
(NULL,579,'Yakima Farms','2023/06/03','2022/11/11');

DELETE FROM vendor WHERE vendorId > 5;

Select * from vendorPhone;

INSERT INTO vendorPhone VALUES
(NULL,1,'206','550','5355','1'),
(NULL,1,'206','342','3341','1'),
(NULL,2,'425','525','5521','1'),
(NULL,3,'206','232','2322','1'),
(NULL,3,'425','121','1242','1'),
(NULL,4,'360','123','1231','1'),
(NULL,5,'360','333','4414','1');

INSERT INTO vendorEmail VALUES
(NULL,1,'joey','@pfc.','org'),
(NULL,1,'vendor','@pfc.','org'),
(NULL,2,'jeremy','@charlies.','com'),
(NULL,3,'services','@soundpdc.','com'),
(NULL,3,'porter','@soundpdc.','com'),
(NULL,4,'heather','@pacificrim.','org'),
(NULL,5,'evelyn','@yakimafarms.','com');

INSERT INTO vendorAddress VALUES
(NULL,1,'1100 Ballard Ave','Seattle','98117','WA'),
(NULL,1,'323 Elliot Ave','Seattle','98109','WA'),
(NULL,2,'202 Lakeview Way','Kirkland','98213','WA'),
(NULL,3,'3000 Denny Way','Seattle','98110','WA'),
(NULL,3,'789 Juanita Dr','Kirkland','98212','WA'),
(NULL,4,'400 College St','Ellensburg','98145','WA'),
(NULL,5,'W Lincoln Ave','Yakima','98149','WA');

select * from employees;

INSERT INTO employees VALUES
(NULL,12,'Jerry','Orr','Produce Stocker','17.50','2019/10/10'),
(NULL,16,'Tanya','Little','Marketing','22.00','2019/11/12'),
(NULL,3,'Doris','Freeman','Cashier','17.00','2022/09/22'),
(NULL,5,'Gareth','Meyers','Cashier','17.50','2021/04/30'),
(NULL,1,'Cameron','Fitzgerald','Manager','30.00','2017/02/02'),
(NULL,8,'Amirah','Barnes','Produce Stocker','18.25','2017/03/25'),
(NULL,24,'Sami','Molina','Cashier','18.00','2018/07/15');

INSERT INTO employeeAddress VALUES
(NULL,1,'1919 Taylor Ave N','Seattle','98107','WA'),
(NULL,2,'1100 Queen Anne Ave N','Seattle','98109','WA'),
(NULL,3,'1400 6th Ave W APT 210','Seattle','98241','WA'),
(NULL,4,'200 Roy St','Seattle','98110','WA'),
(NULL,5,'8532 17th Ave NW','Seattle','98117','WA'),
(NULL,6,'212 N 77th St','Everett','98145','WA'),
(NULL,7,'700 W 44th St APT 501','Seattle','98118','WA');


INSERT INTO employeeEmail VALUES
(NULL,1,'jerrorr','@gmail.','com'),
(NULL,2,'tlittle','@yahoo.','com'),
(NULL,3,'doris.freeman','@gmail.','com'),
(NULL,4,'garethm','@gmail.','com'),
(NULL,5,'camfitz','@hotmail.','com'),
(NULL,6,'amirah.barnes','@yahoo.','com'),
(NULL,7,'samimolina','@gmail.','com');

INSERT INTO employeePhone VALUES
(NULL,1,'654','561','6517','1'),
(NULL,2,'470','853','1910','1'),
(NULL,3,'524','711','9898','1'),
(NULL,4,'974','973','5907','1'),
(NULL,5,'990','986','4779','1'),
(NULL,6,'729','586','6413','1'),
(NULL,7,'546','910','4673','1');


INSERT INTO customer VALUES
(NULL,34,'Ismael','Kramer'),
(NULL,77,'Sophia','Nichols'),
(NULL,21,'Taya','Buckley'),
(NULL,15,'Kelvin','Stanley'),
(NULL,33,'Norma','Lynch'),
(NULL,89,'Esther','Riley'),
(NULL,55,'Grover','Rivera');

INSERT INTO customerAddress VALUES
(NULL,1,'2784 Margaret Street','Seattle','98107','WA'),
(NULL,2,'3390 Terra Street','Seattle','98109','WA'),
(NULL,3,'3011 Hemlock Lane','Seattle','98241','WA'),
(NULL,4,'273 Lodgeville Road','Seattle','98110','WA'),
(NULL,5,'3935 Calvin Street','Seattle','98117','WA'),
(NULL,6,'458 Villa Drive','Everett','98145','WA'),
(NULL,7,'523 Stonecoal Road','Seattle','98118','WA');


INSERT INTO customerEmail VALUES
(NULL,1,'olyalyadi','@holliefindlaymusic.','com'),
(NULL,2,'tori020593','@dreamfuture.','com'),
(NULL,3,'nastyak1111','@gmail.','com'),
(NULL,4,'shamsama','@gmail.','com'),
(NULL,5,'onika55','@hotmail.','com'),
(NULL,6,'redhouse81','@yahoo.','com'),
(NULL,7,'cowley1','@gmail.','com');

INSERT INTO customerPhone VALUES
(NULL,1,'533','952','9288','1'),
(NULL,2,'499','812','8982','1'),
(NULL,3,'664','863','2458','1'),
(NULL,4,'762','376','3213','1'),
(NULL,5,'543','442','5475','1'),
(NULL,6,'415','917','5550','1'),
(NULL,7,'415','917','5550','1');

select * from customerPhone;

