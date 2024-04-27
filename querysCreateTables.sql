CREATE DATABASE CursoDalto

CREATE TABLE Users(
    Id int IDENTITY(1,1),
    Name VARCHAR(100),
    LastName VARCHAR(100),
    Age int
);

CREATE TABLE Turnos(
    IdTurno int IDENTITY(1,1) PRIMARY KEY,
    IdDoctor int,
    Direccion VARCHAR(MAX),
    Motivo VARCHAR(MAX),
    Date DATETIME,
    Horario varchar(10),
    IdUser int
);

ALTER TABLE Turnos
ADD CONSTRAINT FK_Turnos_Doctors FOREIGN KEY (IdDoctor) REFERENCES Doctors(IdDoctor);
ALTER TABLE Turnos
ADD CONSTRAINT FK_Turnos_Users FOREIGN KEY (IdUser) REFERENCES Users(Id);

CREATE TABLE Doctors(
    IdDoctor int IDENTITY(1,1) PRIMARY KEY,
    Name VARCHAR(100),
    LastName VARCHAR(100),
    IdSpeciality int
);

SELECT * FROM turnos
SELECT * FROM USERS

SELECT IdDoctor, D.Name + ' ' + D.LastName as NombreCompleto, S.Description
FROM Doctors D
LEFT JOIN Specialities S on S.IdSpeciality = D.IdSpeciality

ALTER TABLE Doctors
ADD CONSTRAINT FK_Speciality FOREIGN KEY (IdSpeciality) REFERENCES Specialities(IdSpeciality);

CREATE TABLE Specialities(
    IdSpeciality int IDENTITY(1,1) PRIMARY KEY,
    Description VARCHAR(200)
);

SELECT *
FROM Specialities

INSERT INTO Users (Name, LastName, Age)
VALUES('Rodrigo','De Paul',26),
('Cole','Palmer',21),
('Emiliano ','Martinez',25)

INSERT INTO Users (Name, LastName, Age)
VALUES('Lionel','Messi','36')


SELECT * 
FROM Users 