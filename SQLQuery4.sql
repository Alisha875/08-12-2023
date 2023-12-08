
CREATE DATABASE ExerciseDb;


USE ExerciseDb;

CREATE TABLE Companyinfo (
    Cid INT PRIMARY KEY,
    CName VARCHAR(255) NOT NULL
);

INSERT INTO Companyinfo (Cid, CName) VALUES
(1, 'SamSung'),
(2, 'HP'),
(3, 'Apple'),
(4, 'Dell'),
(5, 'Toshiba'),
(6, 'Redmi');


CREATE TABLE Productinfo (
    Pid INT PRIMARY KEY,
    PName VARCHAR(255) NOT NULL,
    PPrice DECIMAL(10, 2),
    PMDate DATE,
    Cid INT,
    FOREIGN KEY (Cid) REFERENCES Companyinfo(Cid)
);

INSERT INTO Productinfo (Pid, PName, PPrice, PMDate, Cid) VALUES
(101, 'Laptop', 55000.90, '2023-12-12', 1),
(102, 'Laptop', 55000.90, '2023-12-12', 2),
(103, 'Mobile', 35000.90, '2012-12-12', 3),
(104, 'Laptop', 135000.90, '2012-12-03', 3),
(105, 'Mobile', 65000.90, '2012-12-12', 3),
(106, 'Laptop', 35000.90, '2012-04-12', 5),
(107, 'Mobile', 35000.90, '2012-12-01', 5),
(108, 'Earpod', 1000.90, '2022-01-12', 3),
(109, 'Laptop', 85000.90, '2021-12-12', 6),
(110, 'Mobile', 55000.70, '2020-12-12', 1);

SELECT C.CName, P.*
FROM Companyinfo C
JOIN Productinfo P ON C.Cid = P.Cid;

SELECT P.*, C.CName
FROM Productinfo P
JOIN Companyinfo C ON P.Cid = C.Cid;


SELECT C.CName, P.*
FROM Companyinfo C
CROSS JOIN Productinfo P;
