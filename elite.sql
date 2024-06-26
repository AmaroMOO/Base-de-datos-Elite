DROP database elite;
create database elite;
use elite;
CREATE TABLE Temporadas (
    temporada_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    fecha_estreno DATE,
    numero_episodios INT,
    descripcion TEXT
);
insert into Temporadas (temporada_id, nombre, fecha_estreno, numero_episodios, descripcion) values
("1", "Temporada 1", "2018-10-05", "8", "Cuando tres jóvenes de clase obrera se matriculan en un exclusivo instituto privado, las diferencias entre ellos y los alumnos ricos darán lugar a un asesinato"),
("2", "Temporada 2", "2019-09-06", "8", " trata sobre la desaparición de un alumno del colegio y la tercera se centra en un nuevo asesinato entre los estudiantes"),
("3", "Temporada 3", "2020-03-13", "8", "En la tercera temporada de Elite, las tensiones aumentan en Las Encinas con la llegada de nuevos estudiantes, mientras que los secretos del pasado amenazan con salir a la luz y desencadenar consecuencias devastadoras para todos los involucrados"),
("4", "Temporada 4", "2021-06-18", "8","'La cuarta temporada de Elite presenta un nuevo misterio en Las Encinas con la llegada de un nuevo director y un grupo de estudiantes que desafían el orden establecido. Con más secretos, traiciones y tensiones que nunca, los estudiantes se enfrentarán a dilemas morales y personales que pondrán a prueba sus lealtades y cambiarán el curso de sus vidas para siempre"),
("5", "Temporada 5", "2022-04-08", "8","La quinta temporada de Elite sigue a los estudiantes de Las Encinas mientras enfrentan nuevos desafíos y secretos que amenazan con desestabilizar sus vidas. Con la llegada de nuevos personajes y la revelación de oscuros secretos, los estudiantes se verán obligados a confrontar sus propios demonios mientras luchan por mantenerse a flote en un entorno lleno de intrigas, romance y traición"),
("6", "Temporada 6", "2022-11-18", "8","La sexta temporada de Elite sigue a los estudiantes de Las Encinas mientras se enfrentan a nuevos desafíos y dilemas en un ambiente cada vez más tenso. Con la llegada de nuevos personajes y la revelación de oscuros secretos del pasado, los estudiantes se ven envueltos en una red de mentiras, traiciones y conspiraciones que pondrán a prueba su lealtad y los llevarán al límite"),
("7", "Temporada 7", "2023-10-20", "8","En la séptima temporada de Elite, los estudiantes de Las Encinas enfrentan un nuevo conjunto de desafíos mientras luchan por mantener el equilibrio entre sus estudios, sus relaciones personales y los secretos que los rodean. Con la llegada de nuevos personajes y la continuación de las tensiones existentes, esta temporada promete intrigas, romance y giros inesperados que mantendrán a los espectadores al borde de sus asientos");

CREATE TABLE Personajes (
    personaje_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    temporada_aparicion INT,
    FOREIGN KEY (temporada_aparicion) REFERENCES Temporadas(temporada_id)
);

insert into Personajes (personaje_id, nombre, temporada_aparicion) values
(1, "Marina Nunier", 1),
(2, "Samuel Garcia", 1),
(3, "Guzman Nunier", 1),
(4, "Christian Varela", 1),
(5, "Nano Gracia", 1),
(6, "Polo Benavent", 1),
(7, "Ander Muñoz", 1),
(8, "Nadia Shanaa", 1),
(9, "Carla Roson", 1),
(10, "Omar Shanaa ", 1),
(11, "Lucrecia Montesinos", 1),
(12, "Valerio Montesinos", 2),
(13, "Rebeka Parrilla", 2),
(14, "Cayetana Grajera", 2),
(15, "Malick Diallo", 3),
(16, "Yeray Engonga", 3),
(17, "Ariadna Blanco", 4),
(18, "Mencia Blanco", 4),
(19, "Patrick Blanco", 4),
(20, "Phillipe Von Triesenberg", 4),
(21, "Armando de la Ossa", 4),
(22, "Benjamin Blanco", 4),
(23, "Isidora Artiñan", 5),
(24, "Ivan Cruz", 5),
(25, "Cruz Carvalho", 5),
(26, "Bilal", 5),
(27, "Sara", 5),
(28, "Raul", 6),
(29, "Didac Ramos", 6),
(30, "Nicolas Fernandez", 6),
(31, "Hugo Muller", 6),
(32, "Javier", 6),
(33, "Alex Diaz", 6),
(34, "Rocio Owono", 6),
(35, "Sonia", 6),
(36, "Joel", 7),
(37, "Chloe Silva", 7),
(38, "Eric de Velasco", 7),
(39, "Luis Marin", 7),
(40, "Dalmar", 7),
(41, "Carmen Silva", 7),
(42, "Jessica", 7),
(43, "Fikile Bhele", 7),
(44, "Martin Artiñan", 7);

CREATE TABLE Actores (
    actor_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    fecha_nacimiento DATE
);

