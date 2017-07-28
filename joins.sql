--1
SELECT * FROM users;

--2
SELECT * FROM posts WHERE user_id = 100;

--3
SELECT posts.*, users.first_name, users.last_name
from posts
INNER JOIN users ON posts.user_id = users.id
WHERE users.id = 200;

--4
SELECT posts.*, users.username
from posts
INNER JOIN users ON posts.user_id = users.id
WHERE users.first_name LIKE 'Norene' AND
users.last_name LIKE 'Schmitt';

