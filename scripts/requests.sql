SELECT Artists.name, COUNT(Artworks.artwork_id) AS num_artworks
FROM Artists
LEFT JOIN Artworks ON Artists.artist_id = Artworks.artist_id
GROUP BY Artists.name
ORDER BY num_artworks DESC;


SELECT name, AVG(end_date - start_date) AS avg_duration
FROM Exhibitions
GROUP BY name;


SELECT Materials.name, COUNT(Artworks.artwork_id) AS num_artworks
FROM Materials
LEFT JOIN Artworks ON Materials.material_id = Artworks.material_id
GROUP BY Materials.name
HAVING COUNT(Artworks.artwork_id) > 3;

SELECT Museums.name, COUNT(Artworks.artwork_id) AS num_artworks
FROM Museums
LEFT JOIN Artworks ON Museums.museum_id = Artworks.museum_id
GROUP BY Museums.name
ORDER BY num_artworks DESC;

SELECT Exhibitions.name, COUNT(Artworks.artwork_id) AS num_artworks
FROM Exhibitions
LEFT JOIN Artworks ON Exhibitions.exhibition_id = Artworks.museum_id
GROUP BY Exhibitions.name
HAVING COUNT(Artworks.artwork_id) > 2;

SELECT Artists.name, AVG(Artworks.year) AS avg_year, Genres.name AS genre
FROM Artists
LEFT JOIN Artworks ON Artists.artist_id = Artworks.artist_id
LEFT JOIN Genres ON Artists.genre = Genres.name
GROUP BY Artists.name, Genres.name;


SELECT *
FROM Artworks
WHERE year BETWEEN 1800 AND 1850;

SELECT Artworks.*
FROM Artworks
JOIN Exhibitions ON Artworks.artwork_id = Exhibitions.exhibition_id
JOIN Museums ON Exhibitions.museum_id = Museums.museum_id
WHERE Museums.city = 'Токио';

SELECT Artists.name, Genres.name AS genre, COUNT(Artworks.artwork_id) AS num_artworks
FROM Artists
LEFT JOIN Artworks ON Artists.artist_id = Artworks.artist_id
LEFT JOIN Genres ON Artists.genre = Genres.name
GROUP BY Artists.name, Genres.name
ORDER BY num_artworks DESC;


SELECT Exhibitions.name AS exhibition_name, Museums.name AS museum_name, COUNT(Artworks.artwork_id) AS num_artworks
FROM Exhibitions
JOIN Museums ON Exhibitions.museum_id = Museums.museum_id
LEFT JOIN Artworks ON Exhibitions.exhibition_id = Artworks.museum_id
GROUP BY Exhibitions.name, Museums.name
ORDER BY museum_name, num_artworks DESC;
