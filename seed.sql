INSERT INTO roles (label)
VALUES 
('admin'),
('prof'),
('student');

INSERT INTO users (firstname, lastname, email, password, role_id)
VALUES
('Admin','System','admin@edusync.com','pass',1),
('Youssef','Prof','youssef@edusync.com','pass',2),
('Salma','Prof','salma@edusync.com','pass',2),
('Imane','Student','imane@edusync.com','pass',3),
('Hamza','Student','hamza@edusync.com','pass',3);
SELECT * FROM classes ;
INSERT INTO classes (name, classroom_number)
VALUES
('Développement Web 2026','A1'),
('Développement Mobile 2026','B2');
INSERT INTO courses (title, description, total_hours, users_id)
VALUES
('HTML/CSS','Bases du web',20,4),
('JavaScript','JS avancé',40,5),
('ReactJS','Frontend moderne',35,6);
INSERT INTO students (dateofbirth, student_number, user_id, class_id)
VALUES
('2001-03-10','STUD003',19,1),
('2000-07-22','STUD004',6,1);
INSERT INTO enrollments (enrolled_at, status, student_id, course_id)
VALUES
('2026-04-15','actif',1,7),
('2026-04-15','actif',1,8),
('2026-04-16','actif',2,9),
('2026-04-16','actif',2,7);
DELETE FROM courses
WHERE id =2;