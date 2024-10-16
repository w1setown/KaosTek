/*CREATE TABLE Faktura (
    OrdreNummer INT PRIMARY KEY,
    KundeID INT,
    Dato DATE,
    TotalBeløb DECIMAL(10, 2),
    FOREIGN KEY (KundeID) REFERENCES Kunde(KundeID)
);*/

/*
CREATE TABLE Faktura (
    OrdreNummer INT PRIMARY KEY AUTO_INCREMENT,
    KundeID INT,
    Dato DATE,
    TotalBeløb DECIMAL(10, 2),
    FOREIGN KEY (KundeID) REFERENCES Kunde(KundeID)
);
*/


-- DDL for kaostek.faktura --

CREATE TABLE `faktura` (
  `OrdreNummer` int NOT NULL AUTO_INCREMENT,
  `KundeID` int DEFAULT NULL,
  `Dato` date DEFAULT NULL,
  `TotalBeløb` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`OrdreNummer`),
  KEY `KundeID` (`KundeID`),
  CONSTRAINT `faktura_ibfk_1` FOREIGN KEY (`KundeID`) REFERENCES `kunde` (`KundeID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci