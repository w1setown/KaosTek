/*
CREATE TABLE Kunde (
    KundeID INT PRIMARY KEY,
    Navn VARCHAR(100),
    Adresse VARCHAR(100),
    Email VARCHAR(100),
    Telefon VARCHAR(20)
);
*/


-- DDL for kaostek.kunde --
CREATE TABLE `kunde` (
  `KundeID` int NOT NULL,
  `Navn` varchar(100) DEFAULT NULL,
  `Adresse` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Telefon` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`KundeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci