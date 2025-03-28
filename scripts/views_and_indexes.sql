-- Представление для получения информации об искусстве с указанием художника, жанра и материала:
CREATE VIEW Artwork_Details AS
SELECT a.artwork_id, a.name AS artwork_name, a.year, ar.name AS artist_name, g.name AS genre, m.name AS material
FROM Artworks a
JOIN Artists ar ON a.artist_id = ar.artist_id
JOIN Genres g ON a.genre = g.name
JOIN Materials m ON a.material_id = m.material_id;

-- Представление для архивированных произведений искусства с указанием статуса в музее:
CREATE VIEW Archived_Artworks AS
SELECT version_id, name AS artwork_name, year, artist_id, genre, material_id
FROM Artworks_Version
WHERE museum_status = FALSE;

--Представление для активных произведений искусства с указанием статуса в музее:
CREATE VIEW Active_Artworks AS
SELECT version_id, name AS artwork_name, year, artist_id, genre, material_id
FROM Artworks_Version
WHERE museum_status = TRUE;

-- Представление для отображения информации о жанрах искусства с указанием количества произведений искусства в каждом жанре:
CREATE VIEW Genre_Artworks_Count AS
SELECT G.name AS genre, COUNT(A.artwork_id) AS artwork_count
FROM Genres G
LEFT JOIN Artworks A ON G.name = A.genre
GROUP BY G.name;

-- Представление для отображения информации о музеях с количеством произведений искусства в каждом:
CREATE VIEW Museum_Artworks_Count AS
SELECT M.museum_id, M.name AS museum_name, M.city, COUNT(A.artwork_id) AS artwork_count
FROM Museums M
LEFT JOIN Artworks A ON M.museum_id = A.museum_id
GROUP BY M.museum_id;


-- Индексирование столбца name может быть полезно при поиске художников по имени.
CREATE INDEX idx_artists_name ON Artists (name);

-- Индексирование столбцов artist_id, genre, material_id и museum_id улучшит производительность запросов, связанных с фильтрацией или сортировкой по этим полям.
CREATE INDEX idx_artworks_artist_id ON Artworks (artist_id);
CREATE INDEX idx_artworks_genre ON Artworks (genre);
CREATE INDEX idx_artworks_material_id ON Artworks (material_id);
CREATE INDEX idx_artworks_museum_id ON Artworks (museum_id);

CREATE INDEX idx_artworks_version_artist_id ON Artworks_Version (artist_id);
CREATE INDEX idx_artworks_version_genre ON Artworks_Version (genre);
CREATE INDEX idx_artworks_version_material_id ON Artworks_Version (material_id);
CREATE INDEX idx_artworks_version_museum_status ON Artworks_Version (museum_status);

-- Индексирование столбца city может ускорить запросы, которые фильтруют музеи по городу.
CREATE INDEX idx_museums_city ON Museums (city);

-- Индексирование столбцов start_date, end_date и museum_id может ускорить запросы, которые фильтруют выставки по датам начала и окончания, а также по идентификатору музея.
CREATE INDEX idx_exhibitions_start_date ON Exhibitions (start_date);
CREATE INDEX idx_exhibitions_end_date ON Exhibitions (end_date);
CREATE INDEX idx_exhibitions_museum_id ON Exhibitions (museum_id);
