show databases;

CREATE DATABASE twitter_db;

SHOW DATABASES;

USE twitter_db;

CREATE TABLE users (
	user_id INT NOT NULL AUTO_INCREMENT, 
    user_handle VARCHAR(50) NOT NULL UNIQUE,
    email_addres VARCHAR(100) NOT NULL UNIQUE,
    first_name VARCHAR(100) NOT NULL,
    phonenumber CHAR(10) NOT NULL,
    create_at TIMESTAMP NOT NULL DEFAULT (NOW()),
    PRIMARY KEY(user_id)
);

SELECT * FROM twitter_db.users;