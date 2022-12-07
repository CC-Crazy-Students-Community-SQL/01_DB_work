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
        userName VARCHAR(30) NOT NULL UNIQUE,
        lastName VARCHAR(30) NOT NULL,
        firstName VARCHAR(30) NOT NULL,
        userPass VARCHAR(40) NOT NULL
    );

/* Struktur */
    DESCRIBE sandro.cats;

/* Daten */
    INSERT INTO sandro.cats(firstName, lastName, userName, userPass) VALUES 
        ("Josi", "Moe", "josi", SHA1(MD5("1234"))),
        ("Josh", "Foe", "josh", MD5(SHA1("#7xR3"))),
        ("John", "Doe", "john", SHA1("qwert"))    
    ;

/* change Table / Structur */
    ALTER TABLE sandro.cats ADD userPLZ INT(5) NOT NULL DEFAULT 0;

/* Struktur */
    DESCRIBE sandro.cats;

/* update Values */
    UPDATE sandro.cats SET userPLZ=77880 WHERE username="josi";
    UPDATE sandro.cats SET userPLZ=77881 WHERE id=3;
    UPDATE sandro.cats SET userPLZ=77882 WHERE firstName="Josh";

/* show Table */
    SELECT * FROM sandro.cats;