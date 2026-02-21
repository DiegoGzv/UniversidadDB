USE Universidad;
GO

-- =========================
-- FACULTADES (5)
-- =========================
INSERT INTO Facultad (nombre, telefono) VALUES
('Ingeniería', '6041111111'),
('Ciencias Empresariales', '6042222222'),
('Ciencias de la Salud', '6043333333'),
('Ciencias Sociales', '6044444444'),
('Artes y Humanidades', '6045555555');

-- =========================
-- ESPECIALIDADES (20)
-- =========================
INSERT INTO Especialidad (nombre) VALUES
('Base de Datos'),('Inteligencia Artificial'),('Redes'),('Contabilidad'),
('Finanzas'),('Marketing'),('Enfermería'),('Psicología Clínica'),
('Derecho Penal'),('Derecho Laboral'),('Diseño Gráfico'),('Literatura'),
('Matemáticas'),('Estadística'),('Programación'),('Auditoría'),
('Administración'),('Fisioterapia'),('Sociología'),('Comunicación Social');

-- =========================
-- DIRECCIONES (20)
-- =========================
INSERT INTO Direccion (descripcion, barrio, municipio, departamento) VALUES
('Cra 45 #10-20','El Poblado','Medellín','Antioquia'),
('Calle 30 #50-12','Laureles','Medellín','Antioquia'),
('Cra 70 #25-10','Belén','Medellín','Antioquia'),
('Calle 80 #45-33','Robledo','Medellín','Antioquia'),
('Cra 52 #15-90','Envigado Centro','Envigado','Antioquia'),
('Calle 40 #22-10','Sabaneta','Sabaneta','Antioquia'),
('Cra 10 #5-30','Centro','Bello','Antioquia'),
('Calle 12 #18-50','La América','Medellín','Antioquia'),
('Cra 33 #60-40','Manrique','Medellín','Antioquia'),
('Calle 70 #100-12','Castilla','Medellín','Antioquia'),
('Cra 80 #45-22','La Floresta','Medellín','Antioquia'),
('Calle 90 #23-11','Aranjuez','Medellín','Antioquia'),
('Cra 21 #33-44','Itagüí Centro','Itagüí','Antioquia'),
('Calle 55 #12-99','Copacabana','Copacabana','Antioquia'),
('Cra 65 #88-10','Buenos Aires','Medellín','Antioquia'),
('Calle 100 #45-66','Girardota','Girardota','Antioquia'),
('Cra 77 #10-10','La Estrella','La Estrella','Antioquia'),
('Calle 15 #25-75','Guayabal','Medellín','Antioquia'),
('Cra 44 #11-32','San Javier','Medellín','Antioquia'),
('Calle 200 #30-20','Rionegro','Rionegro','Antioquia');

-- =========================
-- PROGRAMAS (20)
-- =========================
INSERT INTO Programa (nombre, idFacultad) VALUES
('Ingeniería de Sistemas',1),('Ingeniería Industrial',1),
('Ingeniería Civil',1),('Ingeniería Electrónica',1),
('Administración de Empresas',2),('Contaduría Pública',2),
('Economía',2),('Negocios Internacionales',2),
('Enfermería',3),('Fisioterapia',3),
('Bacteriología',3),('Nutrición',3),
('Derecho',4),('Psicología',4),
('Trabajo Social',4),('Sociología',4),
('Diseño Gráfico',5),('Literatura',5),
('Comunicación Social',5),('Artes Plásticas',5);

-- =========================
-- DOCENTES (20)
-- =========================
INSERT INTO Docente (nombre, email, idEspecialidad, idFacultad) VALUES
('Carlos Ramirez','carlos@uni.edu',1,1),
('Laura Gómez','laura@uni.edu',2,1),
('Andrés Torres','andres@uni.edu',3,1),
('Marta Díaz','marta@uni.edu',4,2),
('Julian Rojas','julian@uni.edu',5,2),
('Paula Mejía','paula@uni.edu',6,2),
('Sofía López','sofia@uni.edu',7,3),
('Camilo Herrera','camilo@uni.edu',8,4),
('Natalia Castro','natalia@uni.edu',9,4),
('Felipe Morales','felipe@uni.edu',10,4),
('Daniela Ruiz','daniela@uni.edu',11,5),
('Juan Vélez','juan@uni.edu',12,5),
('Sara Gil','sara@uni.edu',13,1),
('Mateo Restrepo','mateo@uni.edu',14,1),
('Valeria Peña','valeria@uni.edu',15,1),
('Esteban Cárdenas','esteban@uni.edu',16,2),
('Isabella Arias','isabella@uni.edu',17,2),
('Santiago Muñoz','santiago@uni.edu',18,3),
('Manuela Ortiz','manuela@uni.edu',19,4),
('Luis Gonzalez','luisGonz@uni.edu',20,5);

