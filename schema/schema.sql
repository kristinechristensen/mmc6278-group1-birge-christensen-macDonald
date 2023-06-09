CREATE DATABASE IF NOT EXISTS mysql_project_db;

USE mysql_project_db;

CREATE TABLE users (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(100) NOT NULL UNIQUE,
  password VARCHAR(200) NOT NULL,
  favoriteId INT
);

CREATE TABLE artist (
  id INT PRIMARY KEY AUTO_INCREMENT NOT NULL, 
  name VARCHAR(200) NOT NULL, 
  bio TEXT 
  
); 

CREATE TABLE artwork (
  id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  artist_id INT NOT NULL, 
  name VARCHAR(200) NOT NULL, 
  image VARCHAR(200) NOT NULL,
  description TEXT, 
  medium VARCHAR(200),
  year INT, 
  location VARCHAR(100),
  collection VARCHAR(100),
  quantity INT NOT NULL DEFAULT 1,
  FOREIGN KEY (artist_id)
    REFERENCES artist(id)
    ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE favorites (
   id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
   artwork_id INT NOT NULL, 
   quantity INT NOT NULL DEFAULT 1,
   user_id INT NOT NULL, 
   FOREIGN KEY (artwork_id)
    REFERENCES artwork(id)
    ON DELETE CASCADE,
  FOREIGN KEY (user_id)
    REFERENCES users (id)
    ON DELETE CASCADE ON UPDATE CASCADE
);
