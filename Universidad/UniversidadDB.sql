CREATE DATABASE Universidad;
GO

USE Universidad;
GO

-- =========================
-- TABLA DIRECCION
-- =========================
CREATE TABLE Direccion (
    idDireccion INT PRIMARY KEY IDENTITY(1,1),
    descripcion VARCHAR(100) NOT NULL,
    barrio VARCHAR(50) NOT NULL,
    municipio VARCHAR(50) NOT NULL,
    departamento VARCHAR(50) NOT NULL
);

-- =========================
-- TABLA FACULTAD
-- =========================
CREATE TABLE Facultad (
    idFacultad INT PRIMARY KEY IDENTITY(1,1),
    nombre VARCHAR(100) NOT NULL,
    telefono VARCHAR(20)
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
    nombre VARCHAR(100) NOT NULL
);

-- =========================
-- TABLA DOCENTE
-- =========================
CREATE TABLE Docente (
    idDocente INT PRIMARY KEY IDENTITY(1,1),
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    idEspecialidad INT NOT NULL,
    idFacultad INT NOT NULL,
    FOREIGN KEY (idEspecialidad) REFERENCES Especialidad(idEspecialidad),
    FOREIGN KEY (idFacultad) REFERENCES Facultad(idFacultad)
);

-- =========================
-- TABLA ESTUDIANTE
-- =========================
CREATE TABLE Estudiante (
    idEstudiante INT PRIMARY KEY IDENTITY(1,1),
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    telefono VARCHAR(20),
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
    creditos INT NOT NULL,
    idPrograma INT NOT NULL,
    FOREIGN KEY (idPrograma) REFERENCES Programa(idPrograma)
);

-- =========================
-- TABLA HORARIO
-- =========================
CREATE TABLE Horario (
    idHorario INT PRIMARY KEY IDENTITY(1,1),
    dia VARCHAR(20) NOT NULL,
    horaInicio TIME NOT NULL,
    horaFin TIME NOT NULL,
    jornada VARCHAR(20),
    bloque VARCHAR(20),
    aula VARCHAR(20),
    idAsignatura INT NOT NULL,
    FOREIGN KEY (idAsignatura) REFERENCES Asignatura(idAsignatura)
);

-- =========================
-- TABLA MATRICULA
-- =========================
CREATE TABLE Matricula (
    idMatricula INT PRIMARY KEY IDENTITY(1,1),
    idEstudiante INT NOT NULL,
    idAsignatura INT NOT NULL,
    idDocente INT NOT NULL,
    semestre VARCHAR(20) NOT NULL,
    nota DECIMAL(3,2),
    estado VARCHAR(20) NOT NULL,
    FOREIGN KEY (idEstudiante) REFERENCES Estudiante(idEstudiante),
    FOREIGN KEY (idAsignatura) REFERENCES Asignatura(idAsignatura),
    FOREIGN KEY (idDocente) REFERENCES Docente(idDocente)
);
