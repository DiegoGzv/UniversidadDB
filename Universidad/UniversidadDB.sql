CREATE DATABASE Universidad;
GO

USE Universidad;
GO


/* =====================================================
   CREACIÓN DE TABLAS
===================================================== */

CREATE TABLE Direccion (
    idDireccion INT PRIMARY KEY IDENTITY(1,1),
    descripcion VARCHAR(100),
    barrio VARCHAR(50),
    municipio VARCHAR(50),
    departamento VARCHAR(50)
);

CREATE TABLE Facultad (
    idFacultad INT PRIMARY KEY IDENTITY(1,1),
    nombre VARCHAR(100) NOT NULL,
    telefono VARCHAR(20)
);

CREATE TABLE Programa (
    idPrograma INT PRIMARY KEY IDENTITY(1,1),
    nombre VARCHAR(100) NOT NULL,
    idFacultad INT NOT NULL,
    FOREIGN KEY (idFacultad) REFERENCES Facultad(idFacultad)
);

CREATE TABLE Especialidad (
    idEspecialidad INT PRIMARY KEY IDENTITY(1,1),
    nombre VARCHAR(100)
);

CREATE TABLE Docente (
    idDocente INT PRIMARY KEY IDENTITY(1,1),
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    idEspecialidad INT,
    idFacultad INT,
    FOREIGN KEY (idEspecialidad) REFERENCES Especialidad(idEspecialidad),
    FOREIGN KEY (idFacultad) REFERENCES Facultad(idFacultad)
);

CREATE TABLE Estudiante (
    idEstudiante INT PRIMARY KEY IDENTITY(1,1),
    nombre VARCHAR(100),
    apellido VARCHAR(100),
    email VARCHAR(100),
    telefono VARCHAR(20),
    idDireccion INT,
    idPrograma INT,
    idFacultad INT,
    FOREIGN KEY (idDireccion) REFERENCES Direccion(idDireccion),
    FOREIGN KEY (idPrograma) REFERENCES Programa(idPrograma),
    FOREIGN KEY (idFacultad) REFERENCES Facultad(idFacultad)
);

CREATE TABLE Asignatura (
    idAsignatura INT PRIMARY KEY IDENTITY(1,1),
    nombre VARCHAR(100),
    creditos INT,
    idPrograma INT,
    FOREIGN KEY (idPrograma) REFERENCES Programa(idPrograma)
);

CREATE TABLE Horario (
    idHorario INT PRIMARY KEY IDENTITY(1,1),
    dia VARCHAR(20),
    horaInicio TIME,
    horaFin TIME,
    jornada VARCHAR(20),
    bloque VARCHAR(20),
    aula VARCHAR(20),
    idAsignatura INT,
    FOREIGN KEY (idAsignatura) REFERENCES Asignatura(idAsignatura)
);

CREATE TABLE Matricula (
    idMatricula INT PRIMARY KEY IDENTITY(1,1),
    idEstudiante INT,
    idAsignatura INT,
    idDocente INT,
    semestre VARCHAR(20),
    nota DECIMAL(3,2),
    estado VARCHAR(20),
    FOREIGN KEY (idEstudiante) REFERENCES Estudiante(idEstudiante),
    FOREIGN KEY (idAsignatura) REFERENCES Asignatura(idAsignatura),
    FOREIGN KEY (idDocente) REFERENCES Docente(idDocente)
);