-- =========================
-- ESTUDIANTES (20)
-- =========================
INSERT INTO Estudiante (nombre, apellido, email, telefono, idDireccion, idPrograma) VALUES
('Juan','Pérez','juanp@correo.com','3001111111',1,1),
('Ana','Martinez','anam@correo.com','3002222222',2,1),
('Luis','Gómez','luisg@correo.com','3003333333',3,2),
('Valentina','Rojas','valer@correo.com','3004444444',4,3),
('Pedro','López','pedrol@correo.com','3005555555',5,4),
('María','Torres','mariat@correo.com','3006666666',6,5),
('Santiago','Díaz','santid@correo.com','3007777777',7,6),
('Laura','Castro','laurac@correo.com','3008888888',8,7),
('Andrés','Ramírez','andresr@correo.com','3009999999',9,8),
('Sofía','Vélez','sofiav@correo.com','3010000000',10,9),
('Camila','Gil','camilag@correo.com','3011111111',11,10),
('Mateo','Ortiz','mateoo@correo.com','3012222222',12,11),
('Daniel','Herrera','danielh@correo.com','3013333333',13,12),
('Isabella','Morales','isabellam@correo.com','3014444444',14,13),
('Sebastián','Peña','sebasp@correo.com','3015555555',15,14),
('Valeria','Arias','valea@correo.com','3016666666',16,15),
('Samuel','Cárdenas','samuelc@correo.com','3017777777',17,16),
('Lucía','Restrepo','luciar@correo.com','3018888888',18,17),
('David','Muñoz','davidm@correo.com','3019999999',19,18),
('Mariana','León','marianal@correo.com','3020000000',20,19);

-- =========================
-- ASIGNATURAS (20)
-- =========================
INSERT INTO Asignatura (nombre, creditos, idPrograma) VALUES
('Bases de Datos',3,1),('Programación I',4,1),
('Cálculo I',4,2),('Física I',4,3),
('Contabilidad General',3,6),('Microeconomía',3,7),
('Anatomía',4,9),('Psicología General',3,14),
('Derecho Penal I',3,13),('Diseño Digital',3,17),
('Literatura Universal',3,18),('Estadística I',3,2),
('Redes de Computadores',3,1),('Marketing Estratégico',3,5),
('Auditoría I',3,6),('Sociología General',3,16),
('Comunicación Organizacional',3,19),('Nutrición Básica',3,12),
('Fisiología',4,9),('Inteligencia Artificial',4,1);

-- =========================
-- HORARIOS (20)
-- =========================
INSERT INTO Horario (dia, horaInicio, horaFin, jornada, bloque, aula, idAsignatura) VALUES
('Lunes','08:00','10:00','Mañana','A1','101',1),
('Martes','10:00','12:00','Mañana','A2','102',2),
('Miércoles','08:00','10:00','Mañana','A1','103',3),
('Jueves','10:00','12:00','Mañana','A2','104',4),
('Viernes','08:00','10:00','Mañana','A1','105',5),
('Lunes','14:00','16:00','Tarde','B1','201',6),
('Martes','14:00','16:00','Tarde','B1','202',7),
('Miércoles','14:00','16:00','Tarde','B1','203',8),
('Jueves','14:00','16:00','Tarde','B1','204',9),
('Viernes','14:00','16:00','Tarde','B1','205',10),
('Lunes','18:00','20:00','Noche','C1','301',11),
('Martes','18:00','20:00','Noche','C1','302',12),
('Miércoles','18:00','20:00','Noche','C1','303',13),
('Jueves','18:00','20:00','Noche','C1','304',14),
('Viernes','18:00','20:00','Noche','C1','305',15),
('Lunes','09:00','11:00','Mañana','A3','106',16),
('Martes','09:00','11:00','Mañana','A3','107',17),
('Miércoles','09:00','11:00','Mañana','A3','108',18),
('Jueves','09:00','11:00','Mañana','A3','109',19),
('Viernes','09:00','11:00','Mañana','A3','110',20);

