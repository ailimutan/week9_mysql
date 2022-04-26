CREATE DATABASE IF NOT EXISTS socialMedia;
USE socialMedia;

CREATE TABLE IF NOT EXISTS Users (
user_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
username VARCHAR(30) NOT NULL UNIQUE,
email VARCHAR(50),
password VARCHAR(16) NOT NULL,
first_name VARCHAR(16),
last_name VARCHAR(16),
birth_date DATE);

CREATE TABLE IF NOT EXISTS Posts (
    post_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    post_content VARCHAR(100),
    time_created DATETIME DEFAULT CURRENT_TIMESTAMP,
    user_id INT UNSIGNED ,
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

CREATE TABLE IF NOT EXISTS Comments (
    comment_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    comment_content VARCHAR(100),
    time_created DATETIME DEFAULT CURRENT_TIMESTAMP,
    user_id INT UNSIGNED,
    post_id INT UNSIGNED,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (post_id) REFERENCES Posts(post_id)
);

SHOW TABLES;

DESC comments;
DESC users;
DESC posts;
