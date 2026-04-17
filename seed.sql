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
INSERT INTO classes (name, classroom_number)
VALUES
('Développement Web 2026','A1'),
('Développement Mobile 2026','B2');
INSERT INTO courses (title, description, total_hours, users_id)
VALUES
('HTML/CSS','Bases du web',20,2),
('JavaScript','JS avancé',40,2),
('ReactJS','Frontend moderne',35,3);
INSERT INTO students (dateofbirth, student_number, user_id, class_id)
VALUES
('2001-03-10','STUD001',4,1),
('2000-07-22','STUD002',5,1);
INSERT INTO enrollments (enrolled_at, status, student_id, course_id)
VALUES
('2026-04-15','actif',1,1),
('2026-04-15','actif',1,2),
('2026-04-16','actif',2,1),
('2026-04-16','actif',2,3);
DELETE FROM courses
WHERE id =2;