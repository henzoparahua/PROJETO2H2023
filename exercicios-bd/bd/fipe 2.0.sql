/** 
 * Henzo Possebon Ayres RM22706 & Henrique Silva Barbosa RM22687
 * */

DROP DATABASE IF EXISTS fipe;
CREATE DATABASE IF NOT EXISTS fipe;
USE fipe;
CREATE TABLE clientes
(
    idcliente int NOT NULL,
    nomecliente varchar(40) NOT NULL,
    estado char(2) NOT NULL,
    PRIMARY KEY(idcliente)
);

CREATE TABLE carros(
 CodCarro INT NOT NULL PRIMARY KEY,
 Fabricante VARCHAR(30) NOT NULL,
 Modelo VARCHAR(30) NOT NULL,
 Ano year NOT NULL,
 Preco DECIMAL(12,2) NOT NULL );

CREATE TABLE vendas
(
    idvenda int NOT NULL,
    datavenda date NOT NULL,
    idcliente int NOT NULL,
    PRIMARY KEY(idvenda),
    FOREIGN KEY(idcliente) REFERENCES clientes(idcliente)
);

CREATE TABLE itensvendidos
(
    idvenda int NOT NULL,
    codcarro int NOT NULL,
    qtdevendida tinyint NOT NULL,
    PRIMARY KEY(idvenda,codcarro),
    FOREIGN KEY(idvenda) REFERENCES vendas(idvenda),
    FOREIGN KEY(codcarro) REFERENCES carros(CodCarro)
);

INSERT INTO clientes
values
(1, 'João', 'MG'),
(2, 'José', 'SP'),
(3, 'Janaina', 'SE'),
(4, 'Jubileu', 'DF'),
(5, 'Luiz', 'AM'),
(6, 'Lorenzo', 'AP'),
(7, 'Lucas', 'MT'),
(8, 'Barbara', 'TO'),
(9, 'Jessica', 'BA'),
(10, 'Roberto', 'SC');

INSERT INTO vendas
values
('1','06/30/2000','1'),
('2','06/02/2000','2'),
('3','06/02/2000','3'),
('4','06/02/2000','4'),
('5','06/02/2000','5'),
('6','06/02/2000','6'),
('7','06/02/2000','7'),
('8','06/02/2000','8'),
('9','06/02/2000','9'),
('10','06/02/2000','10'),



INSERT INTO itensvendidos
values
('1', '51', '2'),
('1', '79', '1'),
('1', '51', '2'),













INSERT INTO carros
values

(1,'Nissan','Sentra','2020','82452.00'),
(2,'Nissan','Sentra','2019','80070.00'),
(3,'Nissan','Sentra','2018','75573.00'),
(4,'Nissan','Sentra','2017','67651.00'),

(5,'Nissan','Kicks','2018','84870.00'),
(6,'Nissan','Kicks','2019','88736.00'),
(7,'Nissan','Kicks','2020','92697.00'),
(8,'Nissan','Kicks','2021','100158.00'),

(9,'Nissan','Leaf','2020','184881.00'),
(10,'Nissan','Leaf','2021','213077.00'),
(11,'Nissan','Leaf','2022','236956.00'),
(12,'Nissan','Leaf','2023','280020.00'),

(13,'Nissan','Frontier','2019','169006.00'),
(14,'Nissan','Frontier','2020','180566.00'),
(15,'Nissan','Frontier','2021','192755.00'),
(16,'Nissan','Frontier','2022','205476.00'),

(17,'Nissan','March','2017','45181.00'),
(18,'Nissan','March','2018','52299.00'),
(19,'Nissan','March','2019','54189.00'),
(20,'Nissan','March','2020','59082.00'),

(21,'Toyota','Hilux','2017','188740.00'),
(22,'Toyota','Hilux','2018','193459.00'),
(23,'Toyota','Hilux','2019','202774.00'),
(24,'Toyota','Hilux','2020','211697.00'),

(25,'Toyota','Corolla Altis','2020','147441.00'),
(26,'Toyota','Corolla Altis','2021','154110.00'),
(27,'Toyota','Corolla Altis','2022','162722.00'),
(28,'Toyota','Corolla Altis','2023','172158.00'),

(29,'Toyota','Band Picape','2001','63980.00'),
(30,'Toyota','Band Picape','2000','61515.00'),
(31,'Toyota','Band Picape','1999','59026.00'),
(32,'Toyota','Band Picape','1998','57586.00'),

(33,'Toyota','Supra','2007','43738.00'),
(34,'Toyota','Supra','1995','35888.00'),
(35,'Toyota','Supra','1994','31512.00'),
(36,'Toyota','Supra','1993','27134.00'),

(37,'Toyota','RAV4','2015','97898.00'),
(38,'Toyota','RAV4','2014','89917.00'),
(39,'Toyota','RAV4','2013','87723.00'),
(40,'Toyota','RAV4','2005','34210.00'),

(41,'Fiat','Palio','2010','24381.00'),
(42,'Fiat','Palio','2011','26503.00'),
(43,'Fiat','Palio','2012','27441.00'),
(44,'Fiat','Palio','2013','28987.00'),

(45,'Fiat','Marea','2004','31582.00'),
(46,'Fiat','Marea','2005','32513.00'),
(47,'Fiat','Marea','2006','34643.00'),
(48,'Fiat','Marea','2007','38326.00'),

(49,'Fiat','Argo Drive','2018','54282.00'),
(50,'Fiat','Argo Drive','2019','55666.00'),
(51,'Fiat','Argo Drive','2020','58471.00'),
(52,'Fiat','Argo Drive','2021','62016.00'),

