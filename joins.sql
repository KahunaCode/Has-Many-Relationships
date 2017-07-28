--1
SELECT * FROM users;

--2
SELECT * FROM posts WHERE user_id = 100;

--3
SELECT posts.*, users.first_name, users.last_name
from posts
INNER JOIN users ON posts.user_id = users.id
WHERE users.id = 200;





    SELECT purchases.*, user.id, user.email
    FROM purchases
    INNER JOIN users ON purchases.user_id = user.id
    WHERE users.id = 3