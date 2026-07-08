SELECT * FROM Customer;
SELECT * FROM Package;
SELECT * FROM Sender;
SELECT * FROM Receiver;
SELECT * FROM Status;
SELECT * FROM PostOffice;
SELECT *
FROM Package
WHERE TrackingCode='9917465805';
SELECT COUNT(*) FROM Customer;
SELECT COUNT(*)	FROM Package;
SELECT COUNT(*)	FROM Sender;
SELECT COUNT(*)	FROM Receiver;

SELECT *
FROM Package p
JOIN Customer c
ON p.CustomerID=c.CustomerID;


SELECT
    c.FullName,
    COUNT(p.PackageID) AS TotalPackages
FROM Customer c
JOIN Package p
    ON c.CustomerID = p.CustomerID
GROUP BY c.CustomerID, c.FullName
HAVING COUNT(p.PackageID) > 1;

SELECT

(SELECT COUNT(*) FROM Customer) AS Customers,

(SELECT COUNT(*) FROM Package) AS Packages,

(SELECT COUNT(*) FROM PostOffice) AS Offices;

SELECT
    c.FullName,
    p.TrackingCode,
    p.Weight,
    p.SendDate
FROM Customer c
JOIN Package p
ON c.CustomerID = p.CustomerID;