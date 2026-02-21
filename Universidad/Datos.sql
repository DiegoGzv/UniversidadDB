/* =====================================================
   INSERCIÓN DE DATOS
===================================================== */

-- 5 FACULTADES
INSERT INTO Facultad (nombre, telefono) VALUES
('Ingeniería','3001111111'),
('Ciencias Económicas','3002222222'),
('Salud','3003333333'),
('Derecho','3004444444'),
('Artes','3005555555');


-- ESPECIALIDADES
INSERT INTO Especialidad (nombre) VALUES
('Software'),('Redes'),('Finanzas'),('Marketing'),
('Enfermería'),('Medicina General'),
('Derecho Penal'),('Derecho Civil'),
('Diseño Gráfico'),('Música');


-- PROGRAMAS
INSERT INTO Programa (nombre, idFacultad) VALUES
('Ingeniería de Sistemas',1),
('Ingeniería Industrial',1),
('Contaduría Pública',2),
('Administración de Empresas',2),
('Enfermería Profesional',3),
('Medicina',3),
('Derecho',4),
('Artes Visuales',5),
('Música Profesional',5),
('Negocios Internacionales',2);


-- DIRECCIONES (20)
INSERT INTO Direccion (descripcion,barrio,municipio,departamento) VALUES
('Calle 1 #10-20','Centro','Medellín','Antioquia'),
('Calle 2 #10-21','Laureles','Medellín','Antioquia'),
('Calle 3 #10-22','Belén','Medellín','Antioquia'),
('Calle 4 #10-23','Robledo','Medellín','Antioquia'),
('Calle 5 #10-24','Envigado','Envigado','Antioquia'),
('Calle 6 #10-25','Sabaneta','Sabaneta','Antioquia'),
('Calle 7 #10-26','Itagüí','Itagüí','Antioquia'),
('Calle 8 #10-27','Buenos Aires','Medellín','Antioquia'),
('Calle 9 #10-28','Castilla','Medellín','Antioquia'),
('Calle 10 #10-29','Manrique','Medellín','Antioquia'),
('Calle 11 #10-30','Aranjuez','Medellín','Antioquia'),
('Calle 12 #10-31','San Javier','Medellín','Antioquia'),
('Calle 13 #10-32','El Poblado','Medellín','Antioquia'),
('Calle 14 #10-33','Guayabal','Medellín','Antioquia'),
('Calle 15 #10-34','Bello','Bello','Antioquia'),
('Calle 16 #10-35','Copacabana','Copacabana','Antioquia'),
('Calle 17 #10-36','Girardota','Girardota','Antioquia'),
('Calle 18 #10-37','Rionegro','Rionegro','Antioquia'),
('Calle 19 #10-38','La Ceja','La Ceja','Antioquia'),
('Calle 20 #10-39','Caldas','Caldas','Antioquia');


-- DOCENTES (20)
INSERT INTO Docente (nombre,apellido,email,idEspecialidad,idFacultad) VALUES
('Carlos','Ramírez','carlos@uni.edu',1,1),
('Laura','Gómez','laura@uni.edu',2,1),
('Andrés','López','andres@uni.edu',3,2),
('María','Torres','maria@uni.edu',4,2),
('Camila','Suárez','camila@uni.edu',5,3),
('Juan','Pérez','juan@uni.edu',6,3),
('Sofía','Martínez','sofia@uni.edu',7,4),
('Daniel','Herrera','daniel@uni.edu',8,4),
('Valentina','Rojas','valentina@uni.edu',9,5),
('Mateo','Castro','mateo@uni.edu',10,5),
('Paula','Moreno','paula@uni.edu',1,1),
('Felipe','Vargas','felipe@uni.edu',2,1),
('Natalia','Ortega','natalia@uni.edu',3,2),
('Sebastián','Molina','sebastian@uni.edu',4,2),
('Alejandra','Cano','alejandra@uni.edu',5,3),
('David','Giraldo','david@uni.edu',6,3),
('Isabella','Mejía','isabella@uni.edu',7,4),
('Samuel','Restrepo','samuel@uni.edu',8,4),
('Gabriela','Cardona','gabriela@uni.edu',9,5),
('Tomás','Henao','tomas@uni.edu',10,5);

--ESTUDIANTES
INSERT INTO Estudiante (nombre,apellido,email,telefono,idDireccion,idPrograma,idFacultad) VALUES
('Juan','Arango','juan1@uni.edu','3000000001',1,1,1),
('Sara','Quintero','sara@uni.edu','3000000002',2,1,1),
('Miguel','Álvarez','miguel@uni.edu','3000000003',3,2,1),
('Lucía','Bedoya','lucia@uni.edu','3000000004',4,3,2),
('Andrés','Castaño','andres2@uni.edu','3000000005',5,4,2),
('Laura','Díaz','laura2@uni.edu','3000000006',6,5,3),
('Mateo','Escobar','mateo2@uni.edu','3000000007',7,6,3),
('Valeria','Franco','valeria@uni.edu','3000000008',8,7,4),
('Sebastián','García','sebastian2@uni.edu','3000000009',9,8,5),
('Camila','Hurtado','camila2@uni.edu','3000000010',10,9,5),
('David','Isaza','david2@uni.edu','3000000011',11,10,2),
('Ana','Jiménez','ana@uni.edu','3000000012',12,3,2),
('Daniel','Londoño','daniel2@uni.edu','3000000013',13,4,2),
('Mariana','Montoya','mariana@uni.edu','3000000014',14,5,3),
('Felipe','Naranjo','felipe2@uni.edu','3000000015',15,6,3),
('Isabella','Ospina','isabella2@uni.edu','3000000016',16,7,4),
('Samuel','Patiño','samuel2@uni.edu','3000000017',17,8,5),
('Paula','Quiroz','paula2@uni.edu','3000000018',18,9,5),
('Tomás','Rendón','tomas2@uni.edu','3000000019',19,10,2),
('Sofía','Salazar','sofia2@uni.edu','3000000020',20,1,1);