-- =========================
-- MATRÍCULAS (60)
-- =========================
INSERT INTO Matricula (idEstudiante, idAsignatura, idDocente, semestre, nota, estado) VALUES
(1,1,1,'2025-1',4.5,'Aprobado'),
(1,2,2,'2025-1',4.0,'Aprobado'),
(1,13,1,'2025-1',4.2,'Aprobado'),

(2,1,1,'2025-1',3.8,'Aprobado'),
(2,2,2,'2025-1',3.9,'Aprobado'),
(2,20,2,'2025-1',4.3,'Aprobado'),

(3,3,3,'2025-1',3.2,'Aprobado'),
(3,12,14,'2025-1',3.7,'Aprobado'),
(3,4,3,'2025-1',2.8,'Reprobado'),

(4,4,3,'2025-1',3.5,'Aprobado'),
(4,3,13,'2025-1',4.1,'Aprobado'),
(4,12,14,'2025-1',3.6,'Aprobado'),

(5,13,1,'2025-1',4.2,'Aprobado'),
(5,20,2,'2025-1',4.8,'Aprobado'),
(5,1,1,'2025-1',3.9,'Aprobado'),

(6,14,6,'2025-1',3.5,'Aprobado'),
(6,5,4,'2025-1',4.0,'Aprobado'),
(6,15,16,'2025-1',3.6,'Aprobado'),

(7,5,4,'2025-1',4.8,'Aprobado'),
(7,15,16,'2025-1',4.2,'Aprobado'),
(7,6,5,'2025-1',3.9,'Aprobado'),

(8,6,5,'2025-1',3.9,'Aprobado'),
(8,14,6,'2025-1',3.4,'Aprobado'),
(8,17,20,'2025-1',4.1,'Aprobado'),

(9,8,8,'2025-1',4.1,'Aprobado'),
(9,16,19,'2025-1',3.8,'Aprobado'),
(9,9,9,'2025-1',3.5,'Aprobado'),

(10,7,7,'2025-1',3.0,'Aprobado'),
(10,19,7,'2025-1',3.6,'Aprobado'),
(10,18,18,'2025-1',3.9,'Aprobado'),

(11,19,7,'2025-1',2.5,'Reprobado'),
(11,7,7,'2025-1',3.1,'Aprobado'),
(11,18,18,'2025-1',4.0,'Aprobado'),

(12,10,11,'2025-1',4.7,'Aprobado'),
(12,17,20,'2025-1',4.1,'Aprobado'),
(12,11,12,'2025-1',4.5,'Aprobado'),

(13,18,18,'2025-1',3.3,'Aprobado'),
(13,7,7,'2025-1',3.8,'Aprobado'),
(13,19,7,'2025-1',3.2,'Aprobado'),

(14,9,9,'2025-1',4.0,'Aprobado'),
(14,8,8,'2025-1',3.7,'Aprobado'),
(14,16,19,'2025-1',4.4,'Aprobado'),

(15,8,8,'2025-1',3.7,'Aprobado'),
(15,9,9,'2025-1',3.9,'Aprobado'),
(15,16,19,'2025-1',4.1,'Aprobado'),

(16,16,19,'2025-1',4.4,'Aprobado'),
(16,9,9,'2025-1',4.2,'Aprobado'),
(16,8,8,'2025-1',3.6,'Aprobado'),

(17,15,16,'2025-1',3.6,'Aprobado'),
(17,5,4,'2025-1',4.1,'Aprobado'),
(17,14,6,'2025-1',3.5,'Aprobado'),

(18,11,12,'2025-1',4.9,'Aprobado'),
(18,10,11,'2025-1',4.6,'Aprobado'),
(18,17,20,'2025-1',4.2,'Aprobado'),

(19,20,2,'2025-1',4.8,'Aprobado'),
(19,1,1,'2025-1',4.3,'Aprobado'),
(19,2,2,'2025-1',4.0,'Aprobado'),

(20,17,20,'2025-1',3.5,'Aprobado'),
(20,10,11,'2025-1',3.9,'Aprobado'),
(20,11,12,'2025-1',4.1,'Aprobado');
