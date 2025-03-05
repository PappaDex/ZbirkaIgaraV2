CREATE DATABASE ZbirkaIgara;

USE ZbirkaIgara;

CREATE TABLE Zanr (
    Id INT PRIMARY KEY IDENTITY(1,1),
    ImeZanra VARCHAR(255) NOT NULL
);

CREATE TABLE Igra (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Naslov VARCHAR(255) NOT NULL,
    Opis VARCHAR(MAX),
    hltb INT,
    ocjena DECIMAL(4,2),
    DatumIzdavanja DATE,
    Platforme VARCHAR(255),
    Id_Zanra INT, 
    CONSTRAINT FK_Igra_Zanr FOREIGN KEY (Id_Zanra) REFERENCES Zanr(Id)
);

INSERT INTO Zanr (ImeZanra) VALUES ('Action');
INSERT INTO Igra (Naslov, Opis, hltb, ocjena, DatumIzdavanja, Platforme, Id_Zanra)
VALUES ('Grand Theft Auto V', 'An open-world action-adventure game...', 100, 9.0, '2013-09-17', 'PlayStation 3, Xbox 360, PC', (SELECT Id FROM Zanr WHERE ImeZanra = 'Action'));