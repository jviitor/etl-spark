insert into associado(id,nome,sobrenome,idade,email)
VALUES (1,'Wynne','Eric',32,'sit.amet@yahoo.ca'),
  (2,'Hashim','Jared',24,'faucibus.leo@icloud.couk'),
  (3,'Ryan','Noah',34,'nec.ante@protonmail.net'),
  (4,'Ocean','Tate',34,'curabitur.consequat@google.edu'),
  (5,'Jenette','Jelani',26,'mus.proin.vel@protonmail.net'),
  (6,'Hyacinth','Xanthus',22,'nonummy.ac@aol.com'),
  (7,'Kylie','Blossom',33,'non.leo.vivamus@yahoo.com'),
  (8,'Wynter','Rooney',23,'tempus@hotmail.org'),
  (9,'Shad','Nolan',21,'morbi.sit@icloud.ca'),
  (10,'Carolyn','Charlotte',28,'cras.interdum@outlook.edu');

insert into conta (id ,tipo ,data_criacao ,id_associado)
values (1,'enim. Mauris quis','Mar 14, 2023',1),
  (2,'mus. Proin vel','Feb 1, 2022',2),
  (3,'Quisque fringilla euismod','Nov 10, 2018',3),
  (4,'nunc. Quisque ornare','Sep 25, 2019',4),
  (5,'erat neque non','Jun 3, 2022',5),
  (6,'dolor. Donec fringilla.','Feb 23, 2019',6),
  (7,'venenatis vel, faucibus','Aug 6, 2022',7),
  (8,'id sapien. Cras','Sep 7, 2021',8),
  (9,'vitae nibh. Donec','Feb 28, 2020',9),
  (10,'non, luctus sit','Dec 31, 2021',10),
  (20,'corrente','Feb 25, 2022',1),
  (21,'corrente','Feb 25, 2022',2),
  (31,'poupanca','Feb 25, 2022',1);

insert into cartao(id, num_cartao, nom_impresso, id_conta, id_associado)
VALUES  (1,1,'convallis convallis',1,1),
  (2,2,'Nulla eget',2,2),
  (3,3,'a mi',3,3),
  (4,4,'risus. Duis',4,4),
  (5,5,'et, magna.',5,5),
  (6,6,'tristique ac,',6,6),
  (7,7,'eget magna.',7,7),
  (8,8,'id enim.',8,8),
  (9,9,'Praesent eu',9,9),
  (10,10,'et arcu',10,10),
  (21,40,'xp_investimentos',20,1),
  (35,99,'nubank',31,1),
  (88,40,'pic_pay',21,2);

insert into movimento (id,vlr_transacao,des_transacao,data_movimento,id_cartao)
values (1,767,'varius','Jan 31, 2022',1),
  (2,525,'Sed','Nov 22, 2021',2),
  (3,463,'dapibus','Oct 2, 2022',3),
  (4,205,'vel','May 19, 2021',4),
  (5,673,'non,','May 17, 2022',5),
  (6,898,'lacus.','Dec 10, 2021',6),
  (7,982,'eu','Nov 24, 2021',7),
  (8,106,'et,','Sep 20, 2021',8),
  (9,286,'elit','Jun 13, 2021',9),
  (10,416,'imperdiet','Feb 22, 2022',10),
  (35,1000,'celular','Feb 22, 2022',21),
  (55,3780,'computador','Feb 22, 2022',35),
  (77,856,'almoco','Feb 22, 2022',88);