INSERT INTO Customer
VALUES
(1,'Shayan Ebrahimi','09932560427','Tehran'),
(2,'Mohsen Rezaie','09378642289','Isfahan'),
(3,'Amirali Shahabi ','0901111276','Karaj'),
(4,'Parsa Norouzian','09932221111','Hamedan'),
(5,'Mohammad Ghazanfari','09000000000','Qom'),
(6,'Amir Jamali','09104054052','Tehran'),
(7,'Amirhossein Tavakoli','09367777777','Tehran');

INSERT INTO Status
VALUES
(1,'In Transit'),
(2,'Registered'),
(3,'Delivered'),
(4,'Arrived');

INSERT INTO PostOffice
VALUES
(1,'Central Post Office','Tehran'),
(2,'Haram Post Office','Qom'),
(3,'33Pol Post Office','Isfahan'),
(4,'Karaj Post Office','Karaj'),
(5,'Central Post Office','Hamedan'),
(6,'West Post Office','Tehran'),
(7,'East Post Office','Tehran');

INSERT INTO Package
VALUES
(1,'2472838509',10.5,'2026-05-14',1),
(2,'2795913021',5.0,'2026-04-10',1),
(3,'2382378645',70.8,'2016-02-10',1),
(4,'7472834565',4.2,'2025-12-22',2),
(5,'9917465805',0.3,'2026-01-24',2),
(6,'5375346593',1.7,'2024-11-26',3),
(7,'3793537659',44.1,'2021-10-28',4),
(8,'3725392933',7.9,'2006-10-03',5),
(9,'2686283232',6.0,'1996-07-08',6),
(10,'7566392020',0.6,'1666-11-06',6);

INSERT INTO Sender
VALUES
(1,'Shayan Ebrahimi','09932560427','Tehran',1),
(2,'Mohsen Rezaie','09378642289','Isfahan',2),
(3,'Amirali Shahabi ','0901111276','Karaj',3),
(4,'Parsa Norouzian','09932221111','Hamedan',4),
(5,'Mohammad Ghazanfari','09000000000','Qom',5);

INSERT INTO Receiver
VALUES
(1,'Ali Hashemi','09192565733','Mashhad',1),
(2,'Hamid Ashrafi','09192565734','Karaj',2),
(3,'Hamid Jahanbakhsh','09012220427','Tehran',3),
(4,'Seyed','09999999999','Qom',4),
(5,'Mohammad Shayan','09122565733','Tehran',5);