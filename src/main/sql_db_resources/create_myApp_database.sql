CREATE USER 'vnskln'@'localhost' IDENTIFIED BY 'vnskln' ;

GRANT ALL PRIVILEGES ON * . * TO 'vnskln'@'localhost';

CREATE DATABASE  IF NOT EXISTS `myAppDB`;
USE `myAppDB`;

DROP TABLE IF EXISTS `people`;
CREATE TABLE `people` (
  `id` integer NOT NULL auto_increment,
  `name` varchar(50) NOT NULL,
  `surname` varchar(50) NOT NULL,
  `age` integer NOT NULL,
  `height` double NOT NULL,
  `education` varchar(50) default NULL,
  `robot_checker` boolean default NULL,
  PRIMARY KEY (`id`)
) AUTO_INCREMENT=1;

DROP TABLE IF EXISTS `employees`;
CREATE TABLE `employees` (
  `id` integer NOT NULL auto_increment,
  `name` varchar(50) default NULL,
  `surname` varchar(50) default NULL,
  `email` varchar(50) default NULL,
  `phone_number` varchar(50) default NULL,
  `city` varchar(50),
  `postal_code` varchar(10) default NULL,
  `address` varchar(255) default NULL,
  PRIMARY KEY (`id`)
) AUTO_INCREMENT=1;

--all data below is random and it was created by https://www.generatedata.com/

INSERT INTO `employees` 
(`name`,`surname`,`email`,`phone_number`,`city`,`postal_code`,`address`) 
VALUES 
("Kameko","Armstrong","amet.orci@ultrices.edu","(01589) 72086","Ghlin","57-285","7022 Sodales Av."),
("Grant","Cooley","ornare.libero@Duisgravida.com","0845 46 42","Cercemaggiore","CG4X 3FP","Ap #513-4922 Velit St."),
("Castor","Young","lorem@mattisvelit.ca","070 8594 7505","Rhemes-Notre-Dame","41009","P.O. Box 968, 2186 Donec Rd."),
("Sonya","Gay","mauris.eu@erateget.net","0831 750 4895","Olinda","598446","Ap #878-8912 Sit Rd."),
("Walker","Woodard","turpis@aliquetmagna.edu","0909 486 2329","Morolo","0926 RS","P.O. Box 117, 5440 Lacus. St."),
("Maxwell","Robertson","nibh.sit.amet@dolornonummyac.co.uk","055 5342 4257","Eghezee","B0Y 4R2","Ap #138-8477 Nam Road"),
("Chelsea","Sutton","in@idsapienCras.edu","0800 699248","San Chirico Nuovo","51585","9365 Mi Av."),
("Alexander","Ward","non.egestas.a@dignissim.ca","(01309) 859353","Steenokkerzeel","314160","P.O. Box 825, 8560 Interdum Street"),
("Ariel","Whitfield","in@Sedeueros.edu","0500 096551","Great Falls","644498","230-8365 Torquent St."),
("Demetria","Daugherty","vehicula.aliquet.libero@afelisullamcorper.net","0845 46 48","Saint-Georges","349908","156-6302 Vitae St."),
("Alma","Coleman","pede.Cum@est.edu","07624 819009","Llanidloes","17841-621","Ap #877-1760 Ultrices. Avenue"),
("Aretha","Bernard","eu@nullaCras.com","056 0414 4618","Omaha","1158","4129 Duis Street"),
("Cade","Avila","commodo@etipsumcursus.edu","0960 709 7190","Napoli","1135","274 Amet, Ave"),
("Irene","Thompson","Nulla@consequat.ca","07624 483246","Lambersart","38152","P.O. Box 156, 9450 Eu, Rd."),
("Signe","Cantrell","eget@et.edu","0800 1111","Assiniboia","8493","P.O. Box 669, 9564 Sem, Avenue"),
("Anika","Levine","lorem.sit.amet@lectusante.co.uk","(0112) 164 6055","Mundare","8543","3814 Elit. Avenue"),
("Brynn","Bryant","porttitor.eros@Naminterdumenim.net","070 0380 9841","Paal","92634","798-4747 Aliquet, Avenue"),
("Deirdre","Mcgowan","turpis.nec.mauris@aliquamadipiscing.co.uk","(01378) 24094","Tobermory","56549","5545 Curae; Road"),
("Rhea","Petty","malesuada@tinciduntDonec.co.uk","07770 248629","Nakusp","04774-996","P.O. Box 845, 2840 Ornare, Ave"),
("Susan","Goodwin","nunc.est.mollis@est.co.uk","0500 104402","Minneapolis","47692","7120 Volutpat. St.");