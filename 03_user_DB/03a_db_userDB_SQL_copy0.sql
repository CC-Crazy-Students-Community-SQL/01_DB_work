/* USER DB Vers. 1 */

/* DB */
DROP DATABASE IF EXISTS test03;
CREATE DATABASE IF NOT EXISTS test03;

/* show DBs */
SHOW DATABASES;

/* TABLE */
DROP TABLE IF EXISTS test03.users;
CREATE TABLE IF NOT EXISTS test03.users(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    userName VARCHAR(30) NOT NULL UNIQUE,
    lastName VARCHAR(30) NOT NULL,
    firstName VARCHAR(30) NOT NULL,
    userPass VARCHAR(40) NOT NULL
);

/* Struktur */
DESCRIBE test03.users;

/* Daten */
INSERT INTO test03.users(firstName, lastName, userName, userPass) VALUES 
    ("Josi", "Moe", "josi", "1234"),
    ("Josh", "Foe", "josh", "#7xR3"),
    ("John", "Doe", "john", "qwert")
;

/* show Table */
SELECT * FROM test03.users;