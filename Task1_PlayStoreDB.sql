DROP DATABASE IF EXISTS PlayStoreDB;
CREATE DATABASE PlayStoreDB;
USE PlayStoreDB;
-- Table 1
DROP TABLE IF EXISTS Developers;
CREATE TABLE Developers (
	DeveloperID INT PRIMARY KEY,
    DeveloperName VARCHAR(60) NOT NULL,
    Country VARCHAR(30),
    FoundedYear INT 
);
INSERT INTO Developers VALUES
(101,"Google LLC","USA",1998),
(102,"Meta Platforms","USA",2004),
(103,"Spotify AB","sweden",2006),
(104,"Canva Pty Ltd","Australia",2012),
(105,"BYJU'S","India",2011);
-- Table 2
CREATE TABLE Publishers (
	PublisherID INT PRIMARY KEY,
    PublisherName VARCHAR(60),
    HeadOffice VARCHAR(40),
    SupportEmail VARCHAR(60)
);
INSERT INTO Publishers VALUES 
(201,"Google Play","California","support@google.com"),
(202,"Samsung Galaxy Store","Seoul","support@samsung.com"),
(203,"Huawei AppGallery","Shenzhen","support@huawei.com"),
(204,"Amazon Appstore","Seattle","support@amazon.com");
-- Table3
CREATE TABLE Categories (
	CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(40),
    MinimumAge INT
);
INSERT INTO Categories VALUES
(301,"Education",3),
(302,"Productivity",3),
(303,"Music",12),
(304,"Social",13),
(305,"Gaming",16);
-- Table 4
CREATE TABLE Apps (
	AppID INT PRIMARY KEY,
    AppName VARCHAR(60),
    DeveloperID INT,
    PublisherID INT,
    CategoryID INT,
    Rating DECIMAL(2,1),
    Downloads INT,
    Price DECIMAL(6,2)
);
ALTER TABLE Apps
MODIFY Downloads BIGINT;
INSERT INTO Apps VALUES
(1001,"Google Classroom",101,201,301,4.6,500000000,0),
(1002,"Google Keep",101,201,302,4.5,1000000000,0),
(1003,"instagram",102,201,304,4.4,5000000000,0),
(1004,"Spotify",103,201,303,4.5,1000000000,0),
(1005,"canva",104,201,302,4.7,500000000,0),
(1006,"BYJU'S Learning",105,201,301,4.3,100000000,299),
(1007,"Candy crush",102,204,305,4.6,1000000000,0),
(1008,"temple run",104,203,305,4.2,500000000,0);
-- level 0
SELECT * FROM Developers;
SELECT * FROM Publishers;
SELECT * FROM Categories;
SELECT * FROM Apps;
DESC Apps;
-- level 1
INSERT INTO Developers VALUES
(106,'openAI','USA',2015);
SELECT * FROM Developers;
INSERT INTO Categories VALUES
(306,"Artificial Intelligence",12);
SELECT * FROM Categories;
INSERT INTO Apps VALUES
(1009,'ChatGPT',106,201,306,4.7,100000000,0);
ALTER TABLE Apps MODIFY COLUMN Rating DECIMAL(2,1);
ALTER TABLE Apps MODIFY COLUMN Price DECIMAL(6,1);
UPDATE Apps SET Rating=4.6 WHERE AppID=1001;
UPDATE Apps SET Rating=4.5 WHERE AppID=1002;
UPDATE Apps SET Rating=4.4 WHERE AppID=1003;
UPDATE Apps SET Rating=4.5 WHERE AppID=1004;
UPDATE Apps SET Rating=4.7 WHERE AppID=1005;
UPDATE Apps SET Rating=4.3 WHERE AppID=1006;
UPDATE Apps SET Rating=4.6 WHERE AppID=1007;
UPDATE Apps SET Rating=4.5 WHERE AppID=1008;
UPDATE Apps SET Rating=4.6 WHERE AppID=1009;
SELECT * FROM Apps;
DELETE FROM Developers WHERE DeveloperID=105;
SELECT * FROM Developers;
-- level 2
UPDATE Publishers
SET SupportEmail='support@samsungstore.com'
WHERE PublisherID=202;
SELECT * FROM Publishers;
INSERT INTO Apps VALUES
(1010,'Linkedin',102,201,304,4.3,500000000,0.00),
(1011,'Duolingo',101,201,301,4.7,100000000,0.00);
SELECT * FROM Apps;
UPDATE Apps SET Price=199 WHERE AppID=1006;
SELECT * FROM Apps;
DELETE FROM Categories WHERE CategoryID=303;
SELECT * FROM Developers;
SELECT * FROM Categories;
SELECT * FROM Publishers;
SELECT * FROM Apps;
