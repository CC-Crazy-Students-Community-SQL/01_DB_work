/* Import CSV ohne Index */

/* 	 
	import von csv Dateien
*/

/* DB */
    DROP DATABASE IF EXISTS sandro;
    CREATE DATABASE IF NOT EXISTS sandro;

/* show DBs */
    SHOW DATABASES;

/* TABLE */
    DROP TABLE IF EXISTS sandro.cats;
    CREATE TABLE IF NOT EXISTS sandro.cats(
        id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
        name VARCHAR(30) NOT NULL,
        color VARCHAR(30) NOT NULL,
        age INT(3) NOT NULL DEFAULT 0
    );

/* Struktur */
    DESCRIBE sandro.cats;

/* Struktur */
    DESCRIBE sandro.cats;

/* Import - CSV-Datei parsen */
    LOAD DATA LOCAL INFILE "04_SQL_Dataimport/data/cats_export_no_id.csv" INTO TABLE sandro.cats FIELDS TERMINATED BY "," LINES TERMINATED BY "\n" IGNORE 1 ROWS (name, color, age);
    -- LOAD DATA LOCAL INFILE "xx"            ladet die lokale Datei
    -- INTO TABLE sandro.cats                 ladet die Datei in diese Tabelle
    -- FIELDS TERMINATED BY ";"               das Trennzeichen der einzelnen Felder, in diesser Datei ";"
    -- LINES TERMINATED BY "\n"               Zeilenumbruch, also nächster Eintrag nach Zeichen (\n = newLine)
    -- IGNORE 1 ROWS                          ignoriert angegegebene Anzahl an Zeilen, da hier die erste Zeile ja nur die Feldnamen stehen
    -- (naem, color, age)                     weisst die Felder zu, da ja der erste Eintrag nicht mehr die Id sondern der Name ist, somit wäre der Name sonst in ID

/* show Table */
    SELECT * FROM sandro.cats;