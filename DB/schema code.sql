-- DDL語法
USE db;
SET AUTO_INCREMENT_INCREMENT = 1;
CREATE TABLE User(
	userId VARCHAR(10) Primary Key,
	userName VARCHAR(20) NOT NULL,
	email VARCHAR(30) NOT NULL,
	password  VARCHAR(255) NOT NULL,
	coverImage blob null,
	biography VARCHAR(255)
);

CREATE TABLE Post(
	postId INT Primary Key AUTO_INCREMENT,
	userId VARCHAR(10) NOT NULL,
	content VARCHAR(255),
	image  blob,
	createdAt DATETIME,
    FOREIGN KEY (userId) REFERENCES User(userId)
);

CREATE TABLE Comment(
	commentId INT Primary Key AUTO_INCREMENT,
	userId VARCHAR(10) NOT NULL,
	postId INT NOT NULL,
	content VARCHAR(255),
	createdAt DATETIME,
    FOREIGN KEY (userId) REFERENCES User(userId),
    FOREIGN KEY (postId) REFERENCES Post(postId)
);

-- DML語法