--insert a default admin
INSERT INTO  user (id, type, first_name, last_name, mail, password, phone_number, psychologist_id) 
VALUES (1, 'ADMIN', 'Alfred', 'unknown','ucmh@ucm.es', 'Admin123', '111222333', null);
--insert a default psychologist
INSERT INTO  user (id, type, first_name, last_name, mail, password, phone_number, psychologist_id) 
VALUES (11, 'PSY', 'Carla', 'No Es Batman','carla@bigbrain.es', 'Carla', '2013562059', null);
--insert a default user
INSERT INTO  user (id, type, first_name, last_name, mail, password, phone_number, psychologist_id) 
VALUES (10, 'USER', 'Paco', 'Es Batman','pacoelmagias@elmundomagico.es', 'Paco', '2013568459', 11);

INSERT INTO  user (id, type, first_name, last_name, mail, password, phone_number, psychologist_id) 
VALUES (12, 'USER', 'Tomasa', 'Turbada','latomasaturbada@pimpam.es', 'Tomasa', '2013568459', 11);


