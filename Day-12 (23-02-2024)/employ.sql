DROP DATABASE IF EXISTS prateekshya;
CREATE DATABASE IF NOT EXISTS prateekshya;
USE prateekshya;

CREATE TABLE employ(
	emp_id			INT(6)				NOT NULL AUTO_INCREMENT,
	emp_name        VARCHAR(50)			NOT NULL UNIQUE,
	emp_gender		ENUM('F','M','O')	NOT NULL,
	emp_dob         DATE,
	emp_email       VARCHAR(30),
	emp_mobile      VARCHAR(20),
	PRIMARY KEY(emp_id)
);
INSERT INTO employ VALUES
	(1, "Milan Das", "M", "1965-11-25", "milandas63@gmail.com", "7978168568"),
	(2, "Prateekshya Patnaik", "F", "12-05-2000", "prateekshya2000@gmail.com", "9778911223"),
	(3, "Susant Barik", "M", "14-01-1985", "bariksushant1985@gmail.com", "6799421585");
