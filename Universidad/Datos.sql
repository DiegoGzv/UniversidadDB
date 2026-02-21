USE Universidad;

-- =========================
-- DIRECCION
-- =========================

INSERT INTO Direccion (descripcion, barrio, departamento, municipio) VALUES
('Calle 10 #45-30', 'El Poblado', 'Antioquia', 'Medellín'),
('Carrera 70 #50-20', 'Laureles', 'Antioquia', 'Medellín'),
('Av. 33 #80-15', 'Belén', 'Antioquia', 'Medellín'),
('Calle 100 #15-40', 'Chapinero', 'Cundinamarca', 'Bogotá'),
('Cra 5 #20-10', 'Centro', 'Valle del Cauca', 'Cali');

-- =========================
-- FACULTAD
-- =========================

INSERT INTO Facultad (nombre, telefonoFa) VALUES
('Ingeniería', '6041111111'),
('Ciencias Económicas', '6042222222'),
('Derecho', '6043333333'),
('Medicina', '6044444444'),
('Arquitectura', '6045555555');

-- =========================
-- PROGRAMA
-- =========================

INSERT INTO Programa (nombre, idFacultad) VALUES
('Ingeniería de Sistemas', 1),
('Ingeniería Industrial', 1),
('Administración de Empresas', 2),
('Derecho Penal', 3),
('Medicina General', 4);

-- =========================
-- ESPECIALIDAD
-- =========================

INSERT INTO Especialidad (nombre, descripcion) VALUES
('Bases de Datos', 'Especialista en diseño y administración de BD'),
('Finanzas', 'Experto en gestión financiera'),
('Derecho Penal', 'Especialista en leyes penales'),
('Cirugía', 'Especialista en procedimientos quirúrgicos'),
('Diseño Urbano', 'Experto en planificación urbana');

-- =========================
-- DOCENTE
-- =========================

INSERT INTO Docente (nombre, email, idFacultad, idEspecialidad) VALUES
('Carlos Gómez', 'carlos@uni.edu', 1, 1),
('Laura Martínez', 'laura@uni.edu', 2, 2),
('Andrés López', 'andres@uni.edu', 3, 3),
('Sofía Ramírez', 'sofia@uni.edu', 4, 4),
('Miguel Torres', 'miguel@uni.edu', 5, 5);

-- =========================
-- ESTUDIANTE
-- =========================

INSERT INTO Estudiante (nombre, apellido, email, telefono, idDireccion, idPrograma) VALUES
('Juan', 'Pérez', 'juan@correo.com', '3001111111', 1, 1),
('María', 'Gómez', 'maria@correo.com', '3002222222', 2, 2),
('Pedro', 'López', 'pedro@correo.com', '3003333333', 3, 3),
('Ana', 'Martínez', 'ana@correo.com', '3004444444', 4, 4),
('Luis', 'Rodríguez', 'luis@correo.com', '3005555555', 5, 5);

-- =========================
-- ASIGNATURA
-- =========================

INSERT INTO Asignatura (nombre, creditos, idPrograma) VALUES
('Base de Datos I', 3, 1),
('Procesos Industriales', 3, 2),
('Contabilidad General', 2, 3),
('Derecho Constitucional', 4, 4),
('Anatomía Humana', 5, 5);

-- =========================
-- DOCENTE ASIGNATURA
-- =========================

INSERT INTO Docente_Asignatura (idDocente, idAsignatura) VALUES
(1,1),
(2,3),
(3,4),
(4,5),
(5,2);

-- =========================
-- HORARIO
-- =========================

INSERT INTO Horario (dia, horaInicio, horaFin, jornada, bloque, aula, idAsignatura) VALUES
('Lunes', '08:00', '10:00', 'Diurna', 'A', '301', 1),
('Martes', '10:00', '12:00', 'Diurna', 'B', '202', 2),
('Miércoles', '14:00', '16:00', 'Tarde', 'C', '105', 3),
('Jueves', '18:00', '20:00', 'Nocturna', 'D', '401', 4),
('Viernes', '07:00', '09:00', 'Diurna', 'E', 'Lab1', 5);

-- =========================
-- ESTUDIANTE ASIGNATURA
-- =========================

INSERT INTO Estudiante_Asignatura (idEstudiante, idAsignatura, nota) VALUES
(1,1,4.5),
(2,2,3.8),
(3,3,4.2),
(4,4,3.5),
(5,5,4.9);