INSERT INTO Actores (actor_id, nombre, fecha_nacimiento) VALUES
('1', 'María Pedraza', '1996-01-26'),
('2', 'Itzan Escamilla', '1997-10-31'),
('3', 'Miguel Bernardeau', '1996-12-12'),
('4', 'Miguel Herrán', '1996-04-25'),
('5', 'Jaime Lorente', '1991-12-12'),
('6', 'Álvaro Rico', '1996-08-13'),
('7', 'Arón Piper', '1997-03-29'),
('8', 'Mina El Hammani', '1993-11-29'),
('9', 'Ester Expósito', '2000-01-26'),
('10', 'Omar Ayuso', '1998-03-26'),
('11', 'Danna Paola', '1995-06-23'),
('12', 'Jorge López', '1991-10-30'),
('13', 'Claudia Salas', '1996-06-23'),
('14', 'Georgina Amorós', '1997-04-30'),
('15', 'Leiti Sène', '1999-09-20'),
('16', 'Sergio Momo', '1995-10-11'),
('17', 'Carla Díaz', '1999-01-30'),
('18', 'Martina Cariddi', '2000-08-01'),
('19', 'Manu Ríos', '1998-12-17'),
('20', 'Pol Granch', '1998-02-14'),
('21', 'Andrés Velencoso', '1978-03-11'),
('22', 'Diego Martin', '1989-01-21'),
('23', 'Valentina Zenere', '1997-01-15'),
('24', 'André Lamoglia', '1998-05-04'),
('25', 'Carloto Cotta', '1998-12-10'),
('26', 'Adam Nourou', '1995-07-23'),
('27', 'Carmen Arrufat', '1997-09-10'),
('28', 'Alex Pastrana', '1999-11-20'),
('29', 'Álvaro de Juana', '1996-03-05'),
('30', 'Ander Puig', '1999-07-15'),
('31', 'Guillermo Campra', '1998-07-18'),
('32', 'Ignacio Carrascal', '1997-06-08'),
('33', 'Marc Bonnin', '1982-04-07'),
('34', 'Ana Bokesa', '1995-10-03'),
('35', 'Nadia Al Saidi', '1996-12-27'),
('36', 'Fernando Lindez', '1996-08-22'),
('37', 'Mirela Balic', '1994-07-31'),
('38', 'Gleb Abrosimov', '1998-11-07'),
('39', 'Alejandro Albarracín', '1997-02-28'),
('40', 'Iván Mendes', '1997-09-19'),
('41', 'Maribel Verdú', '1970-10-02'),
('42', 'Anitta Anitta', '1993-03-30'),
('43', 'Khosi Ngema', '1999-11-12'),
('44', 'Leonardo Sbaraglia', '1970-06-30'),
('45', 'Ane Rot', '1997-07-14'),
('46', 'Nuno Gallego', '1979-12-04');


CREATE TABLE Premios_Nominaciones (
  ID INT PRIMARY KEY AUTO_INCREMENT,
  Año INT,
  FestivalPremios VARCHAR(255),
  Categoria VARCHAR(255),
  Nominado VARCHAR(255),
  Resultado VARCHAR(50)
);

insert into Premios_Nominaciones (Año,FestivalPremios,Categoria,Nominado,Resultado) values
("2018", 'Festival CiBRA', 'Premio Orden de Toledo', 'Elenco de Élite','Ganador'),
("2019", 'Premios Feroz', 'Mejor serie dramática', 'Serie Élite','Nominada'),
("2019", 'Premios Fotogramas de Plata', 'directores_guionistasdirectores_guionistasdirectoresguionistasdirectores_guionistasdirectores_guionistasdirectoresguionistasMejor serie española según los lectores', 'Serie Élite','Nominada'),
("2019", 'GLAAD Media Awards', 'Mejor guion de serie de televisión española', 'Serie Élite','Nominada'),
("2020", 'Premios Fotogramas de Plata', 'Mejor serie española según los lectores', 'Serie Élite','Ganador'),
("2020", 'GLAAD Media Awards', 'Mejor guion de serie de televisión española', 'Serie Élite','Nominada'),
("2021", 'Premios Fotogramas de Plata', 'Mejor actor de televisión', 'Arón Piper',"Nominado");

CREATE TABLE Directores_Guionistas (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100),
    Rol VARCHAR(50),
    Temporadas_trabajadas VARCHAR(100)
);

insert into Directores_Guionistas (ID, Nombre,Rol,Temporadas_trabajadas) values
(1,'Ramón Salazar', 'Director', 'Temporadas 1-4'),
(2,'Dani de la Orden', 'Director', 'Temporadas 1-3'),
(3,'Carlos Montero', 'Guionista', 'Temporadas 1-4'),
(4,'Darío Madrona', 'Guionista', 'Temporadas 1-4');



CREATE TABLE IF NOT EXISTS bandas_sonoras (
    id INT PRIMARY KEY,
    temporada varchar(100),
    cancion VARCHAR(100),
    artista VARCHAR(100),
    fecha_creacion DATE,
    fecha_actualizacion DATE
);

