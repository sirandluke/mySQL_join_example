# INNER JOIN EXAMPLE #
SELECT # grab the columns you want to show
    users.id,
    users.first_name,
    users.last_name,
    posts.title,  # posts is a child of users so we are allowed to do this.
    posts.publish_date
FROM users
INNER JOIN posts on users.id = posts.user_id
ORDER BY  users.id;

# RIGHT JOIN EXAMPLE #
SELECT 
    users.id,
    users.first_name,
    users.last_name,
    posts.title,
    posts.publish_date
FROM users
RIGHT JOIN posts on users.id = posts.user_id
ORDER BY users.id; # -> SHOWS US ALL MATCHES PLUS EVERYTHING IN POSTS TABLE

# LEFT JOIN EXAMPLE #
SELECT 
    users.id,
    users.first_name,
    users.last_name,
    posts.title,
    posts.publish_date
FROM users
LEFT JOIN posts on users.id = posts.user_id
ORDER BY users.id; # -> SHOWS US ALL MATCHES PLUS EVERYTHING IN USERS TABLE

SELECT COUNT(users.id) FROM users INNER JOIN posts on users.id = posts.user_id;

SELECT COUNT(users.id) FROM users RIGHT JOIN posts on users.id = posts.user_id;

SELECT COUNT(users.id) FROM users LEFT JOIN posts on users.id = posts.user_id;    
