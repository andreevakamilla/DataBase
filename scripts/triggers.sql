-- Функция update_artwork_artist обновляет идентификатор художника в произведениях искусства после обновления информации о художнике.
CREATE OR REPLACE FUNCTION update_artwork_artist()
RETURNS TRIGGER AS
$$
BEGIN
    UPDATE Artworks
    SET artist_id = NEW.artist_id
    WHERE artist_id = OLD.artist_id;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Триггер UpdateArtworkArtist запускается после обновления информации о художнике и вызывает функцию update_artwork_artist.
CREATE TRIGGER UpdateArtworkArtist
AFTER UPDATE ON Artists
FOR EACH ROW
EXECUTE FUNCTION update_artwork_artist();

-- Функция track_artwork_changes отслеживает изменения в произведениях искусства, регистрируя их в таблице Artworks_Version.
CREATE OR REPLACE FUNCTION track_artwork_changes()
RETURNS TRIGGER AS $$
BEGIN
    INSERT INTO Artworks_Version (version_id, name, year, artist_id, genre, material_id, museum_status)
    VALUES (OLD.artwork_id, OLD.name, OLD.year, OLD.artist_id, OLD.genre, OLD.material_id, FALSE);
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Триггер artwork_changes_trigger запускается после обновления информации о произведении искусства и вызывает функцию track_artwork_changes.
CREATE TRIGGER artwork_changes_trigger
AFTER UPDATE ON Artworks
FOR EACH ROW
EXECUTE FUNCTION track_artwork_changes();

-- Функция check_exhibition_date_function проверяет корректность даты начала и окончания выставки.
CREATE OR REPLACE FUNCTION check_exhibition_date_function()
RETURNS TRIGGER AS $$
BEGIN
    IF NEW.start_date > NEW.end_date THEN
        RAISE EXCEPTION 'Дата начала выставки не может быть позже даты окончания';
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Триггер check_exhibition_date запускается перед вставкой новой выставки и проверяет корректность даты.
CREATE TRIGGER check_exhibition_date
BEFORE INSERT ON Exhibitions
FOR EACH ROW
EXECUTE FUNCTION check_exhibition_date_function();
