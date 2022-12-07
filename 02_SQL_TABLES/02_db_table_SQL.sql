/* Das ist ein Kommentar Block */
    -- # Zeilenweise auskommentieren mit "#"
    -- Zeilenweise auskommentieren mit "--"

/* Datenbanken auf Server anzeigen */
    SHOW DATABASES;

-- Datenbanken löschen wenn vorhanden
<<<<<<< HEAD
    DROP DATABASE IF EXISTS test02;

/* Datenbanken erzeugen wenn noch nicht vorhanden */
    CREATE DATABASE IF NOT EXISTS test02;

/* Datenbanken erzeugen wenn vorhanden */
   USE test02;
=======
    DROP DATABASE IF EXISTS test;

/* Datenbanken erzeugen wenn noch nicht vorhanden */
    CREATE DATABASE IF NOT EXISTS test;

/* Datenbanken erzeugen wenn vorhanden */
   USE foo;
>>>>>>> 6e2ce5036db6452beb1d7a002ae9b7d95c3d1343

/* Tabelle erzeugen wenn noch nicht vorhanden 
    CREATE TABLE IF NOT EXISTS boo(
        id INT 
        name VARCHAR(20),  -- die Angaben in der Klammer sind die max Stellen, ohne wäre es automatisch maximum
        age INT(3)  -- auch hier, da wir beim Alter nicht mehr als 3 Stellen bruachen, da niemand 1000 Jahre wird, kann auf 3 Stellen begrenzt werden
    );*/

/* Tabelle komplett auslesen */
    -- SELECT * FROM boo;

/* Ausgabe der Struktur der Tabelle */
    -- DESCRIBE boo;


