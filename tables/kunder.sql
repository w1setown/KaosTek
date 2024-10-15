CREATE TABLE kunde (
    kundeID int NOT NULL,
    navn varchar(100) NOT NULL,
    adresse varchar(100) NOT NULL,
    PRIMARY KEY (id)
);


CREATE TABLE vare(
    vareID int NOT NULL,
    vareNavn varchar(100) NOT NULL,
    pris decimal (8, 10) NOT NULL,
);


CREATE TABLE fakturaLinje(
    ordreID int not NULL,
    

);


CREATE TABLE faktura(
    dato DATE,
    totalBeløb, 
);