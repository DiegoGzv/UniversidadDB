USE Universidad;
GO

-- ======================
-- DIRECCION (20)
-- ======================
INSERT INTO Direccion (descripcion,barrio,departamento,municipio) VALUES
('Calle 10 #45-30','El Poblado','Antioquia','Medellín'),
('Carrera 70 #50-20','Laureles','Antioquia','Medellín'),
('Av 33 #80-15','Belén','Antioquia','Medellín'),
('Calle 100 #15-40','Chapinero','Cundinamarca','Bogotá'),
('Cra 5 #20-10','Centro','Valle del Cauca','Cali'),
('Calle 12 #34-56','Boston','Antioquia','Medellín'),
('Cra 80 #20-30','Robledo','Antioquia','Medellín'),
('Av 80 #45-10','Estadio','Antioquia','Medellín'),
('Calle 50 #70-15','Manrique','Antioquia','Medellín'),
('Cra 30 #10-22','Envigado Centro','Antioquia','Envigado'),
('Calle 5 #15-80','Sabaneta','Antioquia','Sabaneta'),
('Av 19 #100-25','Usaquén','Cundinamarca','Bogotá'),
('Cra 7 #40-60','Teusaquillo','Cundinamarca','Bogotá'),
('Calle 25 #12-44','Centro','Valle del Cauca','Cali'),
('Cra 66 #5-90','Granada','Valle del Cauca','Cali'),
('Av 68 #13-75','Kennedy','Cundinamarca','Bogotá'),
('Calle 90 #45-32','La Castellana','Antioquia','Medellín'),
('Cra 45 #23-19','Itagüí','Antioquia','Itagüí'),
('Av 33 #77-12','La América','Antioquia','Medellín'),
('Calle 44 #15-18','Centro','Antioquia','Rionegro');

-- ======================
-- FACULTAD (10)
-- ======================
INSERT INTO Facultad (nombre,telefonoFa) VALUES
('Ingeniería','6041111111'),
('Ciencias Económicas','6042222222'),
('Derecho','6043333333'),
('Medicina','6044444444'),
('Arquitectura','6045555555'),
('Ciencias Sociales','6046666666'),
('Artes','6047777777'),
('Psicología','6048888888'),
('Educación','6049999999'),
('Ciencias Básicas','6041010101');

-- ======================
-- PROGRAMA (10)
-- ======================
INSERT INTO Programa (nombre,idFacultad) VALUES
('Ingeniería de Sistemas',1),
('Ingeniería Industrial',1),
('Administración de Empresas',2),
('Economía',2),
('Derecho Penal',3),
('Derecho Civil',3),
('Medicina General',4),
('Enfermería',4),
('Diseño Arquitectónico',5),
('Urbanismo',5);

-- ======================
-- ESPECIALIDAD (10)
-- ======================
INSERT INTO Especialidad (nombre,descripcion) VALUES
('Bases de Datos','BD'),
('Finanzas','Finanzas'),
('Derecho Penal','Penal'),
('Cirugía','Cirugía'),
('Diseño Urbano','Urbano'),
('IA','Inteligencia Artificial'),
('Auditoría','Auditoría'),
('Cardiología','Corazón'),
('Psicología Clínica','Clínica'),
('Matemática Aplicada','Matemática');

-- ======================
-- DOCENTE (15)
-- ======================
INSERT INTO Docente (nombre,email,idFacultad,idEspecialidad) VALUES
('Carlos Gómez','carlos@uni.edu',1,1),
('Laura Martínez','laura@uni.edu',2,2),
('Andrés López','andres@uni.edu',3,3),
('Sofía Ramírez','sofia@uni.edu',4,4),
('Miguel Torres','miguel@uni.edu',5,5),
('Alejandro Ruiz','alejandro@uni.edu',1,6),
('Patricia Gómez','patricia@uni.edu',2,7),
('Fernando Díaz','fernando@uni.edu',3,3),
('Carolina Mejía','carolina@uni.edu',4,8),
('Jorge Salas','jorge@uni.edu',5,5),
('Mónica León','monica@uni.edu',1,1),
('Ricardo Peña','ricardo@uni.edu',2,2),
('Juliana Torres','juliana@uni.edu',3,6),
('Camilo Vélez','camilo@uni.edu',4,4),
('Diana Herrera','diana@uni.edu',5,5);

-- ======================
-- ESTUDIANTE (20)
-- ======================
INSERT INTO Estudiante (nombre,apellido,email,telefono,idDireccion,idPrograma) VALUES
('Juan','Pérez','juan@correo.com','3001111111',1,1),
('María','Gómez','maria@correo.com','3002222222',2,1),
('Pedro','López','pedro@correo.com','3003333333',3,1),
('Ana','Martínez','ana@correo.com','3004444444',4,1),
('Luis','Rodríguez','luis@correo.com','3005555555',5,1),
('Camila','Ruiz','camila@correo.com','3011111111',6,3),
('David','Moreno','david@correo.com','3011111112',7,3),
('Valentina','Castro','valentina@correo.com','3011111113',8,3),
('Santiago','Herrera','santiago@correo.com','3011111114',9,3),
('Mateo','Vargas','mateo@correo.com','3011111115',10,3),
('Isabella','Rojas','isabella@correo.com','3011111116',11,2),
('Daniel','Ortega','daniel@correo.com','3011111117',12,2),
('Lucía','Silva','lucia@correo.com','3011111118',13,2),
('Sebastián','Méndez','sebastian@correo.com','3011111119',14,4),
('Mariana','Cruz','mariana@correo.com','3011111120',15,4),
('Tomás','Navarro','tomas@correo.com','3011111121',16,5),
('Paula','Jiménez','paula@correo.com','3011111122',17,6),
('Andrés','Cardona','andres2@correo.com','3011111123',18,7),
('Natalia','Pardo','natalia@correo.com','3011111124',19,8),
('Esteban','Quintero','esteban@correo.com','3011111125',20,9);

-- ======================
-- ASIGNATURA (10)
-- ======================
INSERT INTO Asignatura (nombre,creditos,idPrograma) VALUES
('Programación I',3,1),
('Programación II',3,1),
('Base de Datos I',3,1),
('Microeconomía',3,3),
('Contabilidad',3,3),
('Derecho Constitucional',4,5),
('Anatomía',4,7),
('Diseño Urbano',3,9),
('Estadística',3,2),
('Finanzas I',3,3);

-- ======================
-- DOCENTE_ASIGNATURA
-- ======================
INSERT INTO Docente_Asignatura VALUES
(1,1),(1,2),(1,3),
(2,4),(2,5),(2,10),
(3,6),
(4,7),
(5,8),
(6,1),(6,2),
(11,3);

-- ======================
-- HORARIO
-- ======================
INSERT INTO Horario (dia,horaInicio,horaFin,jornada,bloque,aula,idAsignatura) VALUES
('Lunes','08:00','10:00','Diurna','A','301',1),
('Martes','10:00','12:00','Diurna','B','302',2),
('Miércoles','08:00','10:00','Diurna','C','303',3),
('Jueves','14:00','16:00','Tarde','D','201',4),
('Viernes','07:00','09:00','Diurna','E','202',5);

-- ======================
-- ESTUDIANTE_ASIGNATURA
-- ======================
INSERT INTO Estudiante_Asignatura (idEstudiante,idAsignatura,nota) VALUES
(1,1,4.5),(2,1,4.0),(3,1,3.8),(4,1,4.2),(5,1,4.6),
(6,4,3.9),(7,4,4.1),(8,4,3.7),
(11,9,4.3),(12,9,3.6),
(16,6,4.8),(17,6,3.5);
