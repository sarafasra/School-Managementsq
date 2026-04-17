use  edusync;
CREATE table roles (id int PRIMARY KEY AUTO_INCREMENT ,
label VARCHAR (50) NOT NULL
);
DROP table roles ;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    firstname VARCHAR(50) NOT NULL,
    lastname VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    role_id INT NOT NULL,
    CONSTRAINT fk_users_role
        FOREIGN KEY (role_id)
        REFERENCES roles(id)
        ON DELETE RESTRICT
        ON UPDATE CASCADE
);

CREATE TABLE classes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    classroom_number VARCHAR(20) NOT NULL
);

CREATE TABLE courses (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    description varchar (50) NOT NULL,
    total_hours INT NOT NULL,
    users_id INT NOT NULL,
    FOREIGN KEY (users_id)
        REFERENCES users(id)
        ON DELETE RESTRICT
        ON UPDATE CASCADE
);
CREATE TABLE students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    dateofbirth DATE NOT NULL,
    student_number VARCHAR(50) UNIQUE NOT NULL,
    user_id INT UNIQUE,
    class_id INT,
    FOREIGN KEY (user_id)
        REFERENCES users(id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (class_id)
        REFERENCES classes(id)
        ON DELETE RESTRICT
        ON UPDATE CASCADE
);

CREATE TABLE enrollments (
    id INT AUTO_INCREMENT PRIMARY KEY,
    enrolled_at DATE NOT NULL,
    status ENUM('actif','terminé') NOT NULL,
    student_id INT,
    course_id INT,
    UNIQUE (student_id, course_id),
    FOREIGN KEY (student_id)
        REFERENCES students(id),
     
    FOREIGN KEY (course_id)
        REFERENCES courses(id)
       
);
DROP table enrollments;