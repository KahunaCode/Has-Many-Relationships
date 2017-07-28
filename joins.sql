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

--5
SELECT username FROM users WHERE created_at > '2015-01-01';

--6
SELECT posts.title, posts.content, users.username
FROM posts
INNER JOIN users ON posts.user_id = users.id
WHERE users.created_at < '2015-01-01';

--7
SELECT comments.*, posts.title AS "Post Title"
FROM comments
INNER JOIN posts ON comments.post_id = posts.id;

--8
SELECT comments.*, posts.title AS "Post Title",
posts.url AS "post_url",
comments.body AS "comment_body"
FROM comments
INNER JOIN posts ON comments.post_id = posts.id
WHERE posts.created_at < '2015-01-01';

--9
SELECT comments.*, posts.title AS "Post Title",
posts.url AS "post_url",
comments.body AS "comment_body"
FROM comments
INNER JOIN posts ON comments.post_id = posts.id
WHERE posts.created_at > '2015-01-01';

--10
SELECT comments.*, posts.title AS "Post Title",
posts.url AS "post_url",
comments.body AS "comment_body"
FROM comments
INNER JOIN posts ON comments.post_id = posts.id
WHERE comments.body LIKE '%USB%';

--11
SELECT users.first_name, users.last_name,
posts.title AS "post_title",
comments.body AS "comment_body"
FROM users
INNER JOIN posts ON posts.user_id = users.id
INNER JOIN comments ON comments.post_id = posts.id
WHERE comments.body LIKE '%matrix%';

--12
SELECT users.first_name, users.last_name,
comments.body AS "comment_body",
posts.*
FROM users
INNER JOIN posts ON posts.user_id = users.id
INNER JOIN comments ON comments.post_id = posts.id
WHERE comments.body LIKE '%SSL%' AND posts.content LIKE '%dolorum%';

--13
SELECT users.first_name AS "post_author_first_name",
users.last_name AS "post_author_last_name",
posts.title,
users.username AS "comment_author_username",
comments.body AS "comment_body"
FROM users
INNER JOIN posts ON posts.user_id = users.id
INNER JOIN comments ON comments.post_id = posts.id
WHERE (comments.body LIKE '%SSL%' OR comments.body LIKE '%firewall%')
AND posts.content LIKE '%nemo%';
