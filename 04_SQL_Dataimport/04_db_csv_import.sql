/* USER DB Vers. 2 */

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
        name VARCHAR(30) NOT NULL UNIQUE DEFAULT "Cat",
        age INT(3) NOT NULL DEFAULT 0
    );

/* Struktur */
    DESCRIBE sandro.cats;

/* Daten */
    INSERT INTO sandro.cats(firstName, lastName, userName, userPass) VALUES 
        ("Beaty", "black", 5),
        ("Romeo", "grey", 3),
        ("Stella", "red", 7),
        ("Gus", "striped", 4)
    ;

/* Struktur */
    DESCRIBE sandro.cats;

/* show Table */
    SELECT * FROM sandro.cats;