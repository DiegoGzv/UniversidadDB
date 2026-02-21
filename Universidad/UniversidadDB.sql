-- =========================
-- CREAR BASE DE DATOS
-- =========================
CREATE DATABASE Universidad;
GO

USE Universidad;
GO

-- =========================
-- TABLA DIRECCION
-- =========================
CREATE TABLE Direccion (
    idDireccion INT PRIMARY KEY IDENTITY(1,1),
    descripcion VARCHAR(150) NOT NULL,
    barrio VARCHAR(50),
    departamento VARCHAR(50),
    municipio VARCHAR(50)
);

-- =========================
-- TABLA UNIVERSIDAD
-- =========================
CREATE TABLE Universidad (
    idUniversidad INT PRIMARY KEY IDENTITY(1,1),
    nombre VARCHAR(150) NOT NULL,
    telefono VARCHAR(15),
    email VARCHAR(100) UNIQUE,
    idDireccion INT NOT NULL,
    FOREIGN KEY (idDireccion) REFERENCES Direccion(idDireccion)
);

-- =========================
-- TABLA FACULTAD
-- =========================
CREATE TABLE Facultad (
    idFacultad INT PRIMARY KEY IDENTITY(1,1),
    nombre VARCHAR(100) NOT NULL,
    telefonoFa VARCHAR(15),
    idUniversidad INT NOT NULL,
    FOREIGN KEY (idUniversidad) REFERENCES Universidad(idUniversidad)
);

-- =========================
-- TABLA PROGRAMA
-- =========================
CREATE TABLE Programa (
    idPrograma INT PRIMARY KEY IDENTITY(1,1),
    nombre VARCHAR(100) NOT NULL,
    idFacultad INT NOT NULL,
    FOREIGN KEY (idFacultad) REFERENCES Facultad(idFacultad)
);

-- =========================
-- TABLA ESPECIALIDAD
-- =========================
CREATE TABLE Especialidad (
    idEspecialidad INT PRIMARY KEY IDENTITY(1,1),
    nombre VARCHAR(100) NOT NULL,
    descripcion VARCHAR(150)
);

-- =========================
-- TABLA DOCENTE
-- =========================
CREATE TABLE Docente (
    idDocente INT PRIMARY KEY IDENTITY(1,1),
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    idFacultad INT NOT NULL,
    idEspecialidad INT NOT NULL,
    FOREIGN KEY (idFacultad) REFERENCES Facultad(idFacultad),
    FOREIGN KEY (idEspecialidad) REFERENCES Especialidad(idEspecialidad)
);

-- =========================
-- TABLA ESTUDIANTE
-- =========================
CREATE TABLE Estudiante (
    idEstudiante INT PRIMARY KEY IDENTITY(1,1),
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    telefono VARCHAR(15),
    idDireccion INT NOT NULL,
    idPrograma INT NOT NULL,
    FOREIGN KEY (idDireccion) REFERENCES Direccion(idDireccion),
    FOREIGN KEY (idPrograma) REFERENCES Programa(idPrograma)
);

-- =========================
-- TABLA ASIGNATURA
-- =========================
CREATE TABLE Asignatura (
    idAsignatura INT PRIMARY KEY IDENTITY(1,1),
    nombre VARCHAR(100) NOT NULL,
    creditos INT NOT NULL CHECK (creditos > 0),
    idPrograma INT NOT NULL,
    FOREIGN KEY (idPrograma) REFERENCES Programa(idPrograma)
);

-- =========================
-- TABLA DOCENTE_ASIGNATURA
-- (Muchos a Muchos)
-- =========================
CREATE TABLE Docente_Asignatura (
    idDocente INT,
    idAsignatura INT,
    PRIMARY KEY (idDocente, idAsignatura),
    FOREIGN KEY (idDocente) REFERENCES Docente(idDocente),
    FOREIGN KEY (idAsignatura) REFERENCES Asignatura(idAsignatura)
);

-- =========================
-- TABLA HORARIO
-- =========================
CREATE TABLE Horario (
    idHorario INT PRIMARY KEY IDENTITY(1,1),
    dia VARCHAR(20) NOT NULL,
    horaInicio TIME NOT NULL,
    horaFin TIME NOT NULL,
    jornada VARCHAR(50) NOT NULL,
    bloque VARCHAR(50) NOT NULL,
    aula VARCHAR(50) NOT NULL,
    idAsignatura INT NOT NULL,
    FOREIGN KEY (idAsignatura) REFERENCES Asignatura(idAsignatura),
    CONSTRAINT CHK_Horario CHECK (horaFin > horaInicio)
);

-- =========================
-- TABLA ESTUDIANTE_ASIGNATURA
-- (Muchos a Muchos)
-- =========================
CREATE TABLE Estudiante_Asignatura (
    idEstudiante INT,
    idAsignatura INT,
    fechaInscripcion DATE DEFAULT GETDATE(),
    nota DECIMAL(3,2),
    PRIMARY KEY (idEstudiante, idAsignatura),
    FOREIGN KEY (idEstudiante) REFERENCES Estudiante(idEstudiante),
    FOREIGN KEY (idAsignatura) REFERENCES Asignatura(idAsignatura)
);