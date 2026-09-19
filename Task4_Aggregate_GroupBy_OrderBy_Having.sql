USE PlayStoreDB;
 -- Level 0
 SELECT COUNT(*) AS TotalApplications FROM Apps;
 SELECT AVG(Rating) AS AVGRating FROM Apps;
 SELECT MAX(Rating) AS HighestRating FROM Apps;
 SELECT MIN(Rating) AS LowestRating FROM Apps;
 SELECT SUM(Downloads) AS TotalDownloads FROM Apps;
 SELECT * FROM Apps ORDER BY Rating DESC;
  -- Level 1
  SELECT CategoryID,COUNT(*) AS AppCount FROM Apps GROUP BY CategoryID;
  SELECT CategoryID,AVG(Rating) AS AVGRating FROM Apps GROUP BY CategoryID;
  SELECT MAX(Price) AS MAXPrice,MIN(Price) AS MINPrice FROM Apps;
  SELECT * FROM Apps ORDER BY Downloads DESC;
  SELECT DeveloperID,COUNT(*) AS APPCount FROM Apps GROUP BY DeveloperID;
  SELECT CategoryID,COUNT(*) AS Totalapps FROM Apps GROUP BY CategoryID HAVING COUNT(*)>1;
  -- Level 2
  SELECT DeveloperID,SUM(Downloads) AS TotalDownloads FROM Apps GROUP BY DeveloperID;
  SELECT PublisherID,AVG(Rating) AS AVGRating FROM APPS GROUP BY PublisherID;
  SELECT DeveloperID,COUNT(*) AS AppCount FROM Developers  GROUP BY DeveloperID HAVING COUNT(*)>1;
  SELECT CategoryID,AVG(Rating) AS AVGrating FROM Apps GROUP BY CategoryID HAVING AVG(Rating)>4.3;
  SELECT CategoryID,COUNT(*) AS TotalApplications FROM Apps GROUP BY CategoryID ORDER BY TotalApplications DESC;
  SELECT * FROM Apps WHERE Rating=(SELECT MAX(Rating) AS HighestRatedApp FROM Apps);
  SELECT DeveloperID,SUM(Price) AS TotalPrice FROM Apps GROUP BY DeveloperID;