--insert a default admin
INSERT INTO  user (id, type, first_name, last_name, mail, password, phone_number, psychologist_id,disorder, treatment) 
VALUES (1, 'ADMIN', 'Alfred', 'unknown','ucmh@ucm.es', 'Admin123', '111222333', null,null,null);
--insert a default psychologist
INSERT INTO  user (id, type, first_name, last_name, mail, password, phone_number, psychologist_id,disorder, treatment)
VALUES (10, 'PSY', 'Alex', 'not admin','alex@alex.es', 'Alex', '3913562059', null,null,null);
INSERT INTO  user (id, type, first_name, last_name, mail, password, phone_number, psychologist_id,disorder, treatment) 
VALUES (11, 'PSY', 'Carla', 'No Es Batman','carla@bigbrain.es', 'Carla', '2013562059', null,null,null);
INSERT INTO  user (id, type, first_name, last_name, mail, password, phone_number, psychologist_id,disorder, treatment) 
VALUES (12, 'PSY', 'Robert', 'Carlitos','robertitos@notbigbrain.es', 'Robert', '2013540059', null,null,null);
INSERT INTO  user (id, type, first_name, last_name, mail, password, phone_number, psychologist_id,disorder, treatment) 
VALUES (13, 'PSY', 'Sophia', 'Green','sogreen@a-real-psy.es', 'Sophia', '2019562059', null,null,null);
INSERT INTO  user (id, type, first_name, last_name, mail, password, phone_number, psychologist_id,disorder, treatment) 
VALUES (14, 'PSY', 'Sonia', 'Perez','peso@gmail.es', 'Sonia', '2013062059', null,null,null);
INSERT INTO  user (id, type, first_name, last_name, mail, password, phone_number, psychologist_id,disorder, treatment) 
VALUES (15, 'PSY', 'Marcus', 'Clark','mark@notdc.es', 'Marcus', '8013562059', null,null,null);
INSERT INTO  user (id, type, first_name, last_name, mail, password, phone_number, psychologist_id,disorder, treatment) 
VALUES (16, 'PSY', 'Clara', 'Oscuro','clos@hotmail.es', 'Clara', '7013562059', null,null,null);
INSERT INTO  user (id, type, first_name, last_name, mail, password, phone_number, psychologist_id,disorder, treatment) 
VALUES (17, 'PSY', 'Jhon', 'White','jhote@yahoo.es', 'Jhon', '2003562059', null,null,null);
INSERT INTO  user (id, type, first_name, last_name, mail, password, phone_number, psychologist_id,disorder, treatment) 
VALUES (18, 'PSY', 'Carlos', 'Rodriguez','carguez@alguncorreo.es', 'Carlos', '2013562053', null,null,null);
INSERT INTO  user (id, type, first_name, last_name, mail, password, phone_number, psychologist_id,disorder, treatment) 
VALUES (19, 'PSY', 'Manuel', 'Pelarez','manu_pelarez@yahoo.es', 'Manuel', '2013562069', null,null,null);
INSERT INTO  user (id, type, first_name, last_name, mail, password, phone_number, psychologist_id,disorder, treatment) 
VALUES (20, 'PSY', 'Emma', 'Stone','stone-emma@hotmail.es', 'Emma', '2013292059', null,null,null);
INSERT INTO  user (id, type, first_name, last_name, mail, password, phone_number, psychologist_id,disorder, treatment) 
VALUES (21, 'PSY', 'Triss', 'Gold','triss-gold@gmail.es', 'Triss', '2010562059', null,null,null);
--insert a default user
INSERT INTO  user (id, type, first_name, last_name, mail, password, phone_number, psychologist_id, disorder, treatment) 
VALUES (30, 'USER', 'Paco', 'Es Batman','pacoelmagias@elmundomagico.es', 'Paco', '2017568459', 11, 'Loquísimo', 'Pastillas super fuertes');
INSERT INTO  user (id, type, first_name, last_name, mail, password, phone_number,psychologist_id,disorder, treatment) 
VALUES (31, 'USER', 'Paca', 'Es Robin','robin@jnotmail.es', 'Paco', '2013568454', 13,'Loquísimo', 'Pastillas super fuertes');
INSERT INTO  user (id, type, first_name, last_name, mail, password, phone_number, psychologist_id, disorder, treatment) 
VALUES (32, 'USER', 'Poca', 'Cosa','poca-cosa@hotmail.es', 'Paco', '2013568458', 11, 'Depresión', 'Fiesta en la piscina');
INSERT INTO  user (id, type, first_name, last_name, mail, password, phone_number, psychologist_id,disorder, treatment) 
VALUES (33, 'USER', 'Pica', 'Carta','carta-pica@kmail.es', 'Paco', '2013568443', 20,'Loquísimo', 'Pastillas super fuertes');
INSERT INTO  user (id, type, first_name, last_name, mail, password, phone_number, psychologist_id,disorder, treatment) 
VALUES (34, 'USER', 'Clara', 'Col','claracol@danacol.es', 'Paco', '2013568438', 21,'Loquísimo', 'Pastillas super fuertes');
INSERT INTO  user (id, type, first_name, last_name, mail, password, phone_number, psychologist_id,disorder, treatment) 
VALUES (35, 'USER', 'Claro', 'Clarito','noclaro@yahomail.es', 'Paco', '2013568460', 12,'Loquísimo', 'Pastillas super fuertes');
INSERT INTO  user (id, type, first_name, last_name, mail, password, phone_number, psychologist_id,disorder, treatment) 
VALUES (36, 'USER', 'Cloro', 'Alcohol','novodka@ru-mail.es', 'Paco', '2013568461', 12,'Loquísimo', 'Pastillas super fuertes');
INSERT INTO  user (id, type, first_name, last_name, mail, password, phone_number, psychologist_id,disorder, treatment) 
VALUES (37, 'USER', 'Clora', 'Bato','batidora@braun.es', 'Paco', '2013568462', 15,'Loquísimo', 'Pastillas super fuertes');
INSERT INTO  user (id, type, first_name, last_name, mail, password, phone_number, psychologist_id,disorder, treatment) 
VALUES (38, 'USER', 'Sara', 'Perez','perez-sara@corporate.es', 'Paco', '2013553459', 16,'Loquísimo', 'Pastillas super fuertes');
INSERT INTO  user (id, type, first_name, last_name, mail, password, phone_number, psychologist_id,disorder, treatment) 
VALUES (39, 'USER', 'Sari', 'Ta','sari-ta@wmail.es', 'Paco', '2013566759', 19,'Loquísimo', 'Pastillas super fuertes');
INSERT INTO  user (id, type, first_name, last_name, mail, password, phone_number, psychologist_id,disorder, treatment) 
VALUES (40, 'USER', 'Sora', 'Sora','sora2@pmail.es', 'Paco', '2013569059', 17,'Loquísimo', 'Pastillas super fuertes');
INSERT INTO  user (id, type, first_name, last_name, mail, password, phone_number, psychologist_id,disorder, treatment) 
VALUES (41, 'USER', 'Saro', 'Sal','sarosal@bmail.es', 'Paco', '2013521459', 14,'Loquísimo', 'Pastillas super fuertes');
INSERT INTO  user (id, type, first_name, last_name, mail, password, phone_number, psychologist_id,disorder, treatment) 
VALUES (42, 'USER', 'Irene', 'ramirez','iremi@bmail.es', 'Paco', '2016661459', 14,'Loquísimo', 'Pastillas super fuertes');
INSERT INTO  user (id, type, first_name, last_name, mail, password, phone_number, psychologist_id,disorder, treatment) 
VALUES (43, 'USER', 'Irene', 'Gomez','inemez@bmail.es', 'Paco', '2013521333', 14,'Loquísimo', 'Pastillas super fuertes');
INSERT INTO  user (id, type, first_name, last_name, mail, password, phone_number, psychologist_id,disorder, treatment) 
VALUES (44, 'USER', 'Irene', 'Gonzalez','regon@bmail.es', 'Paco', '2013521777', 14,'Loquísimo', 'Pastillas super fuertes');
