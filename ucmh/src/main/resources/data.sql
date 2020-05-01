--insert a default admin
INSERT INTO  user (id, type, first_name, last_name, mail, password, phone_number, psychologist_id) 
VALUES (1, 'ADMIN', 'Alfred', 'unknown','ucmh@ucm.es', '{bcrypt}$2a$10$xLFtBIXGtYvAbRqM95JhcOaG23fHRpDoZIJrsF2cCff9xEHTTdK1u', '111222333', null);
INSERT INTO  user (id, type, first_name, last_name, mail, password, phone_number, psychologist_id) 
VALUES (2, 'ADMIN', 'Alfrodd', 'unknown','ucmh2@ucm.es', '{bcrypt}$2a$10$xLFtBIXGtYvAbRqM95JhcOaG23fHRpDoZIJrsF2cCff9xEHTTdK1u', '444555666', null);
--insert a default psychologist
INSERT INTO  user (id, type, first_name, last_name, mail, password, phone_number, psychologist_id)
VALUES (10, 'PSY', 'Alex', 'not admin','alex@alex.es', '{bcrypt}$2a$10$xLFtBIXGtYvAbRqM95JhcOaG23fHRpDoZIJrsF2cCff9xEHTTdK1u', '3913562059', null);
INSERT INTO  user (id, type, first_name, last_name, mail, password, phone_number, psychologist_id) 
VALUES (11, 'PSY', 'Carla', 'No Es Batman','carla@bigbrain.es', '{bcrypt}$2a$10$xLFtBIXGtYvAbRqM95JhcOaG23fHRpDoZIJrsF2cCff9xEHTTdK1u', '2013562059', null);
INSERT INTO  user (id, type, first_name, last_name, mail, password, phone_number, psychologist_id) 
VALUES (12, 'PSY', 'Robert', 'Carlitos','robertitos@notbigbrain.es', '{bcrypt}$2a$10$xLFtBIXGtYvAbRqM95JhcOaG23fHRpDoZIJrsF2cCff9xEHTTdK1u', '2013540059', null);
INSERT INTO  user (id, type, first_name, last_name, mail, password, phone_number, psychologist_id) 
VALUES (13, 'PSY', 'Sophia', 'Green','sogreen@a-real-psy.es', '{bcrypt}$2a$10$xLFtBIXGtYvAbRqM95JhcOaG23fHRpDoZIJrsF2cCff9xEHTTdK1u', '2019562059', null);
INSERT INTO  user (id, type, first_name, last_name, mail, password, phone_number, psychologist_id) 
VALUES (14, 'PSY', 'Sonia', 'Perez','peso@gmail.es', '{bcrypt}$2a$10$xLFtBIXGtYvAbRqM95JhcOaG23fHRpDoZIJrsF2cCff9xEHTTdK1u', '2013062059', null);
INSERT INTO  user (id, type, first_name, last_name, mail, password, phone_number, psychologist_id) 
VALUES (15, 'PSY', 'Marcus', 'Clark','mark@notdc.es', '{bcrypt}$2a$10$xLFtBIXGtYvAbRqM95JhcOaG23fHRpDoZIJrsF2cCff9xEHTTdK1u', '8013562059', null);
INSERT INTO  user (id, type, first_name, last_name, mail, password, phone_number, psychologist_id) 
VALUES (16, 'PSY', 'Clara', 'Oscuro','clos@hotmail.es', '{bcrypt}$2a$10$xLFtBIXGtYvAbRqM95JhcOaG23fHRpDoZIJrsF2cCff9xEHTTdK1u', '7013562059', null);
INSERT INTO  user (id, type, first_name, last_name, mail, password, phone_number, psychologist_id) 
VALUES (17, 'PSY', 'Jhon', 'White','jhote@yahoo.es', '{bcrypt}$2a$10$xLFtBIXGtYvAbRqM95JhcOaG23fHRpDoZIJrsF2cCff9xEHTTdK1u', '2003562059', null);
INSERT INTO  user (id, type, first_name, last_name, mail, password, phone_number, psychologist_id) 
VALUES (18, 'PSY', 'Carlos', 'Rodriguez','carguez@alguncorreo.es', '{bcrypt}$2a$10$xLFtBIXGtYvAbRqM95JhcOaG23fHRpDoZIJrsF2cCff9xEHTTdK1u', '2013562053', null);
INSERT INTO  user (id, type, first_name, last_name, mail, password, phone_number, psychologist_id) 
VALUES (19, 'PSY', 'Manuel', 'Pelarez','manu_pelarez@yahoo.es', '{bcrypt}$2a$10$xLFtBIXGtYvAbRqM95JhcOaG23fHRpDoZIJrsF2cCff9xEHTTdK1u', '2013562069', null);
INSERT INTO  user (id, type, first_name, last_name, mail, password, phone_number, psychologist_id) 
VALUES (20, 'PSY', 'Emma1', 'Stone','stone-emma@hotmail.es', '{bcrypt}$2a$10$xLFtBIXGtYvAbRqM95JhcOaG23fHRpDoZIJrsF2cCff9xEHTTdK1u', '2013292059', null);
INSERT INTO  user (id, type, first_name, last_name, mail, password, phone_number, psychologist_id)
VALUES (21, 'PSY', 'Emma2', 'Stacy','stacy-emma@hotmail.es', '{bcrypt}$2a$10$xLFtBIXGtYvAbRqM95JhcOaG23fHRpDoZIJrsF2cCff9xEHTTdK1u', '8883292059', null);
INSERT INTO  user (id, type, first_name, last_name, mail, password, phone_number, psychologist_id) 
VALUES (22, 'PSY', 'Emma3', 'Brown','brown-emma@hotmail.es', '{bcrypt}$2a$10$xLFtBIXGtYvAbRqM95JhcOaG23fHRpDoZIJrsF2cCff9xEHTTdK1u', '9003292059', null);
INSERT INTO  user (id, type, first_name, last_name, mail, password, phone_number, psychologist_id) 
VALUES (23, 'PSY', 'Triss1', 'Gold','triss-gold@gmail.es', '{bcrypt}$2a$10$xLFtBIXGtYvAbRqM95JhcOaG23fHRpDoZIJrsF2cCff9xEHTTdK1u', '2010562059', null);
INSERT INTO  user (id, type, first_name, last_name, mail, password, phone_number, psychologist_id)
VALUES (24, 'PSY', 'Emma4', 'Stacy','stacy-emma@hotmail.es', '{bcrypt}$2a$10$xLFtBIXGtYvAbRqM95JhcOaG23fHRpDoZIJrsF2cCff9xEHTTdK1u', '8883292059', null);
INSERT INTO  user (id, type, first_name, last_name, mail, password, phone_number, psychologist_id) 
VALUES (25, 'PSY', 'Emma5', 'Brown','brown-emma@hotmail.es', '{bcrypt}$2a$10$xLFtBIXGtYvAbRqM95JhcOaG23fHRpDoZIJrsF2cCff9xEHTTdK1u', '9003292059', null);
INSERT INTO  user (id, type, first_name, last_name, mail, password, phone_number, psychologist_id) 
VALUES (26, 'PSY', 'Triss2', 'Gold','triss-gold@gmail.es', '{bcrypt}$2a$10$xLFtBIXGtYvAbRqM95JhcOaG23fHRpDoZIJrsF2cCff9xEHTTdK1u', '2010562059', null);
INSERT INTO  user (id, type, first_name, last_name, mail, password, phone_number, psychologist_id)
VALUES (27, 'PSY', 'Emma6', 'Stacy','stacy-emma@hotmail.es', '{bcrypt}$2a$10$xLFtBIXGtYvAbRqM95JhcOaG23fHRpDoZIJrsF2cCff9xEHTTdK1u', '8883292059', null);
INSERT INTO  user (id, type, first_name, last_name, mail, password, phone_number, psychologist_id) 
VALUES (28, 'PSY', 'Emma7', 'Brown','brown-emma@hotmail.es', '{bcrypt}$2a$10$xLFtBIXGtYvAbRqM95JhcOaG23fHRpDoZIJrsF2cCff9xEHTTdK1u', '9003292059', null);
INSERT INTO  user (id, type, first_name, last_name, mail, password, phone_number, psychologist_id) 
VALUES (29, 'PSY', 'Triss3', 'Gold','triss-gold@gmail.es', '{bcrypt}$2a$10$xLFtBIXGtYvAbRqM95JhcOaG23fHRpDoZIJrsF2cCff9xEHTTdK1u', '2010562059', null);
INSERT INTO  user (id, type, first_name, last_name, mail, password, phone_number, psychologist_id)
VALUES (30, 'PSY', 'Emma8', 'Stacy','stacy-emma@hotmail.es', '{bcrypt}$2a$10$xLFtBIXGtYvAbRqM95JhcOaG23fHRpDoZIJrsF2cCff9xEHTTdK1u', '8883292059', null);
INSERT INTO  user (id, type, first_name, last_name, mail, password, phone_number, psychologist_id) 
VALUES (31, 'PSY', 'Emma9', 'Brown','brown-emma@hotmail.es', '{bcrypt}$2a$10$xLFtBIXGtYvAbRqM95JhcOaG23fHRpDoZIJrsF2cCff9xEHTTdK1u', '9003292059', null);
INSERT INTO  user (id, type, first_name, last_name, mail, password, phone_number, psychologist_id) 
VALUES (32, 'PSY', 'Triss4', 'Gold','triss-gold@gmail.es', '{bcrypt}$2a$10$xLFtBIXGtYvAbRqM95JhcOaG23fHRpDoZIJrsF2cCff9xEHTTdK1u', '2010562059', null);
INSERT INTO  user (id, type, first_name, last_name, mail, password, phone_number, psychologist_id)
VALUES (33, 'PSY', 'Emma10', 'Stacy','stacy-emma@hotmail.es', '{bcrypt}$2a$10$xLFtBIXGtYvAbRqM95JhcOaG23fHRpDoZIJrsF2cCff9xEHTTdK1u', '8883292059', null);
INSERT INTO  user (id, type, first_name, last_name, mail, password, phone_number, psychologist_id) 
VALUES (34, 'PSY', 'Emma11', 'Brown','brown-emma@hotmail.es', '{bcrypt}$2a$10$xLFtBIXGtYvAbRqM95JhcOaG23fHRpDoZIJrsF2cCff9xEHTTdK1u', '9003292059', null);
INSERT INTO  user (id, type, first_name, last_name, mail, password, phone_number, psychologist_id) 
VALUES (35, 'PSY', 'Triss4', 'Gold','triss-gold@gmail.es', '{bcrypt}$2a$10$xLFtBIXGtYvAbRqM95JhcOaG23fHRpDoZIJrsF2cCff9xEHTTdK1u', '2010562059', null);
INSERT INTO  user (id, type, first_name, last_name, mail, password, phone_number, psychologist_id)
VALUES (36, 'PSY', 'Emma12', 'Stacy','stacy-emma@hotmail.es', '{bcrypt}$2a$10$xLFtBIXGtYvAbRqM95JhcOaG23fHRpDoZIJrsF2cCff9xEHTTdK1u', '8883292059', null);
INSERT INTO  user (id, type, first_name, last_name, mail, password, phone_number, psychologist_id) 
VALUES (37, 'PSY', 'Emma13', 'Brown','brown-emma@hotmail.es', '{bcrypt}$2a$10$xLFtBIXGtYvAbRqM95JhcOaG23fHRpDoZIJrsF2cCff9xEHTTdK1u', '9003292059', null);
INSERT INTO  user (id, type, first_name, last_name, mail, password, phone_number, psychologist_id) 
VALUES (38, 'PSY', 'Triss6', 'Gold','triss-gold@gmail.es', '{bcrypt}$2a$10$xLFtBIXGtYvAbRqM95JhcOaG23fHRpDoZIJrsF2cCff9xEHTTdK1u', '2010562059', null);
INSERT INTO  user (id, type, first_name, last_name, mail, password, phone_number, psychologist_id)
VALUES (39, 'PSY', 'Emma14', 'Stacy','stacy-emma@hotmail.es', '{bcrypt}$2a$10$xLFtBIXGtYvAbRqM95JhcOaG23fHRpDoZIJrsF2cCff9xEHTTdK1u', '8883292059', null);
INSERT INTO  user (id, type, first_name, last_name, mail, password, phone_number, psychologist_id) 
VALUES (40, 'PSY', 'Emma15', 'Brown','brown-emma@hotmail.es', '{bcrypt}$2a$10$xLFtBIXGtYvAbRqM95JhcOaG23fHRpDoZIJrsF2cCff9xEHTTdK1u', '9003292059', null);
INSERT INTO  user (id, type, first_name, last_name, mail, password, phone_number, psychologist_id) 
VALUES (41, 'PSY', 'Triss7', 'Gold','triss-gold@gmail.es', '{bcrypt}$2a$10$xLFtBIXGtYvAbRqM95JhcOaG23fHRpDoZIJrsF2cCff9xEHTTdK1u', '2010562059', null);
--insert a default user
INSERT INTO  user (id, type, first_name, last_name, mail, password, phone_number, psychologist_id, disorder, treatment) 
VALUES (100, 'PAT', 'Paco', 'Es Batman','pacoelmagias@elmundomagico.es', '{bcrypt}$2a$10$xLFtBIXGtYvAbRqM95JhcOaG23fHRpDoZIJrsF2cCff9xEHTTdK1u', '2017568459', 11, 'Loquísimo', 'Pastillas super fuertes');
INSERT INTO  user (id, type, first_name, last_name, mail, password, phone_number,psychologist_id,disorder, treatment) 
VALUES (101, 'PAT', 'Paca', 'Es Robin','robin@jnotmail.es', '{bcrypt}$2a$10$xLFtBIXGtYvAbRqM95JhcOaG23fHRpDoZIJrsF2cCff9xEHTTdK1u', '2013568454', 13,'Loquísimo', 'Pastillas super fuertes');
INSERT INTO  user (id, type, first_name, last_name, mail, password, phone_number, psychologist_id, disorder, treatment) 
VALUES (102, 'PAT', 'Poca', 'Cosa','poca-cosa@hotmail.es', '{bcrypt}$2a$10$xLFtBIXGtYvAbRqM95JhcOaG23fHRpDoZIJrsF2cCff9xEHTTdK1u', '2013568458', 11, 'Depresión', 'Fiesta en la piscina');
INSERT INTO  user (id, type, first_name, last_name, mail, password, phone_number, psychologist_id,disorder, treatment) 
VALUES (103, 'PAT', 'Pica', 'Carta','carta-pica@kmail.es', '{bcrypt}$2a$10$xLFtBIXGtYvAbRqM95JhcOaG23fHRpDoZIJrsF2cCff9xEHTTdK1u', '2013568443', 20,'Loquísimo', 'Pastillas super fuertes');
INSERT INTO  user (id, type, first_name, last_name, mail, password, phone_number, psychologist_id,disorder, treatment) 
VALUES (104, 'PAT', 'Clara', 'Col','claracol@danacol.es', '{bcrypt}$2a$10$xLFtBIXGtYvAbRqM95JhcOaG23fHRpDoZIJrsF2cCff9xEHTTdK1u', '2013568438', 21,'Loquísimo', 'Pastillas super fuertes');
INSERT INTO  user (id, type, first_name, last_name, mail, password, phone_number, psychologist_id,disorder, treatment) 
VALUES (105, 'PAT', 'Claro', 'Clarito','noclaro@yahomail.es', '{bcrypt}$2a$10$xLFtBIXGtYvAbRqM95JhcOaG23fHRpDoZIJrsF2cCff9xEHTTdK1u', '2013568460', 12,'Loquísimo', 'Pastillas super fuertes');
INSERT INTO  user (id, type, first_name, last_name, mail, password, phone_number, psychologist_id,disorder, treatment) 
VALUES (106, 'PAT', 'Cloro', 'Alcohol','novodka@ru-mail.es', '{bcrypt}$2a$10$xLFtBIXGtYvAbRqM95JhcOaG23fHRpDoZIJrsF2cCff9xEHTTdK1u', '2013568461', 12,'Loquísimo', 'Pastillas super fuertes');
INSERT INTO  user (id, type, first_name, last_name, mail, password, phone_number, psychologist_id,disorder, treatment) 
VALUES (107, 'PAT', 'Clora', 'Bato','batidora@braun.es', '{bcrypt}$2a$10$xLFtBIXGtYvAbRqM95JhcOaG23fHRpDoZIJrsF2cCff9xEHTTdK1u', '2013568462', 15,'Loquísimo', 'Pastillas super fuertes');
INSERT INTO  user (id, type, first_name, last_name, mail, password, phone_number, psychologist_id,disorder, treatment) 
VALUES (108, 'PAT', 'Sara', 'Perez','perez-sara@corporate.es', '{bcrypt}$2a$10$xLFtBIXGtYvAbRqM95JhcOaG23fHRpDoZIJrsF2cCff9xEHTTdK1u', '2013553459', 16,'Loquísimo', 'Pastillas super fuertes');
INSERT INTO  user (id, type, first_name, last_name, mail, password, phone_number, psychologist_id,disorder, treatment) 
VALUES (109, 'PAT', 'Sari', 'Ta','sari-ta@wmail.es', '{bcrypt}$2a$10$xLFtBIXGtYvAbRqM95JhcOaG23fHRpDoZIJrsF2cCff9xEHTTdK1u', '2013566759', 19,'Loquísimo', 'Pastillas super fuertes');
INSERT INTO  user (id, type, first_name, last_name, mail, password, phone_number, psychologist_id,disorder, treatment) 
VALUES (110, 'PAT', 'Sora', 'Sora','sora2@pmail.es', '{bcrypt}$2a$10$xLFtBIXGtYvAbRqM95JhcOaG23fHRpDoZIJrsF2cCff9xEHTTdK1u', '2013569059', 17,'Loquísimo', 'Pastillas super fuertes');
INSERT INTO  user (id, type, first_name, last_name, mail, password, phone_number, psychologist_id,disorder, treatment) 
VALUES (111, 'PAT', 'Saro', 'Sal','sarosal@bmail.es', '{bcrypt}$2a$10$xLFtBIXGtYvAbRqM95JhcOaG23fHRpDoZIJrsF2cCff9xEHTTdK1u', '2013521459', 14,'Loquísimo', 'Pastillas super fuertes');
INSERT INTO  user (id, type, first_name, last_name, mail, password, phone_number, psychologist_id,disorder, treatment) 
VALUES (112, 'PAT', 'Irene', 'ramirez','iremi@bmail.es', '{bcrypt}$2a$10$xLFtBIXGtYvAbRqM95JhcOaG23fHRpDoZIJrsF2cCff9xEHTTdK1u', '2016661459', 14,'Loquísimo', 'Pastillas super fuertes');
INSERT INTO  user (id, type, first_name, last_name, mail, password, phone_number, psychologist_id,disorder, treatment) 
VALUES (113, 'PAT', 'Irene', 'Gomez','inemez@bmail.es', '{bcrypt}$2a$10$xLFtBIXGtYvAbRqM95JhcOaG23fHRpDoZIJrsF2cCff9xEHTTdK1u', '2013521333', 14,'Loquísimo', 'Pastillas super fuertes');
INSERT INTO  user (id, type, first_name, last_name, mail, password, phone_number, psychologist_id,disorder, treatment) 
VALUES (114, 'PAT', 'Irene', 'Gonzalez','regon@bmail.es', '{bcrypt}$2a$10$xLFtBIXGtYvAbRqM95JhcOaG23fHRpDoZIJrsF2cCff9xEHTTdK1u', '2013521777', 14,'Loquísimo', 'Pastillas super fuertes');
