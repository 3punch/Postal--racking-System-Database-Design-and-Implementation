CREATE DATABASE PostalTracking;
USE PostalTracking;

CREATE TABLE Customer(
    CustomerID INT PRIMARY KEY,
    FullName VARCHAR(100),
    Phone VARCHAR(20),
    Address VARCHAR(200)
);

CREATE TABLE Package(
    PackageID INT PRIMARY KEY,
    TrackingCode VARCHAR(30) UNIQUE,
    Weight DECIMAL(5,2),
    SendDate DATE,
    CustomerID INT,
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);

CREATE TABLE Sender(
    SenderID INT PRIMARY KEY,
    Name VARCHAR(100),
    Phone VARCHAR(20),
    Address VARCHAR(200),
    PackageID INT UNIQUE,
    FOREIGN KEY (PackageID) REFERENCES Package(PackageID)
);

CREATE TABLE Receiver(
    ReceiverID INT PRIMARY KEY,
    Name VARCHAR(100),
    Phone VARCHAR(20),
    Address VARCHAR(200),
    PackageID INT UNIQUE,
    FOREIGN KEY (PackageID) REFERENCES Package(PackageID)
);

CREATE TABLE Status(
    StatusID INT PRIMARY KEY,
    StatusName VARCHAR(50)
);

CREATE TABLE PostOffice(
    OfficeID INT PRIMARY KEY,
    OfficeName VARCHAR(100),
    City VARCHAR(100)
);

CREATE TABLE TrackingHistory(
    HistoryID INT PRIMARY KEY,
    PackageID INT,
    StatusID INT,
    OfficeID INT,
    UpdateDate DATETIME,
    FOREIGN KEY (PackageID) REFERENCES Package(PackageID),
    FOREIGN KEY (StatusID) REFERENCES Status(StatusID),
    FOREIGN KEY (OfficeID) REFERENCES PostOffice(OfficeID)
);