-- Функция CountArtworksInMuseums считает общее количество произведений искусства в каждом музее.
CREATE OR REPLACE FUNCTION CountArtworksInMuseums()
RETURNS TABLE(Museum_Name VARCHAR, Total_Artworks INT)
AS $$
BEGIN
    RETURN QUERY (
        SELECT m.name AS Museum_Name, COUNT(*) AS Total_Artworks
        FROM Museums m
        JOIN Artworks a ON m.museum_id = a.museum_id
        GROUP BY m.name
    );
END;
$$ LANGUAGE plpgsql;

-- Процедура GetArtworksByArtist возвращает произведения искусства, созданные определенным художником.
CREATE OR REPLACE PROCEDURE GetArtworksByArtist(artist_name VARCHAR(255))
LANGUAGE plpgsql
AS $$
BEGIN
    SELECT a.name AS Artwork_Name, a.year AS Year_Created, g.name AS Genre, m.name AS Material
    FROM Artworks a
    JOIN Artists ar ON a.artist_id = ar.artist_id
    JOIN Genres g ON a.genre = g.name
    JOIN Materials m ON a.material_id = m.material_id
    WHERE ar.name = artist_name;
END;
$$;

-- Процедура GetArtworksInMuseum возвращает произведения искусства, представленные в определенном музее.
CREATE OR REPLACE PROCEDURE GetArtworksInMuseum(museum_id INT)
LANGUAGE SQL
AS $$
    SELECT a.name AS Artwork_Name, a.year AS Year_Created, ar.name AS Artist_Name, g.name AS Genre
    FROM Artworks a
    JOIN Artists ar ON a.artist_id = ar.artist_id
    JOIN Genres g ON a.genre = g.name
    JOIN Museums m ON a.museum_id = m.museum_id
    WHERE a.museum_id = museum_id;
$$;
