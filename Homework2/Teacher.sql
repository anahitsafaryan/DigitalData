DROP DATABASE IF EXISTS `Teacher`;
CREATE DATABASE `Teacher`;
USE `Teacher`;
CREATE TABLE `students` (
	`id` INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
	`name` VARCHAR(50) NOT NULL,
	`surname` VARCHAR(50) NOT NULL
);

CREATE TABLE `attendance` (
	`student` INTEGER NOT NULL,
	`date` DATE NOT NULL,
	`present` TINYINT(1) NOT NULL,
	FOREIGN KEY (`student`) REFERENCES `students`(`id`)
);

CREATE TABLE `homework` (
	`student` INTEGER NOT NULL,
	`date` DATE NOT NULL,
	`score` INTEGER NOT NULL,
	FOREIGN KEY (`student`) REFERENCES `students`(`id`)
);

CREATE TABLE `class_tests` (
	`student` INTEGER NOT NULL,
	`date` DATE NOT NULL,
	`score` INTEGER NOT NULL,
	FOREIGN KEY (`student`) REFERENCES `students`(`id`)
);

CREATE TABLE `groups` (
	`id` INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
	`people` INTEGER NOT NULL,
	FOREIGN KEY (`people`) REFERENCES `students`(`id`)
);

