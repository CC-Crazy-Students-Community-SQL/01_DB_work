/* Das ist ein Kommentar Block */
    -- # Zeilenweise auskommentieren mit "#"
    -- Zeilenweise auskommentieren mit "--"

/* Datenbanken auf Server anzeigen */
    SHOW DATABASES;

-- Datenbanken löschen wenn vorhanden
    DROP DATABASE IF EXISTS sandro;

/* Datenbanken erzeugen wenn noch nicht vorhanden */
    CREATE DATABASE IF NOT EXISTS sandro;

/* verwende angelegte Datenbanken */
   USE sandro;

/* Tabelle löschen wenn vorhanden */
    DROP TABLE IF EXISTS test;

/* Tabelle erzeugen wenn noch nicht vorhanden */
    CREATE TABLE IF NOT EXISTS test(
        id INT,
        -- die Angaben in der Klammer sind die max Stellen, ohne wäre es automatisch maximum
        name VARCHAR(20),
        -- auch hier, da wir beim Alter nicht mehr als 3 Stellen bruachen, da niemand 1000 Jahre wird, kann auf 3 Stellen begrenzt werden
        age INT(3)
    );

/* Ausgabe der Struktur der Tabelle */
    DESCRIBE test;
