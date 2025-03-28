CREATE TABLE IF NOT EXISTS Genres (
    name VARCHAR(255) PRIMARY KEY,
    country VARCHAR(255),
    date DATE
);

CREATE TABLE IF NOT EXISTS Artists (
    artist_id INT PRIMARY KEY,
    name VARCHAR(255),
    genre VARCHAR(255),
    FOREIGN KEY (genre) REFERENCES Genres(name)
);

CREATE TABLE IF NOT EXISTS Materials(
    material_id INT PRIMARY KEY,
    name VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS Artworks (
    artwork_id INT PRIMARY KEY,
    name VARCHAR(255),
    year INT,
    artist_id INT,
    genre VARCHAR(255),
    material_id INT,
    museum_id INT,
    FOREIGN KEY (artist_id) REFERENCES Artists(artist_id),
    FOREIGN KEY (genre) REFERENCES Genres(name),
    FOREIGN KEY (material_id) REFERENCES Materials(material_id),
    FOREIGN KEY (museum_id) REFERENCES Museums(museum_id)
);

CREATE TABLE IF NOT EXISTS Museums (
    museum_id INT PRIMARY KEY,
    name VARCHAR(255),
    city VARCHAR(255)
);


CREATE TABLE IF NOT EXISTS Exhibitions (
    exhibition_id INT PRIMARY KEY,
    name VARCHAR(255),
    start_date DATE,
    end_date DATE,
    museum_id INT,
    FOREIGN KEY (museum_id) REFERENCES Museums(museum_id)
);



CREATE TABLE IF NOT EXISTS Artworks_Version (
    version_id INT,
    name VARCHAR(255),
    year INT,
    artist_id INT,
    genre VARCHAR(255),
    material_id INT,
    museum_status BOOLEAN
);

