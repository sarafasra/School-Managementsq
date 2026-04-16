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
INSERT INTO students (dateofbirth,student_number,user_id,class_id)
VALUES ('2020-04-02','STUD01',1,1);
INSERT INTO enrollments (enrolled_at,status,student_id,course_id)
VALUES ('2025-03-03','actif',1,2),
('2025-08-05','actif',1,1);