(53,'Fiat','Doblo','2010','30832.00'),
(54,'Fiat','Doblo','2011','36674.00'),
(55,'Fiat','Doblo','2012','40795.00'),
(56,'Fiat','Doblo','2013','44733.00'),

(57,'Fiat','Fiorino Furgão','2017','62845.00'),
(58,'Fiat','Fiorino Furgão','2018','66684.00'),
(59,'Fiat','Fiorino Furgão','2019','70548.00'),
(60,'Fiat','Fiorino Furgão','2020','74792.00'),

(61,'Volkswagen','Fox City','2007','18083.00'),
(62,'Volkswagen','Fox City','2008','19020.00'),
(63,'Volkswagen','Fox City','2009','20163.00'),
(64,'Volkswagen','Fox City','2010','24113.00'),

(65,'Volkswagen','CROSSFOX','2015','53121.00'),
(66,'Volkswagen','CROSSFOX','2016','54711.00'),
(67,'Volkswagen','CROSSFOX','2017','58123.00'),
(68,'Volkswagen','CROSSFOX','2018','60087.00'),

(69,'Volkswagen','Amarok Highline','2011','87126.00'),
(70,'Volkswagen','Amarok Highline','2012','100060.00'),
(71,'Volkswagen','Amarok Highline','2013','103471.00'),
(72,'Volkswagen','Amarok Highline','2014','116036.00'),

(73,'Volkswagen','Saveiro Robust','2023','86447.00'),
(74,'Volkswagen','Saveiro Robust','2022','77243.00'),
(75,'Volkswagen','Saveiro Robust','2021','67514.00'),
(76,'Volkswagen','Saveiro Robust','2020','63263.00'),

(77,'Volkswagen','VOYAGE MSI','2022','67120.00'),
(78,'Volkswagen','VOYAGE MSI','2021','60177.00'),
(79,'Volkswagen','VOYAGE MSI','2020','57302.00'),
(80,'Volkswagen','VOYAGE MSI','2019','54662.00'),

(81,'Mitsubishi','Pajero Sport HPE','2023','368932.00'),
(82,'Mitsubishi','Pajero Sport HPE','2022','334489.00'),
(83,'Mitsubishi','Pajero Sport HPE','2021','320896.00'),
(84,'Mitsubishi','Pajero Sport HPE','2020','286294.00'),

(85,'Mitsubishi','Lancer 2.0','2018','68730.00'),
(86,'Mitsubishi','Lancer 2.0','2017','59624.00'),
(87,'Mitsubishi','Lancer 2.0','2016','57163.00'),
(88,'Mitsubishi','Lancer 2.0','2015','54992.00'),

(89,'Mitsubishi','L200 Triton Sport HPE','2023','273405.00'),
(90,'Mitsubishi','L200 Triton Sport HPE','2022','251592.00'),
(91,'Mitsubishi','L200 Triton Sport HPE','2021','242919.00'),
(92,'Mitsubishi','L200 Triton Sport HPE','2020','192830.00'),

(93,'Mitsubishi','Eclipse Cross HPE','2023','208535.00'),
(94,'Mitsubishi','Eclipse Cross HPE','2022','178764.00'),
(95,'Mitsubishi','Eclipse Cross HPE','2021','160891.00'),
(96,'Mitsubishi','Eclipse Cross HPE','2020','142144.00'),

(97,'Mitsubishi','3000 GT VR-4','1998','105035.00'),
(98,'Mitsubishi','3000 GT VR-4','1997','102473.00'),
(99,'Mitsubishi','3000 GT VR-4','1996','99973.00'),
(100,'Mitsubishi','3000 GT VR-4','1995','97534.00'),

(101, 'Hyundai','Accent GLs', '2001','13672.00'),
(102, 'Hyundai','Accent GLs', '2000','11809.00'),
(103, 'Hyundai','Accent GLs', '1999','9209.00'),
(104, 'Hyundai','Accent GLs', '1998','8887.00'),

(105, 'Hyundai','AZERA GLS', '2011','44094.00'),
(106, 'Hyundai','AZERA GLS', '2010','38619.00'),
(107, 'Hyundai','AZERA GLS', '2009','36162.00'),
(108, 'Hyundai','AZERA GLS', '2008','33326.00'),

(109, 'Hyundai','Creta Attitude', '2021','93421.00'),
(110, 'Hyundai','Creta Attitude', '2020','91085.00'),
(111, 'Hyundai','Creta Attitude', '2019','87445.00'),
(112, 'Hyundai','Creta Attitude', '2018','83945.00'),

(113, 'Hyundai','Excel GLS', '1995','4910.00'),
(114, 'Hyundai','Excel GLS', '1994','4774.00'),
(115, 'Hyundai','Excel GLS', '1993','4397.00'),
(116, 'Hyundai','Excel GLS', '1992','3563.00'),

(117, 'Hyundai','HB20 Comfort Plus', '2019','60291.00'),
(118, 'Hyundai','HB20 Comfort Plus', '2018','54300.00'),
(119, 'Hyundai','HB20 Comfort Plus', '2017','51152.00'),
(120, 'Hyundai','HB20 Comfort Plus', '2023','82141.00');


SELECT CODCarro, Modelo, Ano FROM carros;

SELECT * FROM carros ORDER BY modelo ASC;

SELECT * FROM carros ORDER BY preco DESC;

SELECT modelo, ano, preco FROM carros ORDER BY fabricante ASC;