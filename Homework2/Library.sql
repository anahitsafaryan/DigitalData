DROP DATABASE IF EXISTS `Library`;
CREATE DATABASE `Library`;
USE `Library`;
CREATE TABLE `book_list` (
	`id` INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
	`name` VARCHAR(150) NOT NULL
);

CREATE TABLE `users` (
	`id` INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
	`name` VARCHAR (50) NOT NULL,
	`surname` VARCHAR(50) NOT NULL,
	`birthdate` DATE
);

CREATE TABLE `books_lent` (
	`book` INTEGER NOT NULL,
	`people` INTEGER NOT NULL,
	`date` DATE,
	FOREIGN KEY (`book`) REFERENCES `book_list`(`id`),
	FOREIGN KEY (`people`) REFERENCES `users`(`id`)
);

