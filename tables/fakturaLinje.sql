CREATE TABLE FakturaLinje (
    OrdreNummer INT,
    VareID INT,
    Antal INT,
    Pris DECIMAL(10, 2),
    Subtotal DECIMAL(10, 2) GENERATED ALWAYS AS (Antal * Pris) VIRTUAL,
    FOREIGN KEY (OrdreNummer) REFERENCES Faktura(OrdreNummer),
    FOREIGN KEY (VareID) REFERENCES Vare(VareID)
);
