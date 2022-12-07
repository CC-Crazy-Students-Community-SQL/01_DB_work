/* ------  Strukturen UNIQUE ----- */

/* 	 
	Doppelte DS werden nicht mehr zugelassen
    UNIQUE
*/


/* DB boo löschen, falls vorhanden*/
DROP DATABASE IF EXISTS test02b;

/* DB boo anlegen, falls noch nicht vorhanden*/
CREATE DATABASE IF NOT EXISTS test02b;

/* DB auswählen */
#USE boo;  -- boo.xxx

/* Tabelle anlegen, falls noch nicht vorhanden */
CREATE TABLE IF NOT EXISTS test02b.test
(
    name VARCHAR(20) NOT NULL UNIQUE DEFAULT "TBA",
    age INT(3) NOT NULL DEFAULT 0
);

DESCRIBE test02b.test;

/* ----- Daten ------- */
INSERT INTO test02b.test(name,age) VALUES ("Grizabella",29);
INSERT INTO test02b.test(age,name) VALUES (35,"Alonzo");
INSERT INTO test02b.test VALUES ();

/* ---- Inhalte der Tabelle anzeigen ---- */
SELECT * FROM test02b.test;


-- Doppelte Datensätze werden NICHT mehr zugelassen !
INSERT INTO test02b.test(age,name) VALUES (35,"Alonzo");
INSERT INTO test02b.test(age,name) VALUES (35,"Alonzo");

SELECT * FROM test02b.test;