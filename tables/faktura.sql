CREATE TABLE Faktura (
    OrdreNummer INT PRIMARY KEY,
    KundeID INT,
    Dato DATE,
    TotalBeløb DECIMAL(10, 2),
    FOREIGN KEY (KundeID) REFERENCES Kunde(KundeID)
);
