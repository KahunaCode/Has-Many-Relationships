
DROP DATABASE if exists "has_many_blogs";

DROP USER if exists "has_many_user";

CREATE USER has_many_user;

CREATE DATABASE has_many_blogs WITH OWNER has_many_user;

\c has_many_blogs;


CREATE TABLE users (
id SERIAL PRIMARY KEY,
username VARCHAR(90) NOT NULL,
first_name VARCHAR(90) DEFAULT NULL,
last_name VARCHAR(90) DEFAULT NULL,
created_at TIMESTAMP DEFAULT now(),
updated_at TIMESTAMP DEFAULT now()
);

CREATE TABLE posts (
id SERIAL PRIMARY KEY,
title VARCHAR(180) DEFAULT NULL,
url VARCHAR(510) DEFAULT NULL,
content TEXT DEFAULT NULL,
created_at TIMESTAMP NOT NULL,
updated_at TIMESTAMP NOT NULL,
user_id INTEGER REFERENCES users(id)
);

CREATE TABLE comments (
id SERIAL PRIMARY KEY,
body VARCHAR(510) DEFAULT NULL,
created_at TIMESTAMP NOT NULL,
updated_at TIMESTAMP NOT NULL,
user_id INTEGER REFERENCES users(id),
post_id INTEGER REFERENCES posts(id)
);


\c postgres;
