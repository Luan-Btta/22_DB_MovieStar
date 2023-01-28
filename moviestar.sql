CREATE DATABASE moviestar;
USE moviestar;

CREATE TABLE users(
	id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT NOT NULL,
    name VARCHAR(100),
    lastname VARCHAR(100),
    email VARCHAR(200),
    password VARCHAR(200),
    image VARCHAR(200),
    token VARCHAR(200),
    bio TEXT
);

CREATE TABLE movies(
	id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT NOT NULL,
    title VARCHAR(100),
    description TEXT,
    image VARCHAR(200),
    trailer VARCHAR(150),
    category VARCHAR(50),
    length VARCHAR(50),
    user_id int UNSIGNED,
    FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE reviews(
	id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT NOT NULL,
    rating INT,
    review TEXT,
    user_id INT UNSIGNED,
    movies_id INT UNSIGNED,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (movies_id) REFERENCES movies(id)
);

SELECT * FROM users;
SELECT * FROM movies;
SELECT * FROM reviews;