-- indice

ALTER TABLE `elite` . `Temporadas` ADD INDEX(temporada_id);
ALTER TABLE `elite` .`Actores` ADD INDEX  (nombre);
ALTER TABLE `elite` .`Temporadas` ADD INDEX (nombre);


-- view

CREATE VIEW vista_actores_personajes AS
SELECT Actores.nombre AS actor_nombre, Personajes.nombre AS personaje_nombre
FROM Actores
JOIN Personajes ON Actores.actor_id = Personajes.personaje_id;


CREATE VIEW vista_detalles_temporadas AS
SELECT nombre, fecha_estreno, numero_episodios, descripcion
FROM Temporadas;


CREATE VIEW vista_premios_nominaciones AS
SELECT Año, FestivalPremios, Categoria, Nominado, Resultado
FROM Premios_Nominaciones;

CREATE VIEW vista_directores_guionistas AS
SELECT Nombre, Rol, Temporadas_trabajadas
FROM Directores_Guionistas;


CREATE VIEW vista_bandas_sonoras AS
SELECT temporada, cancion, artista
FROM bandas_sonoras;
