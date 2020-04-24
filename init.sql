CREATE USER 'dbuser'@'%' IDENTIFIED BY 'dab60c54a297cd158249b9aec0';
GRANT ALL PRIVILEGES ON * . * TO 'dbuser'@'%';
CREATE DATABASE ctf;

CREATE TABLE ctf.login (
  id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(50) NOT NULL,
  password VARCHAR(200) NOT NULL
);

INSERT INTO ctf.login(username, password) values('admin', '0607a6e6c275003c9e6251424da0937720e7f966');


