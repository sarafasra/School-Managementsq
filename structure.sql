use  edusync;
CREATE table roles (id int PRIMARY KEY AUTO_INCREMENT ,
label VARCHAR (50) NOT NULL
);
CREATE table  users (id INT PRIMARY key AUTO_INCREMENT ,
firstname VARCHAR (50) NOT NULL ,
lastname VARCHAR (50) NOT NULL ,
email VARCHAR (100) NOT NULL UNIQUE ,
password VARCHAR (255) NOT NULL ,
role_id INT NOT NULL , 
Foreign Key (role_id) REFERENCES roles (id)
);
CREATE table classes (id INT PRIMARY KEY AUTO_INCREMENT ,
name VARCHAR (50),
classroom_number INT  NOT NULL );
CREATE TABLE courses (
  id int PRIMARY KEY AUTO_INCREMENT,
  title varchar (100) NOT NULL,
  description varchar (100) NOT NULL,
  total_hours int NOT NULL,
  users_id int NOT NULL,
  FOREIGN KEY (users_id) REFERENCES users(id)
);
CREATE TABLE students (
  id int PRIMARY key AUTO_INCREMENT,
  dateofbirth date NOT NULL,
  student_number int NOT NULL,
  user_id int NOT NULL,
  class_id int NOT NULL,
  FOREIGN KEY (class_id) REFERENCES classes(id),
  FOREIGN KEY (user_id)REFERENCES users(id)
);