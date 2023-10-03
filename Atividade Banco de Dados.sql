CREATE DATABASE Ifba;

USE Ifba;

CREATE TABLE Ifba.Escolas(
ID int AUTO_INCREMENT PRIMARY KEY,
NomeEscola varchar(255),
Endereco varchar(255),
Telefone varchar(22)
);

CREATE TABLE Ifba.Alunos(
Matricula int AUTO_INCREMENT PRIMARY KEY,
NomeAluno varchar(255),
DataNascimento DATE,
Endereco varchar(255),
Telefone varchar(22),
EscolaID int,
FOREIGN KEY (EscolaID) REFERENCES Ifba.Escolas (id)
);

INSERT INTO Ifba.Escolas (NomeEscola, Endereco, Telefone, ID)
VALUES
    ('IFBA Dendezeiros', 'Luso', '71-9867-3535',1),
    ('IFBA Paripe', 'Barcelona', '71-9812-4239',2),
    ('IFBA Luso', 'Plataforma', '71-9812-9084',3),
    ('IFBA Comercio', 'Marcola', '71-9762-8234',4),
    ('IFBA Roma',  'Senai', '71-9812-1212',5);



INSERT INTO Ifba.Alunos (NomeAluno, DataNascimento, Endereco, Telefone, EscolaID)
VALUES
    ('Diego Pontes', '2007-06-10', 'Paripe', '71-9867-8931', 1),
    ('Maria Fagundes', '2008-06-10', 'Vista Alegre', '71-9812-3931', 2),
    ('Matheus Pontes', '2010-07-30', 'periperi', '71-9812-3931', 3),
    ('Luiz Pontes', '2012-05-09', 'Marcola', '71-9762-3931', 4),
    ('Efraim Fagundes', '2022-09-17', 'Senai', '71-9812-3931', 5);

SELECT * FROM Ifba.Escolas;
SELECT * fROM Ifba.Alunos;
drop database Ifba;

SELECT
E.NomeEscola AS "Nome do Campus",
count(A.Matricula) AS "Matriculados"
FROM Ifba.Escolas E
INNER JOIN Ifba.Alunos A 
ON E.Id = A.EscolaId group by E.NomeEscola;
 
---------------------------------------------------------------------------------------


