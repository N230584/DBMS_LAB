USE PlaystoreDB;
-- LEVEL 0
SELECT UPPER(DeveloperName) FROM Developers;
SELECT LOWER(DeveloperName) FROM Developers;
SELECT LENGTH(AppName) FROM Apps;
SELECT CategoryName,LENGTH(CategoryName) From Categories;
SELECT CURRENT_DATE(),CURRENT_TIME();
SELECT ROUND(Rating,0) FROM Apps;
-- Level 1
SELECT AppName,SUBSTRING(AppName,1,5) FROM Apps;
SELECT CONCAT(DeveloperName,' ',Country) FROM Developers;
SELECT ROUND(Rating) FROM Apps;
SELECT AppName,CEIL(Price) FROM Apps;
SELECT DeveloperName,FoundedYear FROM Developers;
-- level 2
SELECT UPPER(AppName),Rating FROM Apps;
SELECT CategoryName,SUBSTRING(CategoryName,1,3) FROM Categories;
SELECT AppName,ABS(Price-200) FROM Apps;
SELECT DeveloperName,LENGTH(DeveloperName) FROM Developers;
SELECT CURRENT_DATE(),CURRENT_TIMESTAMP();
SELECT CONVERT(Downloads,CHAR) FROM Apps;