INSERT INTO bandas_sonoras (id, temporada, cancion, artista, fecha_creacion, fecha_actualizacion) VALUES
(1, "456", 'Love My Way', 'The Psychedelic Furs', '2018-01-01', '2024-05-03'),
(2, "123456", 'Vivir así es morir de amor', 'Camilo Sesto', '2018-01-01', '2024-05-03'),
(3, "8", 'Ring My Bell', 'Anita Ward', '2018-01-01', '2024-05-03'),
(4, "1457", 'Champagne Supernova', 'Oasis', '2019-01-01', '2024-05-03'),
(5, "246", 'Im So Excited', 'The Pointer Sisters', '2019-01-01', '2024-05-03');


CREATE TABLE IF NOT EXISTS episodios_importantes (
	episodio INT PRIMARY KEY,
    temporada varchar(100),
    evento_iconico varchar(100),
    personajes_implicados varchar(100)
);

INSERT INTO episodios_importantes (episodio, temporada, evento_iconico, personajes_implicados) VALUES
(1, 'Temporada 1', 'Descubrimiento del asesinato', 'Marina, Samuel, Guzmán'),
(8, 'Temporada 1', 'Revelación del asesino', 'Nano, Marina, Polo'),
(1, 'Temporada 2', 'Desaparición de Samuel', 'Samuel, Guzmán, Carla'),
(8, 'Temporada 2', 'Confesión de Carla', 'Carla, Samuel, Guzmán'),
(1, 'Temporada 3', 'Revelación del video', 'Lu, Valerio, Polo'),
(8, 'Temporada 3', 'Muerte de Polo', 'Polo, Lu, Carla'),
(1, 'Temporada 4', 'Introducción de nuevos personajes', 'Ari, Patrick, Mencía'),
(8, 'Temporada 4', 'Incendio en la fiesta', 'Samuel, Guzmán, Ari'),
(1, 'Temporada 5', 'Consecuencias del incendio', 'Samuel, Rebeka, Ari'),
(8, 'Temporada 5', 'Muerte de Armando', 'Guzmán, Ari, Samuel');

CREATE TABLE IF NOT EXISTS ubicaciones (
	lugar INT PRIMARY KEY,
    ubicaciones varchar(100),
    temporada varchar(100), 
    episodio varchar(100)
);

INSERT INTO ubicaciones (lugar, ubicaciones, temporada, episodio) VALUES
(1, 'Colegio Las Encinas', 'Temporada 1', 'Episodio 1'),
(2, 'Casa de Marina y Guzmán', 'Temporada 1', 'Episodio 1'),
(3, 'Casa de Samuel', 'Temporada 1', 'Episodio 1'),
(4, 'Discoteca', 'Temporada 1', 'Episodio 3'),
(5, 'Casa de Carla', 'Temporada 1', 'Episodio 5'),
(6, 'Casa de Polo', 'Temporada 1', 'Episodio 7'),
(7, 'Club de golf', 'Temporada 2', 'Episodio 2'),
(8, 'Casa de Nano', 'Temporada 2', 'Episodio 4'),
(9, 'Casa de Lu', 'Temporada 2', 'Episodio 6'),
(10, 'Escuela de padres', 'Temporada 3', 'Episodio 1'),
(11, 'Centro Comercial', 'Temporada 3', 'Episodio 3'),
(12, 'Apartamento de Cayetana', 'Temporada 3', 'Episodio 5'),
(13, 'Casa de Ari, Patrick y Mencía', 'Temporada 4', 'Episodio 2'),
(14, 'Fiesta en el lago', 'Temporada 4', 'Episodio 4'),
(15, 'Almacén abandonado', 'Temporada 5', 'Episodio 3'),
(16, 'Sala de estudios', 'Temporada 1', 'Episodio 2'),
(17, 'Casa de Christian', 'Temporada 1', 'Episodio 4'),
(18, 'Bar de copas', 'Temporada 1', 'Episodio 6'),
(19, 'Casa de Nadia', 'Temporada 1', 'Episodio 8'),
(20, 'Escuela de baile', 'Temporada 2', 'Episodio 1'),
(21, 'Hotel de lujo', 'Temporada 2', 'Episodio 3'),
(22, 'Estación de policía', 'Temporada 2', 'Episodio 5'),
(23, 'Casa de Rebeca', 'Temporada 2', 'Episodio 7'),
(24, 'Parque público', 'Temporada 3', 'Episodio 2'),
(25, 'Estudio de fotografía', 'Temporada 3', 'Episodio 4'),
(26, 'Cafetería universitaria', 'Temporada 3', 'Episodio 6'),
(27, 'Casa de Valerio', 'Temporada 3', 'Episodio 8'),
(28, 'Gimnasio', 'Temporada 4', 'Episodio 1'),
(29, 'Apartamento de Omar', 'Temporada 4', 'Episodio 3'),
(30, 'Piscina pública', 'Temporada 4', 'Episodio 5');


SELECT nombre, fecha_nacimiento
FROM Actores;

SELECT Nombre, Rol, Temporadas_trabajadas
FROM Directores_Guionistas;

SELECT nombre, fecha_estreno, numero_episodios
FROM Temporadas;

