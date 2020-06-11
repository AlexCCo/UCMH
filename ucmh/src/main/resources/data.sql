--insert default admins
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
VALUES (24, 'PSY', 'Emma4', 'Stacy','0stacy-emma@hotmail.es', '{bcrypt}$2a$10$xLFtBIXGtYvAbRqM95JhcOaG23fHRpDoZIJrsF2cCff9xEHTTdK1u', '8883292059', null);
INSERT INTO  user (id, type, first_name, last_name, mail, password, phone_number, psychologist_id) 
VALUES (25, 'PSY', 'Emma5', 'Brown','0brown-emma@hotmail.es', '{bcrypt}$2a$10$xLFtBIXGtYvAbRqM95JhcOaG23fHRpDoZIJrsF2cCff9xEHTTdK1u', '9003292059', null);
INSERT INTO  user (id, type, first_name, last_name, mail, password, phone_number, psychologist_id) 
VALUES (26, 'PSY', 'Triss2', 'Gold','0triss-gold@gmail.es', '{bcrypt}$2a$10$xLFtBIXGtYvAbRqM95JhcOaG23fHRpDoZIJrsF2cCff9xEHTTdK1u', '2010562059', null);
INSERT INTO  user (id, type, first_name, last_name, mail, password, phone_number, psychologist_id)
VALUES (27, 'PSY', 'Emma6', 'Stacy','1stacy-emma@hotmail.es', '{bcrypt}$2a$10$xLFtBIXGtYvAbRqM95JhcOaG23fHRpDoZIJrsF2cCff9xEHTTdK1u', '8883292059', null);
INSERT INTO  user (id, type, first_name, last_name, mail, password, phone_number, psychologist_id) 
VALUES (28, 'PSY', 'Emma7', 'Brown','1brown-emma@hotmail.es', '{bcrypt}$2a$10$xLFtBIXGtYvAbRqM95JhcOaG23fHRpDoZIJrsF2cCff9xEHTTdK1u', '9003292059', null);
INSERT INTO  user (id, type, first_name, last_name, mail, password, phone_number, psychologist_id) 
VALUES (29, 'PSY', 'Triss3', 'Gold','1triss-gold@gmail.es', '{bcrypt}$2a$10$xLFtBIXGtYvAbRqM95JhcOaG23fHRpDoZIJrsF2cCff9xEHTTdK1u', '2010562059', null);
INSERT INTO  user (id, type, first_name, last_name, mail, password, phone_number, psychologist_id)
VALUES (30, 'PSY', 'Emma8', 'Stacy','2stacy-emma@hotmail.es', '{bcrypt}$2a$10$xLFtBIXGtYvAbRqM95JhcOaG23fHRpDoZIJrsF2cCff9xEHTTdK1u', '8883292059', null);
INSERT INTO  user (id, type, first_name, last_name, mail, password, phone_number, psychologist_id) 
VALUES (31, 'PSY', 'Emma9', 'Brown','2brown-emma@hotmail.es', '{bcrypt}$2a$10$xLFtBIXGtYvAbRqM95JhcOaG23fHRpDoZIJrsF2cCff9xEHTTdK1u', '9003292059', null);
INSERT INTO  user (id, type, first_name, last_name, mail, password, phone_number, psychologist_id) 
VALUES (32, 'PSY', 'Triss4', 'Gold','2triss-gold@gmail.es', '{bcrypt}$2a$10$xLFtBIXGtYvAbRqM95JhcOaG23fHRpDoZIJrsF2cCff9xEHTTdK1u', '2010562059', null);
INSERT INTO  user (id, type, first_name, last_name, mail, password, phone_number, psychologist_id)
VALUES (33, 'PSY', 'Emma10', 'Stacy','3stacy-emma@hotmail.es', '{bcrypt}$2a$10$xLFtBIXGtYvAbRqM95JhcOaG23fHRpDoZIJrsF2cCff9xEHTTdK1u', '8883292059', null);
INSERT INTO  user (id, type, first_name, last_name, mail, password, phone_number, psychologist_id) 
VALUES (34, 'PSY', 'Emma11', 'Brown','3brown-emma@hotmail.es', '{bcrypt}$2a$10$xLFtBIXGtYvAbRqM95JhcOaG23fHRpDoZIJrsF2cCff9xEHTTdK1u', '9003292059', null);
INSERT INTO  user (id, type, first_name, last_name, mail, password, phone_number, psychologist_id) 
VALUES (35, 'PSY', 'Triss4', 'Gold','3triss-gold@gmail.es', '{bcrypt}$2a$10$xLFtBIXGtYvAbRqM95JhcOaG23fHRpDoZIJrsF2cCff9xEHTTdK1u', '2010562059', null);
INSERT INTO  user (id, type, first_name, last_name, mail, password, phone_number, psychologist_id)
VALUES (36, 'PSY', 'Emma12', 'Stacy','4stacy-emma@hotmail.es', '{bcrypt}$2a$10$xLFtBIXGtYvAbRqM95JhcOaG23fHRpDoZIJrsF2cCff9xEHTTdK1u', '8883292059', null);
INSERT INTO  user (id, type, first_name, last_name, mail, password, phone_number, psychologist_id) 
VALUES (37, 'PSY', 'Emma13', 'Brown','4brown-emma@hotmail.es', '{bcrypt}$2a$10$xLFtBIXGtYvAbRqM95JhcOaG23fHRpDoZIJrsF2cCff9xEHTTdK1u', '9003292059', null);
INSERT INTO  user (id, type, first_name, last_name, mail, password, phone_number, psychologist_id) 
VALUES (38, 'PSY', 'Triss6', 'Gold','4triss-gold@gmail.es', '{bcrypt}$2a$10$xLFtBIXGtYvAbRqM95JhcOaG23fHRpDoZIJrsF2cCff9xEHTTdK1u', '2010562059', null);
INSERT INTO  user (id, type, first_name, last_name, mail, password, phone_number, psychologist_id)
VALUES (39, 'PSY', 'Emma14', 'Stacy','5stacy-emma@hotmail.es', '{bcrypt}$2a$10$xLFtBIXGtYvAbRqM95JhcOaG23fHRpDoZIJrsF2cCff9xEHTTdK1u', '8883292059', null);
INSERT INTO  user (id, type, first_name, last_name, mail, password, phone_number, psychologist_id) 
VALUES (40, 'PSY', 'Emma15', 'Brown','5brown-emma@hotmail.es', '{bcrypt}$2a$10$xLFtBIXGtYvAbRqM95JhcOaG23fHRpDoZIJrsF2cCff9xEHTTdK1u', '9003292059', null);
INSERT INTO  user (id, type, first_name, last_name, mail, password, phone_number, psychologist_id) 
VALUES (41, 'PSY', 'Triss7', 'Gold','5triss-gold@gmail.es', '{bcrypt}$2a$10$xLFtBIXGtYvAbRqM95JhcOaG23fHRpDoZIJrsF2cCff9xEHTTdK1u', '2010562059', null);
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
--insert some default appointments
INSERT INTO appointment (id, fecha, patient_id, psychologist_id)
VALUES (1, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'), 100, 11);
INSERT INTO appointment (id, fecha, patient_id, psychologist_id)
VALUES (2, TO_DATE('17/11/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'), 100, 11);
INSERT INTO appointment (id, fecha, patient_id, psychologist_id)
VALUES (3, TO_DATE('17/10/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'), 100, 11);
INSERT INTO appointment (id, fecha, patient_id, psychologist_id)
VALUES (4, TO_DATE('17/9/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'), 100, 11);
INSERT INTO appointment (id, fecha, patient_id, psychologist_id)
VALUES (5, TO_DATE('17/8/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'), 100, 11);
--insert some default psychologist history entries
INSERT INTO patient_history (entry_id, made_by_id, entry_text, patient_mail, entry_date)
VALUES (1, 11, 'The patient seems altered by some tragic trauma from its youth', 'pacoelmagias@elmundomagico.es', TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'));
INSERT INTO patient_history (entry_id, made_by_id, entry_text, patient_mail, entry_date)
VALUES (2, 11, 'The patient seems altered by some tragic trauma from its youth', 'pacoelmagias@elmundomagico.es', TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'));
INSERT INTO patient_history (entry_id, made_by_id, entry_text, patient_mail, entry_date)
VALUES (3, 11, 'The patient seems altered by some tragic trauma from its youth', 'pacoelmagias@elmundomagico.es', TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'));
INSERT INTO patient_history (entry_id, made_by_id, entry_text, patient_mail, entry_date)
VALUES (4, 11, 'The patient seems altered by some tragic trauma from its youth', 'pacoelmagias@elmundomagico.es', TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'));
INSERT INTO patient_history (entry_id, made_by_id, entry_text, patient_mail, entry_date)
VALUES (5, 11, 'The patient seems altered by some tragic trauma from its youth', 'pacoelmagias@elmundomagico.es', TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'));
INSERT INTO patient_history (entry_id, made_by_id, entry_text, patient_mail, entry_date)
VALUES (6, 11, 'The patient seems altered by some tragic trauma from its youth', 'pacoelmagias@elmundomagico.es', TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'));
INSERT INTO patient_history (entry_id, made_by_id, entry_text, patient_mail, entry_date)
VALUES (7, 11, 'The patient seems altered by some tragic trauma from its youth', 'pacoelmagias@elmundomagico.es', TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'));
INSERT INTO patient_history (entry_id, made_by_id, entry_text, patient_mail, entry_date)
VALUES (8, 11, 'The patient seems altered by some tragic trauma from its youth', 'pacoelmagias@elmundomagico.es', TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'));
INSERT INTO patient_history (entry_id, made_by_id, entry_text, patient_mail, entry_date)
VALUES (9, 11, 'The patient seems altered by some tragic trauma from its youth', 'pacoelmagias@elmundomagico.es', TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'));
INSERT INTO patient_history (entry_id, made_by_id, entry_text, patient_mail, entry_date)
VALUES (10, 11, 'The patient seems altered by some tragic trauma from its youth', 'poca-cosa@hotmail.es', TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'));
INSERT INTO patient_history (entry_id, made_by_id, entry_text, patient_mail, entry_date)
VALUES (11, 11, 'The patient seems altered by some tragic trauma from its youth', 'poca-cosa@hotmail.es', TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'));
INSERT INTO patient_history (entry_id, made_by_id, entry_text, patient_mail, entry_date)
VALUES (12, 11, 'The patient seems altered by some tragic trauma from its youth', 'poca-cosa@hotmail.es', TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'));
INSERT INTO patient_history (entry_id, made_by_id, entry_text, patient_mail, entry_date)
VALUES (13, 11, 'The patient seems altered by some tragic trauma from its youth', 'poca-cosa@hotmail.es', TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'));
INSERT INTO patient_history (entry_id, made_by_id, entry_text, patient_mail, entry_date)
VALUES (14, 11, 'The patient seems altered by some tragic trauma from its youth', 'poca-cosa@hotmail.es', TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'));
INSERT INTO patient_history (entry_id, made_by_id, entry_text, patient_mail, entry_date)
VALUES (15, 11, 'The patient seems altered by some tragic trauma from its youth', 'poca-cosa@hotmail.es', TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'));
INSERT INTO patient_history (entry_id, made_by_id, entry_text, patient_mail, entry_date)
VALUES (16, 11, 'The patient seems altered by some tragic trauma from its youth', 'poca-cosa@hotmail.es', TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'));
INSERT INTO patient_history (entry_id, made_by_id, entry_text, patient_mail, entry_date)
VALUES (17, 11, 'The patient seems altered by some tragic trauma from its youth', 'poca-cosa@hotmail.es', TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'));
INSERT INTO patient_history (entry_id, made_by_id, entry_text, patient_mail, entry_date)
VALUES (18, 11, 'The patient seems altered by some tragic trauma from its youth', 'poca-cosa@hotmail.es', TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'));
--insert default messages
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 10, 17, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (2, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 10, 26, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (3, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 10, 19, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (4, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 10, 14, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (5, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 11, 13, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (6, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 11, 33, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (7, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 11, 28, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (8, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 11, 33, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (9, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 12, 32, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (10, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 12, 32, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (11, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 12, 36, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (12, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 12, 33, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (13, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 13, 37, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (14, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 13, 15, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (15, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 13, 27, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (16, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 13, 15, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (17, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 14, 16, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (18, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 14, 11, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (19, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 14, 30, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (20, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 14, 35, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (21, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 15, 38, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (22, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 15, 41, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (23, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 15, 34, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (24, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 15, 26, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (25, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 16, 22, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (26, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 16, 35, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (27, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 16, 41, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (28, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 16, 35, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (29, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 17, 35, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (30, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 17, 23, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (31, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 17, 24, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (32, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 17, 38, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (33, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 18, 26, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (34, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 18, 40, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (35, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 18, 30, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (36, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 18, 39, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (37, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 19, 28, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (38, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 19, 24, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (39, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 19, 30, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (40, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 19, 28, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (41, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 20, 11, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (42, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 20, 41, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (43, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 20, 18, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (44, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 20, 10, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (45, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 21, 33, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (46, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 21, 11, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (47, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 21, 16, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (48, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 21, 30, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (49, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 22, 26, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (50, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 22, 29, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (51, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 22, 11, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (52, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 22, 29, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (53, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 23, 31, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (54, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 23, 27, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (55, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 23, 30, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (56, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 23, 38, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (57, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 24, 41, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (58, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 24, 12, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (59, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 24, 22, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (60, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 24, 32, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (61, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 25, 20, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (62, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 25, 19, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (63, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 25, 17, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (64, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 25, 40, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (65, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 26, 40, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (66, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 26, 30, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (67, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 26, 38, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (68, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 26, 37, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (69, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 27, 39, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (70, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 27, 22, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (71, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 27, 17, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (72, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 27, 18, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (73, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 28, 41, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (74, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 28, 26, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (75, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 28, 30, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (76, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 28, 19, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (77, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 29, 17, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (78, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 29, 37, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (79, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 29, 36, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (80, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 29, 31, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (81, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 30, 29, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (82, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 30, 10, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (83, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 30, 22, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (84, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 30, 31, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (85, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 31, 11, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (86, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 31, 40, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (87, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 31, 18, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (88, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 31, 10, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (89, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 32, 12, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (90, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 32, 23, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (91, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 32, 36, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (92, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 32, 16, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (93, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 33, 31, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (94, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 33, 27, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (95, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 33, 14, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (96, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 33, 14, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (97, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 34, 21, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (98, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 34, 35, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (99, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 34, 20, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (100, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 34, 38, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (101, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 35, 19, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (102, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 35, 41, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (103, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 35, 32, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (104, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 35, 19, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (105, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 36, 31, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (106, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 36, 34, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (107, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 36, 19, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (108, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 36, 31, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (109, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 37, 18, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (110, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 37, 12, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (111, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 37, 14, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (112, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 37, 39, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (113, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 38, 12, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (114, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 38, 40, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (115, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 38, 25, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (116, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 38, 13, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (117, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 39, 29, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (118, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 39, 30, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (119, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 39, 15, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (120, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 39, 33, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (121, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 40, 35, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (122, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 40, 20, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (123, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 40, 21, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (124, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 40, 31, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (125, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 41, 36, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (126, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 41, 10, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (127, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 41, 15, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (128, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 41, 21, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (129, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 100, 110, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (130, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 100, 101, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (131, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 100, 106, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (132, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 100, 101, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (133, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 101, 107, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (134, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 101, 106, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (135, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 101, 102, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (136, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 101, 106, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (137, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 102, 100, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (138, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 102, 103, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (139, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 102, 112, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (140, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 102, 107, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (141, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 103, 107, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (142, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 103, 110, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (143, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 103, 104, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (144, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 103, 111, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (145, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 104, 111, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (146, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 104, 108, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (147, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 104, 103, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (148, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 104, 106, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (149, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 105, 107, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (150, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 105, 100, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (151, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 105, 110, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (152, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 105, 109, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (153, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 106, 100, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (154, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 106, 103, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (155, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 106, 105, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (156, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 106, 104, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (157, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 107, 101, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (158, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 107, 109, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (159, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 107, 103, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (160, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 107, 112, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (161, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 108, 111, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (162, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 108, 101, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (163, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 108, 109, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (164, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 108, 107, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (165, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 109, 111, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (166, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 109, 101, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (167, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 109, 112, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (168, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 109, 103, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (169, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 110, 112, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (170, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 110, 108, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (171, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 110, 108, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (172, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 110, 100, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (173, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 111, 101, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (174, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 111, 112, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (175, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 111, 108, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (176, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 111, 103, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (177, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 112, 106, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (178, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 112, 105, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (179, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 112, 100, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (180, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 112, 108, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (181, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 113, 100, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (182, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 113, 106, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (183, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 113, 108, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (184, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 113, 100, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (185, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 10, 34, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (186, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 10, 19, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (187, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 10, 41, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (188, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 10, 34, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (189, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 11, 33, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (190, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 11, 38, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (191, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 11, 32, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (192, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 11, 37, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (193, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 12, 29, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (194, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 12, 31, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (195, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 12, 35, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (196, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 12, 16, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (197, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 13, 23, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (198, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 13, 32, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (199, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 13, 15, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (200, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 13, 15, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (201, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 14, 31, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (202, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 14, 35, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (203, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 14, 37, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (204, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 14, 32, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (205, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 15, 26, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (206, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 15, 20, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (207, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 15, 36, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (208, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 15, 24, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (209, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 16, 11, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (210, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 16, 12, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (211, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 16, 15, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (212, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 16, 17, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (213, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 17, 16, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (214, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 17, 28, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (215, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 17, 23, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (216, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 17, 15, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (217, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 18, 20, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (218, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 18, 36, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (219, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 18, 29, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (220, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 18, 12, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (221, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 19, 24, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (222, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 19, 36, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (223, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 19, 39, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (224, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 19, 10, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (225, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 20, 37, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (226, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 20, 18, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (227, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 20, 12, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (228, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 20, 32, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (229, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 21, 34, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (230, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 21, 12, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (231, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 21, 29, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (232, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 21, 11, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (233, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 22, 34, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (234, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 22, 11, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (235, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 22, 24, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (236, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 22, 26, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (237, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 23, 33, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (238, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 23, 35, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (239, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 23, 32, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (240, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 23, 15, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (241, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 24, 20, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (242, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 24, 30, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (243, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 24, 32, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (244, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 24, 26, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (245, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 25, 36, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (246, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 25, 17, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (247, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 25, 40, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (248, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 25, 36, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (249, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 26, 35, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (250, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 26, 41, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (251, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 26, 22, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (252, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 26, 35, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (253, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 27, 16, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (254, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 27, 16, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (255, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 27, 26, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (256, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 27, 33, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (257, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 28, 13, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (258, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 28, 35, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (259, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 28, 22, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (260, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 28, 25, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (261, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 29, 32, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (262, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 29, 14, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (263, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 29, 30, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (264, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 29, 11, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (265, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 30, 20, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (266, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 30, 10, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (267, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 30, 31, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (268, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 30, 19, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (269, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 31, 21, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (270, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 31, 30, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (271, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 31, 10, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (272, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 31, 35, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (273, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 32, 26, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (274, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 32, 22, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (275, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 32, 14, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (276, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 32, 11, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (277, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 33, 26, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (278, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 33, 40, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (279, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 33, 23, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (280, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 33, 26, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (281, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 34, 15, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (282, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 34, 29, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (283, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 34, 33, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (284, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 34, 41, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (285, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 35, 14, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (286, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 35, 28, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (287, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 35, 24, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (288, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 35, 31, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (289, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 36, 20, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (290, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 36, 16, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (291, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 36, 35, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (292, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 36, 41, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (293, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 37, 32, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (294, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 37, 31, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (295, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 37, 11, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (296, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 37, 20, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (297, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 38, 17, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (298, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 38, 18, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (299, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 38, 30, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (300, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 38, 30, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (301, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 39, 25, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (302, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 39, 33, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (303, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 39, 34, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (304, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 39, 37, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (305, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 40, 34, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (306, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 40, 41, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (307, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 40, 13, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (308, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 40, 30, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (309, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 41, 28, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (310, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 41, 11, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (311, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 41, 21, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (312, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 41, 38, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (313, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 100, 110, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (314, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 100, 112, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (315, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 100, 112, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (316, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 100, 109, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (317, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 101, 104, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (318, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 101, 100, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (319, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 101, 110, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (320, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 101, 104, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (321, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 102, 100, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (322, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 102, 108, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (323, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 102, 110, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (324, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 102, 106, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (325, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 103, 107, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (326, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 103, 109, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (327, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 103, 106, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (328, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 103, 107, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (329, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 104, 108, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (330, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 104, 113, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (331, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 104, 100, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (332, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 104, 103, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (333, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 105, 106, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (334, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 105, 101, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (335, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 105, 100, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (336, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 105, 107, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (337, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 106, 105, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (338, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 106, 110, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (339, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 106, 113, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (340, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 106, 113, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (341, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 107, 105, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (342, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 107, 102, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (343, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 107, 111, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (344, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 107, 108, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (345, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 108, 112, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (346, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 108, 101, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (347, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 108, 105, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (348, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 108, 110, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (349, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 109, 100, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (350, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 109, 108, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (351, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 109, 112, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (352, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 109, 101, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (353, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 110, 103, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (354, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 110, 107, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (355, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 110, 101, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (356, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 110, 106, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (357, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 111, 112, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (358, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 111, 100, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (359, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 111, 109, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (360, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 111, 106, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (361, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 112, 113, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (362, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 112, 107, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (363, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 112, 103, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (364, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 112, 107, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (365, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 113, 102, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (366, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 113, 100, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (367, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 113, 109, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (368, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 113, 109, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (369, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 10, 32, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (370, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 10, 20, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (371, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 10, 13, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (372, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 10, 36, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (373, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 11, 26, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (374, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 11, 28, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (375, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 11, 30, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (376, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 11, 26, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (377, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 12, 18, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (378, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 12, 26, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (379, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 12, 39, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (380, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 12, 13, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (381, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 13, 30, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (382, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 13, 37, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (383, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 13, 28, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (384, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 13, 19, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (385, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 14, 18, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (386, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 14, 15, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (387, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 14, 32, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (388, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 14, 31, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (389, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 15, 32, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (390, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 15, 20, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (391, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 15, 36, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (392, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 15, 18, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (393, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 16, 31, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (394, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 16, 17, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (395, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 16, 22, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (396, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 16, 12, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (397, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 17, 15, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (398, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 17, 18, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (399, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 17, 30, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (400, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 17, 21, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (401, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 18, 27, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (402, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 18, 32, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (403, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 18, 23, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (404, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 18, 14, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (405, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 19, 16, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (406, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 19, 35, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (407, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 19, 28, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (408, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 19, 26, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (409, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 20, 10, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (410, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 20, 26, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (411, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 20, 31, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (412, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 20, 37, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (413, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 21, 34, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (414, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 21, 10, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (415, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 21, 10, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (416, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 21, 12, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (417, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 22, 38, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (418, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 22, 14, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (419, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 22, 16, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (420, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 22, 30, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (421, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 23, 19, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (422, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 23, 20, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (423, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 23, 27, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (424, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 23, 25, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (425, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 24, 28, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (426, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 24, 22, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (427, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 24, 11, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (428, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 24, 39, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (429, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 25, 10, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (430, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 25, 19, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (431, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 25, 35, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (432, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 25, 22, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (433, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 26, 22, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (434, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 26, 18, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (435, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 26, 14, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (436, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 26, 37, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (437, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 27, 23, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (438, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 27, 10, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (439, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 27, 11, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (440, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 27, 26, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (441, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 28, 25, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (442, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 28, 12, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (443, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 28, 15, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (444, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 28, 13, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (445, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 29, 20, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (446, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 29, 38, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (447, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 29, 26, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (448, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 29, 14, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (449, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 30, 37, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (450, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 30, 17, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (451, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 30, 17, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (452, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 30, 27, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (453, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 31, 37, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (454, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 31, 38, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (455, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 31, 15, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (456, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 31, 20, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (457, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 32, 15, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (458, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 32, 22, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (459, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 32, 39, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (460, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 32, 41, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (461, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 33, 12, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (462, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 33, 23, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (463, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 33, 19, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (464, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 33, 34, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (465, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 34, 17, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (466, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 34, 40, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (467, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 34, 37, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (468, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 34, 41, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (469, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 35, 14, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (470, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 35, 12, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (471, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 35, 12, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (472, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 35, 22, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (473, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 36, 27, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (474, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 36, 11, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (475, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 36, 11, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (476, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 36, 14, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (477, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 37, 18, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (478, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 37, 16, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (479, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 37, 32, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (480, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 37, 36, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (481, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 38, 24, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (482, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 38, 13, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (483, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 38, 31, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (484, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 38, 27, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (485, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 39, 40, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (486, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 39, 40, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (487, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 39, 18, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (488, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 39, 22, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (489, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 40, 17, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (490, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 40, 39, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (491, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 40, 32, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (492, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 40, 26, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (493, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 41, 28, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (494, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 41, 30, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (495, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 41, 10, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (496, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 41, 18, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (497, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 100, 107, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (498, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 100, 109, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (499, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 100, 108, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (500, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 100, 110, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (501, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 101, 110, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (502, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 101, 111, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (503, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 101, 100, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (504, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 101, 100, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (505, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 102, 112, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (506, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 102, 101, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (507, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 102, 100, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (508, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 102, 105, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (509, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 103, 104, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (510, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 103, 105, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (511, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 103, 108, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (512, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 103, 100, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (513, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 104, 106, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (514, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 104, 109, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (515, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 104, 105, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (516, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 104, 106, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (517, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 105, 102, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (518, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 105, 103, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (519, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 105, 101, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (520, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 105, 100, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (521, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 106, 107, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (522, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 106, 104, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (523, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 106, 107, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (524, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 106, 112, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (525, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 107, 101, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (526, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 107, 104, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (527, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 107, 104, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (528, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 107, 105, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (529, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 108, 103, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (530, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 108, 107, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (531, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 108, 101, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (532, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 108, 113, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (533, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 109, 106, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (534, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 109, 106, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (535, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 109, 113, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (536, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 109, 112, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (537, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 110, 104, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (538, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 110, 107, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (539, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 110, 103, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (540, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 110, 101, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (541, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 111, 105, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (542, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 111, 100, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (543, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 111, 110, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (544, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 111, 104, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (545, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 112, 104, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (546, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 112, 105, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (547, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 112, 110, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (548, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 112, 110, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (549, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 113, 104, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (550, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 113, 110, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (551, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 113, 109, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (552, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 113, 111, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (553, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 10, 27, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (554, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 10, 22, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (555, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 10, 30, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (556, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 10, 39, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (557, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 11, 40, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (558, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 11, 26, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (559, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 11, 33, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (560, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 11, 24, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (561, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 12, 26, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (562, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 12, 25, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (563, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 12, 13, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (564, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 12, 32, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (565, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 13, 22, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (566, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 13, 10, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (567, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 13, 37, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (568, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 13, 24, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (569, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 14, 29, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (570, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 14, 27, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (571, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 14, 32, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (572, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 14, 22, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (573, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 15, 18, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (574, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 15, 31, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (575, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 15, 14, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (576, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 15, 16, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (577, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 16, 24, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (578, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 16, 30, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (579, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 16, 23, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (580, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 16, 28, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (581, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 17, 33, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (582, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 17, 33, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (583, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 17, 15, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (584, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 17, 15, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (585, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 18, 17, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (586, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 18, 17, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (587, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 18, 30, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (588, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 18, 27, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (589, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 19, 14, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (590, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 19, 23, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (591, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 19, 34, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (592, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 19, 40, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (593, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 20, 36, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (594, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 20, 41, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (595, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 20, 28, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (596, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 20, 22, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (597, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 21, 25, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (598, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 21, 29, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (599, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 21, 14, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (600, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 21, 39, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (601, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 22, 21, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (602, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 22, 31, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (603, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 22, 11, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (604, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 22, 24, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (605, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 23, 20, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (606, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 23, 41, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (607, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 23, 34, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (608, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 23, 21, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (609, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 24, 27, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (610, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 24, 31, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (611, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 24, 13, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (612, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 24, 38, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (613, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 25, 30, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (614, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 25, 32, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (615, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 25, 30, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (616, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 25, 40, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (617, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 26, 12, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (618, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 26, 28, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (619, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 26, 10, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (620, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 26, 10, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (621, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 27, 15, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (622, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 27, 37, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (623, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 27, 41, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (624, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 27, 33, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (625, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 28, 10, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (626, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 28, 10, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (627, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 28, 17, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (628, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 28, 24, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (629, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 29, 15, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (630, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 29, 32, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (631, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 29, 18, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (632, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 29, 31, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (633, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 30, 12, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (634, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 30, 35, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (635, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 30, 20, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (636, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 30, 19, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (637, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 31, 13, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (638, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 31, 15, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (639, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 31, 24, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (640, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 31, 25, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (641, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 32, 26, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (642, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 32, 10, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (643, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 32, 14, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (644, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 32, 16, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (645, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 33, 29, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (646, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 33, 37, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (647, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 33, 25, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (648, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 33, 36, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (649, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 34, 11, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (650, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 34, 38, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (651, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 34, 31, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (652, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 34, 10, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (653, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 35, 24, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (654, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 35, 24, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (655, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 35, 20, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (656, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 35, 16, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (657, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 36, 23, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (658, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 36, 14, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (659, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 36, 32, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (660, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 36, 24, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (661, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 37, 29, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (662, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 37, 14, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (663, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 37, 11, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (664, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 37, 17, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (665, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 38, 32, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (666, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 38, 28, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (667, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 38, 27, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (668, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 38, 10, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (669, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 39, 12, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (670, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 39, 14, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (671, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 39, 37, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (672, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 39, 21, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (673, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 40, 27, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (674, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 40, 38, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (675, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 40, 24, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (676, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 40, 32, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (677, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 41, 25, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (678, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 41, 34, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (679, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 41, 17, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (680, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 41, 15, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (681, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 100, 104, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (682, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 100, 103, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (683, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 100, 110, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (684, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 100, 106, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (685, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 101, 100, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (686, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 101, 100, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (687, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 101, 107, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (688, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 101, 105, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (689, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 102, 101, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (690, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 102, 104, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (691, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 102, 112, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (692, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 102, 107, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (693, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 103, 108, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (694, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 103, 110, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (695, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 103, 101, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (696, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 103, 109, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (697, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 104, 113, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (698, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 104, 102, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (699, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 104, 100, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (700, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 104, 101, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (701, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 105, 102, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (702, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 105, 100, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (703, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 105, 112, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (704, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 105, 107, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (705, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 106, 113, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (706, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 106, 105, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (707, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 106, 111, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (708, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 106, 100, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (709, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 107, 105, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (710, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 107, 108, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (711, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 107, 111, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (712, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 107, 101, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (713, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 108, 103, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (714, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 108, 102, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (715, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 108, 110, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (716, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 108, 107, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (717, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 109, 104, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (718, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 109, 113, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (719, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 109, 101, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (720, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 109, 102, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (721, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 110, 100, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (722, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 110, 104, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (723, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 110, 108, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (724, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 110, 108, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (725, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 111, 108, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (726, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 111, 113, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (727, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 111, 100, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (728, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 111, 104, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (729, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 112, 104, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (730, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 112, 111, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (731, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 112, 106, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (732, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 112, 108, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (733, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 113, 109, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (734, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 113, 112, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (735, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 113, 112, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (736, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 113, 104, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (737, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 10, 33, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (738, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 10, 38, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (739, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 10, 40, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (740, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 10, 33, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (741, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 11, 36, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (742, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 11, 35, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (743, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 11, 22, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (744, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 11, 13, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (745, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 12, 33, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (746, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 12, 40, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (747, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 12, 24, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (748, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 12, 39, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (749, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 13, 27, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (750, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 13, 38, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (751, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 13, 17, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (752, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 13, 19, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (753, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 14, 29, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (754, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 14, 27, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (755, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 14, 34, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (756, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 14, 26, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (757, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 15, 33, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (758, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 15, 34, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (759, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 15, 14, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (760, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 15, 28, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (761, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 16, 27, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (762, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 16, 20, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (763, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 16, 36, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (764, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 16, 10, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (765, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 17, 13, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (766, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 17, 31, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (767, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 17, 24, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (768, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 17, 30, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (769, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 18, 16, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (770, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 18, 37, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (771, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 18, 17, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (772, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 18, 31, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (773, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 19, 35, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (774, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 19, 26, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (775, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 19, 41, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (776, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 19, 38, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (777, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 20, 18, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (778, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 20, 39, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (779, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 20, 25, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (780, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 20, 27, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (781, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 21, 13, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (782, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 21, 16, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (783, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 21, 15, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (784, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 21, 31, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (785, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 22, 29, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (786, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 22, 28, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (787, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 22, 24, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (788, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 22, 19, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (789, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 23, 34, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (790, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 23, 27, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (791, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 23, 20, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (792, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 23, 28, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (793, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 24, 26, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (794, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 24, 12, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (795, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 24, 21, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (796, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 24, 37, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (797, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 25, 28, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (798, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 25, 12, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (799, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 25, 35, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (800, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 25, 22, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (801, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 26, 31, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (802, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 26, 24, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (803, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 26, 24, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (804, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 26, 19, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (805, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 27, 21, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (806, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 27, 40, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (807, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 27, 34, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (808, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 27, 28, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (809, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 28, 38, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (810, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 28, 15, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (811, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 28, 18, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (812, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 28, 16, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (813, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 29, 38, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (814, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 29, 34, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (815, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 29, 14, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (816, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 29, 36, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (817, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 30, 27, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (818, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 30, 15, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (819, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 30, 39, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (820, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 30, 31, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (821, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 31, 21, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (822, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 31, 29, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (823, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 31, 22, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (824, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 31, 35, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (825, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 32, 38, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (826, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 32, 40, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (827, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 32, 35, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (828, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 32, 39, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (829, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 33, 17, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (830, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 33, 13, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (831, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 33, 11, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (832, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 33, 41, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (833, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 34, 36, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (834, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 34, 22, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (835, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 34, 25, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (836, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 34, 20, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (837, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 35, 12, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (838, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 35, 30, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (839, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 35, 26, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (840, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 35, 39, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (841, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 36, 14, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (842, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 36, 32, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (843, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 36, 20, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (844, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 36, 41, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (845, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 37, 33, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (846, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 37, 23, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (847, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 37, 39, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (848, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 37, 18, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (849, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 38, 32, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (850, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 38, 24, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (851, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 38, 29, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (852, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 38, 39, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (853, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 39, 28, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (854, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 39, 27, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (855, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 39, 23, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (856, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 39, 19, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (857, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 40, 26, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (858, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 40, 36, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (859, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 40, 25, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (860, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 40, 12, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (861, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 41, 33, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (862, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 41, 19, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (863, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 41, 36, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (864, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 41, 21, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (865, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 100, 104, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (866, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 100, 105, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (867, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 100, 105, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (868, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 100, 112, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (869, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 101, 108, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (870, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 101, 110, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (871, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 101, 105, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (872, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 101, 111, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (873, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 102, 106, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (874, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 102, 110, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (875, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 102, 103, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (876, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 102, 101, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (877, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 103, 102, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (878, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 103, 112, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (879, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 103, 108, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (880, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 103, 107, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (881, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 104, 106, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (882, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 104, 108, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (883, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 104, 105, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (884, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 104, 110, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (885, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 105, 100, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (886, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 105, 110, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (887, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 105, 108, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (888, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 105, 112, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (889, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 106, 105, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (890, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 106, 104, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (891, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 106, 104, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (892, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 106, 108, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (893, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 107, 110, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (894, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 107, 105, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (895, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 107, 111, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (896, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 107, 100, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (897, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 108, 106, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (898, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 108, 111, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (899, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 108, 107, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (900, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 108, 113, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (901, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 109, 102, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (902, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 109, 108, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (903, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 109, 106, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (904, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 109, 103, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (905, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 110, 111, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (906, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 110, 109, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (907, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 110, 101, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (908, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 110, 103, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (909, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 111, 103, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (910, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 111, 104, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (911, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 111, 105, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (912, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 111, 103, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (913, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 112, 104, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (914, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 112, 109, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (915, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 112, 108, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (916, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 112, 111, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (917, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 113, 100, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (918, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 113, 110, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (919, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 113, 103, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (920, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 113, 107, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (921, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 10, 19, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (922, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 10, 16, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (923, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 10, 23, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (924, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 10, 15, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (925, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 11, 25, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (926, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 11, 23, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (927, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 11, 25, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (928, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 11, 39, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (929, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 12, 35, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (930, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 12, 22, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (931, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 12, 29, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (932, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 12, 14, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (933, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 13, 20, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (934, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 13, 40, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (935, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 13, 11, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (936, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 13, 18, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (937, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 14, 29, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (938, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 14, 24, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (939, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 14, 10, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (940, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 14, 34, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (941, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 15, 18, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (942, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 15, 13, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (943, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 15, 31, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (944, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 15, 16, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (945, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 16, 21, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (946, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 16, 34, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (947, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 16, 36, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (948, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 16, 10, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (949, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 17, 16, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (950, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 17, 23, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (951, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 17, 21, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (952, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 17, 28, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (953, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 18, 11, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (954, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 18, 32, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (955, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 18, 37, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (956, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 18, 31, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (957, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 19, 12, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (958, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 19, 11, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (959, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 19, 24, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (960, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 19, 24, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (961, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 20, 37, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (962, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 20, 35, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (963, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 20, 21, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (964, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 20, 18, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (965, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 21, 17, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (966, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 21, 11, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (967, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 21, 18, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (968, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 21, 25, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (969, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 22, 35, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (970, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 22, 11, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (971, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 22, 16, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (972, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 22, 35, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (973, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 23, 13, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (974, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 23, 12, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (975, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 23, 40, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (976, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 23, 33, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (977, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 24, 27, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (978, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 24, 36, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (979, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 24, 33, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (980, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 24, 34, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (981, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 25, 41, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (982, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 25, 18, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (983, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 25, 32, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (984, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 25, 38, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (985, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 26, 29, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (986, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 26, 37, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (987, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 26, 27, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (988, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 26, 18, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (989, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 27, 10, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (990, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 27, 34, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (991, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 27, 33, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (992, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 27, 37, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (993, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 28, 32, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (994, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 28, 15, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (995, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 28, 23, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (996, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 28, 37, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (997, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 29, 13, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (998, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 29, 27, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (999, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 29, 32, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1000, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 29, 11, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1001, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 30, 31, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1002, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 30, 25, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1003, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 30, 38, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1004, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 30, 17, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1005, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 31, 11, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1006, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 31, 19, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1007, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 31, 25, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1008, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 31, 39, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1009, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 32, 36, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1010, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 32, 24, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1011, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 32, 21, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1012, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 32, 18, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1013, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 33, 30, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1014, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 33, 31, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1015, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 33, 12, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1016, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 33, 22, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1017, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 34, 11, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1018, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 34, 10, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1019, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 34, 35, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1020, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 34, 24, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1021, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 35, 13, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1022, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 35, 19, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1023, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 35, 31, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1024, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 35, 24, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1025, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 36, 14, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1026, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 36, 35, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1027, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 36, 37, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1028, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 36, 19, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1029, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 37, 25, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1030, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 37, 40, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1031, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 37, 10, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1032, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 37, 21, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1033, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 38, 22, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1034, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 38, 22, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1035, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 38, 16, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1036, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 38, 11, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1037, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 39, 13, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1038, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 39, 31, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1039, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 39, 10, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1040, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 39, 22, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1041, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 40, 38, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1042, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 40, 11, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1043, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 40, 30, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1044, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 40, 30, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1045, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 41, 27, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1046, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 41, 22, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1047, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 41, 27, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1048, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 41, 30, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1049, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 100, 105, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1050, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 100, 102, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1051, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 100, 102, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1052, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 100, 103, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1053, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 101, 110, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1054, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 101, 106, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1055, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 101, 106, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1056, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 101, 100, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1057, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 102, 113, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1058, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 102, 113, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1059, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 102, 104, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1060, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 102, 110, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1061, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 103, 104, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1062, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 103, 105, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1063, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 103, 107, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1064, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 103, 107, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1065, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 104, 101, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1066, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 104, 110, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1067, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 104, 107, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1068, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 104, 112, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1069, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 105, 103, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1070, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 105, 108, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1071, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 105, 101, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1072, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 105, 101, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1073, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 106, 112, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1074, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 106, 101, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1075, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 106, 109, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1076, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 106, 108, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1077, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 107, 102, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1078, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 107, 100, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1079, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 107, 106, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1080, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 107, 104, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1081, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 108, 100, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1082, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 108, 112, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1083, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 108, 111, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1084, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 108, 111, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1085, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 109, 102, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1086, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 109, 101, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1087, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 109, 110, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1088, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 109, 113, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1089, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 110, 104, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1090, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 110, 102, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1091, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 110, 101, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1092, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 110, 113, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1093, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 111, 106, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1094, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 111, 107, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1095, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 111, 112, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1096, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 111, 105, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1097, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 112, 113, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1098, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 112, 113, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1099, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 112, 101, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1100, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 112, 102, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1101, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 113, 101, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1102, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 113, 108, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1103, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 113, 102, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1104, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 113, 109, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1105, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 10, 20, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1106, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 10, 37, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1107, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 10, 15, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1108, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 10, 32, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1109, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 11, 35, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1110, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 11, 23, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1111, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 11, 10, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1112, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 11, 21, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1113, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 12, 34, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1114, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 12, 34, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1115, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 12, 29, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1116, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 12, 18, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1117, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 13, 38, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1118, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 13, 38, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1119, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 13, 37, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1120, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 13, 32, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1121, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 14, 31, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1122, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 14, 35, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1123, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 14, 37, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1124, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 14, 30, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1125, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 15, 19, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1126, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 15, 21, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1127, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 15, 16, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1128, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 15, 25, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1129, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 16, 22, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1130, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 16, 32, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1131, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 16, 24, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1132, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 16, 14, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1133, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 17, 11, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1134, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 17, 34, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1135, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 17, 28, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1136, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 17, 13, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1137, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 18, 13, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1138, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 18, 10, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1139, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 18, 35, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1140, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 18, 13, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1141, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 19, 29, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1142, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 19, 16, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1143, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 19, 39, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1144, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 19, 26, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1145, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 20, 36, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1146, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 20, 28, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1147, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 20, 27, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1148, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 20, 37, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1149, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 21, 24, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1150, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 21, 39, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1151, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 21, 12, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1152, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 21, 31, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1153, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 22, 33, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1154, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 22, 41, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1155, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 22, 10, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1156, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 22, 13, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1157, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 23, 38, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1158, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 23, 17, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1159, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 23, 33, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1160, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 23, 13, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1161, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 24, 20, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1162, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 24, 21, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1163, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 24, 31, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1164, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 24, 18, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1165, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 25, 40, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1166, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 25, 31, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1167, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 25, 30, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1168, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 25, 12, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1169, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 26, 41, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1170, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 26, 22, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1171, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 26, 38, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1172, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 26, 18, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1173, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 27, 18, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1174, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 27, 10, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1175, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 27, 34, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1176, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 27, 33, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1177, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 28, 27, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1178, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 28, 13, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1179, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 28, 36, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1180, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 28, 34, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1181, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 29, 37, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1182, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 29, 15, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1183, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 29, 14, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1184, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 29, 31, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1185, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 30, 41, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1186, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 30, 41, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1187, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 30, 20, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1188, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 30, 31, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1189, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 31, 33, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1190, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 31, 38, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1191, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 31, 39, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1192, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 31, 30, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1193, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 32, 29, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1194, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 32, 12, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1195, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 32, 41, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1196, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 32, 20, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1197, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 33, 23, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1198, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 33, 14, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1199, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 33, 26, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1200, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 33, 18, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1201, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 34, 33, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1202, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 34, 38, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1203, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 34, 36, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1204, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 34, 40, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1205, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 35, 25, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1206, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 35, 14, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1207, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 35, 25, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1208, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 35, 37, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1209, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 36, 27, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1210, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 36, 26, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1211, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 36, 20, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1212, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 36, 39, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1213, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 37, 22, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1214, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 37, 22, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1215, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 37, 12, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1216, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 37, 22, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1217, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 38, 39, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1218, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 38, 24, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1219, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 38, 21, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1220, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 38, 40, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1221, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 39, 34, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1222, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 39, 36, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1223, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 39, 26, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1224, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 39, 24, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1225, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 40, 27, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1226, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 40, 30, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1227, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 40, 25, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1228, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 40, 19, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1229, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 41, 14, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1230, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 41, 36, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1231, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 41, 36, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1232, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 41, 35, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1233, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 100, 112, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1234, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 100, 105, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1235, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 100, 104, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1236, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 100, 113, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1237, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 101, 108, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1238, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 101, 100, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1239, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 101, 104, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1240, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 101, 107, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1241, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 102, 110, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1242, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 102, 108, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1243, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 102, 106, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1244, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 102, 110, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1245, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 103, 109, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1246, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 103, 106, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1247, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 103, 109, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1248, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 103, 101, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1249, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 104, 105, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1250, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 104, 102, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1251, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 104, 111, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1252, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 104, 106, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1253, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 105, 110, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1254, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 105, 112, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1255, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 105, 104, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1256, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 105, 109, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1257, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 106, 110, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1258, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 106, 101, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1259, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 106, 112, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1260, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 106, 101, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1261, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 107, 110, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1262, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 107, 110, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1263, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 107, 106, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1264, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 107, 110, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1265, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 108, 105, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1266, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 108, 103, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1267, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 108, 100, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1268, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 108, 103, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1269, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 109, 103, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1270, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 109, 111, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1271, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 109, 103, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1272, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 109, 111, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1273, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 110, 106, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1274, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 110, 101, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1275, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 110, 100, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1276, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 110, 108, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1277, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 111, 112, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1278, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 111, 102, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1279, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 111, 101, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1280, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 111, 105, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1281, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 112, 108, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1282, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 112, 105, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1283, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 112, 111, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1284, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 112, 110, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1285, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 113, 101, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1286, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 113, 110, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1287, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 113, 104, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1288, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 113, 109, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1289, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 10, 27, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1290, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 10, 19, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1291, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 10, 22, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1292, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 10, 40, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1293, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 11, 31, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1294, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 11, 33, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1295, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 11, 12, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1296, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 11, 37, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1297, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 12, 33, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1298, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 12, 23, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1299, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 12, 25, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1300, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 12, 24, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1301, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 13, 34, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1302, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 13, 20, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1303, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 13, 29, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1304, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 13, 31, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1305, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 14, 17, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1306, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 14, 20, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1307, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 14, 20, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1308, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 14, 35, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1309, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 15, 38, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1310, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 15, 29, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1311, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 15, 31, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1312, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 15, 20, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1313, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 16, 37, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1314, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 16, 17, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1315, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 16, 13, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1316, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 16, 24, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1317, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 17, 25, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1318, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 17, 12, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1319, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 17, 18, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1320, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 17, 34, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1321, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 18, 19, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1322, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 18, 39, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1323, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 18, 16, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1324, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 18, 39, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1325, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 19, 36, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1326, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 19, 38, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1327, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 19, 14, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1328, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 19, 38, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1329, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 20, 11, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1330, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 20, 29, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1331, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 20, 33, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1332, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 20, 26, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1333, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 21, 20, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1334, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 21, 39, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1335, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 21, 13, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1336, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 21, 25, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1337, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 22, 11, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1338, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 22, 31, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1339, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 22, 34, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1340, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 22, 27, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1341, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 23, 25, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1342, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 23, 20, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1343, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 23, 31, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1344, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 23, 36, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1345, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 24, 12, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1346, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 24, 29, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1347, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 24, 22, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1348, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 24, 37, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1349, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 25, 30, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1350, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 25, 24, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1351, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 25, 31, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1352, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 25, 41, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1353, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 26, 18, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1354, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 26, 30, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1355, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 26, 23, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1356, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 26, 30, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1357, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 27, 40, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1358, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 27, 13, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1359, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 27, 22, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1360, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 27, 38, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1361, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 28, 34, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1362, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 28, 34, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1363, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 28, 21, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1364, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 28, 34, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1365, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 29, 37, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1366, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 29, 20, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1367, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 29, 28, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1368, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 29, 38, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1369, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 30, 13, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1370, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 30, 37, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1371, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 30, 19, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1372, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 30, 14, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1373, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 31, 33, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1374, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 31, 32, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1375, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 31, 26, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1376, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 31, 17, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1377, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 32, 24, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1378, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 32, 29, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1379, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 32, 23, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1380, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 32, 28, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1381, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 33, 24, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1382, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 33, 38, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1383, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 33, 17, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1384, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 33, 38, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1385, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 34, 35, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1386, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 34, 18, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1387, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 34, 23, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1388, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 34, 25, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1389, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 35, 14, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1390, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 35, 36, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1391, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 35, 28, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1392, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 35, 18, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1393, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 36, 28, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1394, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 36, 24, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1395, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 36, 11, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1396, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 36, 34, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1397, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 37, 38, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1398, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 37, 40, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1399, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 37, 36, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1400, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 37, 15, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1401, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 38, 25, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1402, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 38, 41, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1403, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 38, 10, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1404, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 38, 20, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1405, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 39, 15, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1406, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 39, 36, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1407, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 39, 10, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1408, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 39, 15, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1409, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 40, 39, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1410, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 40, 18, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1411, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 40, 13, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1412, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 40, 37, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1413, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 41, 16, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1414, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 41, 18, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1415, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 41, 20, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1416, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 41, 26, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1417, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 100, 101, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1418, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 100, 111, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1419, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 100, 103, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1420, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 100, 113, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1421, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 101, 100, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1422, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 101, 104, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1423, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 101, 111, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1424, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 101, 103, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1425, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 102, 111, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1426, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 102, 106, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1427, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 102, 110, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1428, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 102, 110, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1429, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 103, 102, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1430, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 103, 107, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1431, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 103, 102, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1432, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 103, 110, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1433, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 104, 103, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1434, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 104, 106, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1435, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 104, 108, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1436, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 104, 102, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1437, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 105, 112, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1438, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 105, 112, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1439, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 105, 100, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1440, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 105, 107, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1441, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 106, 101, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1442, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 106, 101, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1443, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 106, 112, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1444, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 106, 113, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1445, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 107, 108, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1446, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 107, 103, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1447, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 107, 105, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1448, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 107, 100, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1449, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 108, 104, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1450, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 108, 111, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1451, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 108, 112, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1452, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 108, 100, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1453, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 109, 103, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1454, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 109, 103, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1455, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 109, 100, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1456, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 109, 112, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1457, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 110, 101, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1458, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 110, 113, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1459, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 110, 105, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1460, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 110, 107, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1461, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 111, 109, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1462, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 111, 112, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1463, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 111, 103, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1464, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 111, 101, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1465, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 112, 110, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1466, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 112, 101, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1467, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 112, 111, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1468, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 112, 111, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1469, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 113, 109, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1470, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 113, 101, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1471, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 113, 110, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1472, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 113, 110, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1473, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 10, 24, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1474, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 10, 11, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1475, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 10, 40, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1476, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 10, 25, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1477, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 11, 38, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1478, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 11, 20, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1479, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 11, 36, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1480, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 11, 12, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1481, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 12, 32, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1482, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 12, 27, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1483, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 12, 20, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1484, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 12, 37, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1485, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 13, 14, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1486, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 13, 35, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1487, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 13, 36, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1488, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 13, 18, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1489, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 14, 35, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1490, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 14, 19, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1491, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 14, 25, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1492, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 14, 30, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1493, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 15, 20, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1494, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 15, 18, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1495, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 15, 38, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1496, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 15, 25, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1497, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 16, 26, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1498, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 16, 24, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1499, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 16, 20, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1500, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 16, 35, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1501, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 17, 39, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1502, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 17, 14, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1503, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 17, 30, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1504, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 17, 30, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1505, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 18, 16, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1506, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 18, 32, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1507, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 18, 30, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1508, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 18, 35, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1509, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 19, 17, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1510, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 19, 34, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1511, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 19, 32, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1512, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 19, 13, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1513, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 20, 35, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1514, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 20, 27, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1515, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 20, 17, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1516, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 20, 10, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1517, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 21, 11, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1518, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 21, 27, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1519, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 21, 36, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1520, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 21, 26, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1521, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 22, 36, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1522, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 22, 23, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1523, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 22, 27, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1524, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 22, 28, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1525, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 23, 15, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1526, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 23, 17, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1527, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 23, 32, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1528, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 23, 15, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1529, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 24, 30, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1530, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 24, 33, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1531, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 24, 19, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1532, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 24, 12, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1533, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 25, 28, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1534, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 25, 33, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1535, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 25, 37, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1536, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 25, 29, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1537, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 26, 13, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1538, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 26, 31, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1539, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 26, 25, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1540, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 26, 34, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1541, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 27, 31, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1542, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 27, 10, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1543, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 27, 11, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1544, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 27, 15, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1545, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 28, 23, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1546, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 28, 12, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1547, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 28, 29, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1548, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 28, 41, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1549, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 29, 17, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1550, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 29, 31, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1551, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 29, 37, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1552, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 29, 19, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1553, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 30, 41, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1554, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 30, 28, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1555, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 30, 15, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1556, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 30, 27, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1557, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 31, 20, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1558, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 31, 32, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1559, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 31, 11, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1560, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 31, 40, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1561, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 32, 12, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1562, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 32, 29, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1563, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 32, 16, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1564, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 32, 21, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1565, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 33, 29, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1566, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 33, 19, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1567, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 33, 21, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1568, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 33, 39, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1569, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 34, 17, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1570, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 34, 10, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1571, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 34, 17, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1572, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 34, 28, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1573, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 35, 28, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1574, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 35, 21, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1575, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 35, 16, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1576, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 35, 39, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1577, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 36, 20, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1578, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 36, 17, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1579, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 36, 15, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1580, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 36, 39, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1581, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 37, 27, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1582, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 37, 31, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1583, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 37, 21, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1584, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 37, 13, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1585, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 38, 23, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1586, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 38, 33, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1587, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 38, 22, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1588, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 38, 31, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1589, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 39, 31, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1590, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 39, 35, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1591, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 39, 28, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1592, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 39, 13, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1593, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 40, 28, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1594, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 40, 22, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1595, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 40, 26, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1596, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 40, 20, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1597, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 41, 40, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1598, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 41, 20, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1599, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 41, 35, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1600, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 41, 29, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1601, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 100, 112, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1602, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 100, 108, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1603, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 100, 104, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1604, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 100, 109, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1605, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 101, 111, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1606, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 101, 104, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1607, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 101, 112, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1608, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 101, 103, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1609, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 102, 112, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1610, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 102, 112, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1611, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 102, 100, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1612, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 102, 111, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1613, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 103, 101, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1614, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 103, 113, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1615, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 103, 106, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1616, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 103, 106, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1617, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 104, 107, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1618, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 104, 111, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1619, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 104, 113, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1620, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 104, 103, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1621, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 105, 107, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1622, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 105, 102, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1623, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 105, 102, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1624, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 105, 109, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1625, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 106, 105, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1626, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 106, 105, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1627, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 106, 107, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1628, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 106, 107, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1629, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 107, 113, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1630, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 107, 102, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1631, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 107, 113, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1632, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 107, 102, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1633, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 108, 100, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1634, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 108, 107, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1635, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 108, 103, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1636, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 108, 113, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1637, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 109, 110, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1638, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 109, 110, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1639, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 109, 104, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1640, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 109, 100, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1641, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 110, 111, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1642, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 110, 104, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1643, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 110, 104, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1644, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 110, 111, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1645, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 111, 109, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1646, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 111, 100, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1647, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 111, 102, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1648, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 111, 108, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1649, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 112, 105, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1650, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 112, 104, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1651, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 112, 109, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1652, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 112, 106, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1653, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 113, 111, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1654, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 113, 109, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1655, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 113, 107, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1656, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 113, 101, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1657, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 113, 1, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1658, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 113, 1, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1659, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 113, 1, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1660, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 113, 1, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1661, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 33, 1, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1662, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 33, 1, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1663, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 40, 1, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1664, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 12, 1, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1665, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 12, 1, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1666, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 16, 1, false);
INSERT INTO message (id, sent_date,  text, from_id, to_id, seen)
VALUES (1667, TO_DATE('17/12/2015 10:50:03', 'DD/MM/YYYY HH24:MI:SS'),  'The quick brown fox jumps over the lazy dog', 1, 11, false);