--ASIGNATURA
INSERT INTO Asignatura (nombre, creditos, idPrograma) VALUES
('Programación I',4,1),
('Programación II',4,1),
('Bases de Datos',3,1),
('Cálculo I',4,2),
('Cálculo II',4,2),
('Contabilidad I',3,3),
('Contabilidad II',3,3),
('Administración I',3,4),
('Administración II',3,4),
('Anatomía',4,6),
('Farmacología',4,6),
('Derecho Penal I',3,7),
('Derecho Civil I',3,7),
('Diseño Digital',3,8),
('Historia del Arte',2,8),
('Teoría Musical',3,9),
('Armonía',3,9),
('Negocios Internacionales I',3,10),
('Comercio Exterior',3,10),
('Gestión Empresarial',3,4);

--HORARIOS
INSERT INTO Horario (dia,horaInicio,horaFin,jornada,bloque,aula,idAsignatura) VALUES
('Lunes','08:00','10:00','Mañana','A1','101',1),
('Martes','10:00','12:00','Mañana','A2','102',2),
('Miércoles','08:00','10:00','Mañana','B1','103',3),
('Jueves','10:00','12:00','Mañana','B2','104',4),
('Viernes','08:00','10:00','Mañana','C1','105',5),
('Lunes','14:00','16:00','Tarde','C2','201',6),
('Martes','14:00','16:00','Tarde','D1','202',7),
('Miércoles','14:00','16:00','Tarde','D2','203',8),
('Jueves','14:00','16:00','Tarde','E1','204',9),
('Viernes','14:00','16:00','Tarde','E2','205',10),
('Lunes','18:00','20:00','Noche','F1','301',11),
('Martes','18:00','20:00','Noche','F2','302',12),
('Miércoles','18:00','20:00','Noche','G1','303',13),
('Jueves','18:00','20:00','Noche','G2','304',14),
('Viernes','18:00','20:00','Noche','H1','305',15),
('Sábado','08:00','10:00','Mañana','H2','401',16),
('Sábado','10:00','12:00','Mañana','I1','402',17),
('Sábado','14:00','16:00','Tarde','I2','403',18),
('Sábado','16:00','18:00','Tarde','J1','404',19),
('Sábado','18:00','20:00','Noche','J2','405',20);

--MATRICULAS
INSERT INTO Matricula (idEstudiante,idAsignatura,idDocente,semestre,nota,estado) VALUES
(1,1,1,'2026-1',4.5,'Aprobado'),
(1,2,2,'2026-1',4.2,'Aprobado'),
(2,1,1,'2026-1',3.8,'Aprobado'),
(2,3,2,'2026-1',4.0,'Aprobado'),
(3,1,11,'2026-1',3.5,'Aprobado'),
(3,3,12,'2026-1',4.1,'Aprobado'),

(4,4,1,'2026-1',3.0,'Aprobado'),
(4,5,2,'2026-1',2.8,'Reprobado'),
(5,4,11,'2026-1',3.9,'Aprobado'),
(5,5,12,'2026-1',4.0,'Aprobado'),

(6,6,3,'2026-1',4.3,'Aprobado'),
(6,7,13,'2026-1',3.7,'Aprobado'),
(12,6,3,'2026-1',3.2,'Aprobado'),
(12,7,13,'2026-1',2.9,'Reprobado'),

(7,8,4,'2026-1',4.4,'Aprobado'),
(7,9,14,'2026-1',3.5,'Aprobado'),
(13,8,4,'2026-1',3.1,'Aprobado'),
(13,20,14,'2026-1',4.6,'Aprobado'),

(8,10,6,'2026-1',4.8,'Aprobado'),
(8,11,16,'2026-1',4.2,'Aprobado'),
(14,10,6,'2026-1',3.6,'Aprobado'),
(14,11,16,'2026-1',3.9,'Aprobado'),

(9,12,7,'2026-1',3.7,'Aprobado'),
(9,13,17,'2026-1',4.0,'Aprobado'),
(15,12,7,'2026-1',2.5,'Reprobado'),
(15,13,17,'2026-1',3.2,'Aprobado'),

(10,14,9,'2026-1',4.7,'Aprobado'),
(10,15,19,'2026-1',4.1,'Aprobado'),
(16,14,9,'2026-1',3.4,'Aprobado'),
(16,15,19,'2026-1',3.9,'Aprobado'),

(11,16,10,'2026-1',4.3,'Aprobado'),
(11,17,20,'2026-1',3.8,'Aprobado'),
(17,16,10,'2026-1',4.6,'Aprobado'),
(17,17,20,'2026-1',3.5,'Aprobado'),

(18,18,3,'2026-1',4.0,'Aprobado'),
(18,19,13,'2026-1',3.3,'Aprobado'),
(19,18,3,'2026-1',2.9,'Reprobado'),
(19,19,13,'2026-1',3.7,'Aprobado'),

(20,1,1,'2026-1',3.9,'Aprobado'),
(20,3,2,'2026-1',4.1,'Aprobado'),
(6,8,4,'2026-1',3.8,'Aprobado'),
(5,6,3,'2026-1',4.2,'Aprobado'),
(8,12,7,'2026-1',3.6,'Aprobado'),
(9,14,9,'2026-1',4.4,'Aprobado'),
(2,18,3,'2026-1',3.5,'Aprobado'),
(4,16,10,'2026-1',3.7,'Aprobado'),
(7,10,6,'2026-1',4.2,'Aprobado'),
(3,6,3,'2026-1',3.3,'Aprobado');
