/* ------  Strukturen NOT NULL / DEFAULT ----- */

/* 	 
	NULL wird nicht mehr zugelassen
    DEFAULT-Werte eintragen
*/

/* Datenbanken auf Server anzeigen */
    SHOW DATABASES;

-- Datenbanken löschen wenn vorhanden
    DROP DATABASE IF EXISTS sandro;

/* Datenbanken erzeugen wenn noch nicht vorhanden */
    CREATE DATABASE IF NOT EXISTS sandro;

/* Tabelle löschen wenn vorhanden */
    -- anstatt use zu nutzen kann man hier auch nested objects technisch die DB angeben
    DROP TABLE IF EXISTS sandro.test;

/* Tabelle erzeugen wenn noch nicht vorhanden */
    CREATE TABLE IF NOT EXISTS sandro.test(
        id INT,
        name VARCHAR(20) NOT NULL DEFAULT "CAT",
        age INT(3)
    );

/* Ausgabe der Struktur der Tabelle */
    DESCRIBE sandro.test;

/* Ausgabe aller Tabellen */
    SHOW TABLES;

/* Daten Tabelle eintragen */
    INSERT INTO sandro.test(name, age) VALUES ("Romeo", 5);
    INSERT INTO sandro.test(age, name) VALUES (3, "Beauty");
    INSERT INTO sandro.test VALUES ();

/* Inhalte der Tabelle anzeigen */
    SELECT * FROM sandro.test;

    -- Doppelte Datensätze werden zugelassen !
    INSERT INTO sandro.test(age, name) VALUES (5, "Romeo");
    INSERT INTO sandro.test(age, name) VALUES (3, "Beauty");

/* Inhalte der Tabelle anzeigen */
    SELECT * FROM sandro.test;