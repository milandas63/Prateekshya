DROP DATABASE IF EXISTS gift2022;
CREATE DATABASE IF NOT EXISTS gift2022;
USE gift2022;

######################
####  department  ####
######################
SELECT 'department';
DROP TABLE IF EXISTS department;
CREATE TABLE IF NOT EXISTS department(
    id              INT(6)              NOT NULL AUTO_INCREMENT,
    name            VARCHAR(50)         NOT NULL UNIQUE,
    head_id         INT(6)              NOT NULL REFERENCES employ(id),
    PRIMARY KEY(id)
);
INSERT INTO department VALUES
    (1, 'Administrative', 3),
    (2, 'Human Resource', 3),
    (3, 'Production',     3),
    (4, 'Material',       3),
    (5, 'Sales & Service',3),
    (6, 'Finance',        3);


#######################
####  designation  ####
#######################
SELECT 'designation';
DROP TABLE IF EXISTS designation;
CREATE TABLE IF NOT EXISTS designation(
    id          INT(6)          NOT NULL AUTO_INCREMENT,
    name        VARCHAR(50)     NOT NULL UNIQUE,
    abbr        VARCHAR(15)     UNIQUE,
    PRIMARY KEY(id)
);
INSERT INTO designation VALUES
    (1, 'Chief Executive Officer',      'CEO'),
    (2, 'General Manager',              'GM'),
    (3, 'Sr. Manager Administration',   'SMA'),
    (4, 'Sr. Manager Marketing',        'SMM'),
    (5, 'Sr. Manager Production',       'SMP');



##################
####  employ  ####
##################
SELECT 'employ';
DROP TABLE IF EXISTS employ;
CREATE TABLE IF NOT EXISTS employ(
    id              INT(6)              NOT NULL AUTO_INCREMENT,
    name            VARCHAR(50)         NOT NULL UNIQUE,
    father          VARCHAR(50),
    gender          ENUM('F','M','O')   NOT NULL,
    dob             DATE                NOT NULL,
    design_id       INT(6)              NOT NULL REFERENCES designation(id),
    depart_id       INT(6)              NOT NULL REFERENCES department(id),
    email           VARCHAR(25),
    mobile          VARCHAR(12),
    PRIMARY KEY(id)
);
INSERT INTO employ VALUES
    (1, 'Ajay Bajaj',       'Ranjan Bajaj',      'M', "2001-06-03", 1, 1, 'ajay.bajaj@bharat.com',      '9897967766'),
    (2, 'Swapna Mitra',     'Brijesh Mitra',     'F', "2002-07-25", 2, 1, 'swapna.mitra@bharat.com',    '9798992345'),
    (3, 'Subrat Yadav',     'Bipul Yadav',       'M', "1999-11-20", 3, 3, 'subrat.yadav@bharat.com',    '7665683434'),
    (4, 'Suchitra Singh',   'Suman Jagan Singh', 'F', "1999-05-30", 4, 4, 'suchitra.singh@bharat.com',  '9778911223'),
    (5, 'Sai Prithivi Pal', 'Gopal Krishna Pal', 'M', "1998-11-27", 5, 5, 'prithivi.pal@bharat.com',    '6337876442');


SELECT e.id AS 'EMP-ID',e.name AS 'EMP-NAME',e.gender AS 'SEX',dn.name AS 'DESINATION',dp.name AS 'DEPARTMENT' FROM employ AS e
LEFT JOIN designation AS dn ON e.design_id=dn.id
LEFT JOIN department AS dp ON e.depart_id=dp.id


SELECT e.id AS 'EMP-ID',e.name AS 'EMP-NAME',e.gender AS 'SEX',dn.name AS 'DESINATION',dp.name AS 'DEPARTMENT' FROM employ AS e LEFT JOIN designation AS dn ON e.design_id=dn.id LEFT JOIN department AS dp ON e.depart_id=dp.id
