/* Das ist ein Kommentar Block */
    -- # Zeilenweise auskommentieren mit "#"
    -- Zeilenweise auskommentieren mit "--"

/* Datenbanken auf Server anzeigen */
    SHOW DATABASES;

-- Datenbanken löschen wenn vorhanden
    DROP DATABASE IF EXISTS foo;

/* Datenbanken erzeugen wenn noch nicht vorhanden */
    CREATE DATABASE IF NOT EXISTS foo;

/* Datenbanken erzeugen wenn vorhanden */
   -- USE foo;

/* Tabelle erzeugen wenn noch nicht vorhanden 
    CREATE TABLE IF NOT EXISTS boo(
        name VARCHAR(20),  -- die Angaben in der Klammer sind die max Stellen, ohne wäre es automatisch maximum
        age INT(3)  -- auch hier, da wir beim Alter nicht mehr als 3 Stellen bruachen, da niemand 1000 Jahre wird, kann auf 3 Stellen begrenzt werden
    );*/

/* Tabelle komplett auslesen */
    -- SELECT * FROM boo;

/* Ausgabe der Struktur der Tabelle */
    -- DESCRIBE boo;


