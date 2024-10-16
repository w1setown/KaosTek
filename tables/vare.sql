/*
CREATE TABLE Vare (
    VareID INT PRIMARY KEY,
    VareNavn VARCHAR(255),
    Pris decimal(10, 2),
    LagerAntal int
);
*/

-- DDL for kaostek.vare --

CREATE TABLE `vare` (
  `VareID` int NOT NULL,
  `VareNavn` varchar(255) DEFAULT NULL,
  `Pris` decimal(10,2) DEFAULT NULL,
  `LagerAntal` int DEFAULT NULL,
  PRIMARY KEY (`VareID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci