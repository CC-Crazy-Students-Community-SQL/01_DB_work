/* USER DB Vers. 2 */

/* 	 
	bessere Passwörter durch Verschlüsselung  und nachträglich Felder hinzugefügt
*/

/* DB */
    DROP DATABASE IF EXISTS sandro;
    CREATE DATABASE IF NOT EXISTS sandro;

/* show DBs */
    SHOW DATABASES;

/* TABLE */
    DROP TABLE IF EXISTS sandro.users;
    CREATE TABLE IF NOT EXISTS sandro.users(
        id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
        userName VARCHAR(30) NOT NULL UNIQUE,
        lastName VARCHAR(30) NOT NULL,
        firstName VARCHAR(30) NOT NULL,
        userPass VARCHAR(40) NOT NULL
    );

/* Struktur */
    DESCRIBE sandro.users;

/* Daten */
    INSERT INTO sandro.users(firstName, lastName, userName, userPass) VALUES 
        ("Josi", "Moe", "josi", SHA1(MD5("1234"))),
        ("Josh", "Foe", "josh", MD5(SHA1("#7xR3"))),
        ("John", "Doe", "john", SHA1("qwert"))    
    ;

/* change Table / Structur */
    ALTER TABLE sandro.users ADD userPLZ INT(5) NOT NULL DEFAULT 0;

/* Struktur */
    DESCRIBE sandro.users;

/* update Values */
    UPDATE sandro.users SET userPLZ=77880 WHERE username="josi";
    UPDATE sandro.users SET userPLZ=77881 WHERE id=3;
    UPDATE sandro.users SET userPLZ=77882 WHERE firstName="Josh";

/* show Table */
    SELECT * FROM sandro.users;