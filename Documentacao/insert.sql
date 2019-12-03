use mydb;
START TRANSACTION;
INSERT INTO `atividadecomercial` VALUES (1,'Comercio'),(2,'Suporte');
INSERT INTO `bairro` VALUES (1,'Centro'),(2,'Vila A'),(3,'Vila B'),(4,'Vila C');
INSERT INTO `pais` VALUES (1,'Brasil'),(2,'Argentina'),(3,'Canada'),(4,'Irlanda');
INSERT INTO `uf` VALUES (1,'PR','Parana',1),(2,'SP','Sao Paulo',1),(3,'DB','Dublin',4),(4,'ONT','Ontario',3);
INSERT INTO `cidade` VALUES (1,'Curitiba',1),(2,'Londrina',1),(3,'Medianeira',1),(4,'Sao Paulo',2),(5,'Dublin',3),(6,'Ottawa',4);
INSERT INTO `tipologradouro` VALUES (1,'RUA','rua'),(2,'AV','avenida');
INSERT INTO `logradouro` VALUES (1,'Vitorino',1),(2,'Brasil',2),(3,'Castle',1),(4,'Gladstone',2);
INSERT INTO `endereco` VALUES (1,'85867530',1,1,1),(2,'85867500',1,1,1),(3,'76984359',1,5,3),(4,'75489651',1,6,4);
INSERT INTO `orgaoexpeditor` VALUES (1,'SSP',1);
INSERT INTO `sexo` VALUES (1,'Masculino','M'),(2,'Feminino','F');
INSERT INTO `cliente` VALUES (1,'Tiago','Lopes','Pereira','Tiago V L Pereira','Tiago Vinicius Lopes Pereira','09722879901',NULL,1,23,'null',2,'97667450','1997-07-03',1),(2,'Tiago V L P DevOps',NULL,NULL,'TVLP DevOps',NULL,NULL,'32864581000104',NULL,54,NULL,1,NULL,NULL,NULL);
INSERT INTO `atividadecomercial_cliente` VALUES (2,2);
INSERT INTO `ddd` VALUES (1,45),(2,567),(3,57),(4,987);
INSERT INTO `ddi` VALUES (1,55),(2,1),(3,353);
INSERT INTO `emailcliente` VALUES (1,'tiago.foz@hotmail.com',1),(2,'suporte@devops.com.br',2);
INSERT INTO `tipofone` VALUES (1,'Cel','Celular');
INSERT INTO `fonecliente` VALUES (1,'99940308',1,1,1,1),(2,'35776715',2,1,1,1);

INSERT INTO `fornecedor` VALUES (1,'HyperX','HyperX Gaming','02863526000120',178,'Na esquina da rua',3);
INSERT INTO `fornecedor` VALUES (2,'Razer','Razer Gaming','41182243000175',492,'Entre a farmacia e a padaria',4);

INSERT INTO `emailfornecedor` VALUES (1,'atendimento@razer.com',2),(2,'suporte@hyperx.com',1);
INSERT INTO `fonefornecedor` VALUES (1,'92946388',2,2,1,2),(2,'97846842',3,3,1,1);

INSERT INTO `atividadecomercial_fornecedor` VALUES (2,1),(1,1);

INSERT INTO `produto` VALUES (1,180.00,14000,'Headset Cloud Stinger','1547896345128',230.00,1);
INSERT INTO `produto` VALUES (2,480.00,987,'Headset Cloud Revolver','17846951235479',530.00,1);
INSERT INTO `produto` VALUES (3,320.00,165,'Headset Cloud Stinger 2','18765482314597',400.00,1);
INSERT INTO `produto` VALUES (4,120.00,519,'Headset Kraken','6840189047890',189.00,2);
INSERT INTO `produto` VALUES (5,260.00,28000,'Headset Kraken Pro','0478945896030',337.15,2);
INSERT INTO `produto` VALUES (6,880.00,735,'Headset Tiamat','7890548069701',1353.65,2);
INSERT INTO `produto` VALUES (7,500.00,984,'Headset Meka Dva','1896754098708',561.36,2);
INSERT INTO `produto` VALUES (8,480.00,654,'Microfone HX MICQC BK','7531896540280',609.91,1);
INSERT INTO `produto` VALUES (9,90.00,321,'Mouse Pulsefire Surge','1789513489078',180.00,1);
INSERT INTO `produto` VALUES (10,490.00,756,'Teclado Blackwidow','8790513489078',599.90,2);
INSERT INTO `produto` VALUES (11,410.00,65,'Microfone Seiren','8000003489078',525.90,2);

INSERT INTO `notacompra` VALUES (1,'2019-09-06',3336430.00,289870.00,3046560.00,1);
INSERT INTO `notacompra` VALUES (2,'2019-11-13',8418800.00,2583514.54,5835285.46,2);

INSERT INTO `itemcompra` VALUES (1,1,14000,200.00),(1,2,987,490.00),(1,3,165,320.00);
INSERT INTO `itemcompra` VALUES (2,5,28000,179.65),(2,6,735,425.98),(2,7,984,499.99);


COMMIT;



