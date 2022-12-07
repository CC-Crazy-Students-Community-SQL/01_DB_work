/* Das ist ein Kommentar Block */
    -- # Zeilenweise auskommentieren mit "#"
    -- Zeilenweise auskommentieren mit "--"

/* Datenbanken auf Server anzeigen */
    SHOW DATABASES;

-- Datenbanken löschen wenn vorhanden
    DROP DATABASE IF EXISTS test02a;

/* Datenbanken erzeugen wenn noch nicht vorhanden */
    CREATE DATABASE IF NOT EXISTS test02a;

/* Datenbanken erzeugen wenn vorhanden */
   USE test02a;

/* Tabelle erzeugen wenn noch nicht vorhanden 
    CREATE TABLE IF NOT EXISTS foo.boo(
        name VARCHAR(20),  -- die Angaben in der Klammer sind die max Stellen, ohne wäre es automatisch maximum
        age INT(3)  -- auch hier, da wir beim Alter nicht mehr als 3 Stellen bruachen, da niemand 1000 Jahre wird, kann auf 3 Stellen begrenzt werden
    );*/

/* Tabelle komplett auslesen */
    -- SELECT * FROM foo.boo;

/* Ausgabe der Struktur der Tabelle */
    -- DESCRIBE foo.boo;





/*
/* ------  Strukturen NOT NULL / DEFAULT ----- */

/* 	 
	NULL wird nicht mehr zugelassen
    DEFAULT-Werte eintragen
*/

/* DB boo löschen, falls vorhanden*/
DROP DATABASE IF EXISTS boo;

/* DB boo anlegen, falls noch nicht vorhanden*/
CREATE DATABASE IF NOT EXISTS boo;

/* DB auswählen */
#USE boo;  -- boo.xxx

/* Tabelle anlegen, falls noch nicht vorhanden */
CREATE TABLE IF NOT EXISTS boo.test
(
    name VARCHAR(20) NOT NULL DEFAULT "TBA",
    age INT(3) NOT NULL DEFAULT 0
);

/* Alle Tabellen in der DB anzeigen */
#SHOW TABLES;

DESCRIBE boo.test;

/* ----- Daten ------- */
INSERT INTO boo.test(name,age) VALUES ("Grizabella",29);
INSERT INTO boo.test(age,name) VALUES (35,"Alonzo");
INSERT INTO boo.test VALUES ();

/* ---- Inhalte der Tabelle anzeigen ---- */
SELECT * FROM boo.test;

-- Doppelte Datensätze werden zugelassen !
INSERT INTO boo.test(age,name) VALUES (35,"Alonzo");
INSERT INTO boo.test(age,name) VALUES (35,"Alonzo");

SELECT * FROM boo.test; */