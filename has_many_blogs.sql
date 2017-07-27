

DROP USER if exists "has_many_user";

CREATE USER has_many_user;

DROP DATABASE if exists "has_many_blogs";

CREATE DATABASE has_many_blogs WITH OWNER has_many_user;

CREATE TABLE users (
id SERIAL PRIMARY KEY,
username VARCHAR(90) NOT NULL,
first_name VARCHAR(90) DEFAULT NULL,
last_name VARCHAR(90) DEFAULT NULL,
created_at TIMESTAMP DEFAULT now(),
updated_at TIMESTAMP DEFAULT now()
);