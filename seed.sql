INSERT INTO roles (label)
VALUES ('prof'),('student'),('admin');
INSERT INTO users (firstname,lastname,email,password,role_id)
VALUES ('sara','fasraoui','sara@gmail.com','sarhjk',1),
('jihan','jador','jihan@gmail.com','fghhjj',2),
('salwa','amzan','salwa@gmail.com','jkjkhk',3);
INSERT INTO  classes (name,classroom_number)
VALUES('développement stack','A1'),
('développement mobule','B2');
INSERT INTO courses (title,description,total_hours,users_id)
VALUES('java','introduction au web',30,3),
('php','php avancer',40,2);