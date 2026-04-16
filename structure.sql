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