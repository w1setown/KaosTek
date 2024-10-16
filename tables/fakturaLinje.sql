/*
CREATE TABLE FakturaLinje (
    OrdreNummer INT,
    VareID INT,
    Antal INT,
    Pris DECIMAL(10, 2),
    Subtotal DECIMAL(10, 2) GENERATED ALWAYS AS (Antal * Pris) VIRTUAL,
    FOREIGN KEY (OrdreNummer) REFERENCES Faktura(OrdreNummer),
    FOREIGN KEY (VareID) REFERENCES Vare(VareID)
);
*/

-- DDL for kaostek.fakturalinje -- 

CREATE TABLE `fakturalinje` (
  `OrdreNummer` int NOT NULL AUTO_INCREMENT,
  `VareID` int DEFAULT NULL,
  `Antal` int DEFAULT NULL,
  `Pris` decimal(10,2) DEFAULT NULL,
  `Subtotal` decimal(10,2) GENERATED ALWAYS AS ((`Antal` * `Pris`)) VIRTUAL,
  KEY `VareID` (`VareID`),
  KEY `OrdreNummer` (`OrdreNummer`),
  CONSTRAINT `fakturalinje_ibfk_2` FOREIGN KEY (`VareID`) REFERENCES `vare` (`VareID`),
  CONSTRAINT `fakturalinje_ibfk_3` FOREIGN KEY (`OrdreNummer`) REFERENCES `faktura` (`OrdreNummer`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

