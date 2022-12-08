/* CRUD Create | Read | Update | Delete */  

/* cache leeren */
    DBCC FREEPROCCACHE;
    ALTER DATABASE SCOPED CONFIGURATION CLEAR PROCEDURE_CACHE;

/* show Table */
    SELECT * FROM sandro.cats;

/* UPDATE --> Änderung(en) in bestehender Tab. */
    UPDATE sandro.cats SET name = "Joe" WHERE id = 4;
    UPDATE sandro.cats SET color = "green" WHERE id = 3;

/* READ - SELECT : NEUE Ergebnistabelle wird erstellt */
    SELECT * FROM sandro.cats;                                 -- show Table
    SELECT * FROM sandro.cats;                                 -- gesamte Tabelle
    SELECT name FROM sandro.cats;                              -- einzelnes Feld
    SELECT age, name FROM sandro.cats;                         -- Felder kombiniert
    SELECT name AS "Katzen", age AS "Alter" FROM sandro.cats;  -- Felder / neue Namen

/* Filtern durch WHERE */
    SELECT name AS "Katzen", age AS "Alter" FROM sandro.cats
        #WHERE id = 1                            -- nimm wo id 1 ist, also einzelnes Feld
        WHERE color = "green"                    -- nimm wo color = green
        #WHERE age >= 2                          -- nimm wo alter größer als 2
    ;

/* Delete - DS löschen | Vorsicht!! */
    #DELETE FROM sandro.cats;                    -- Alle Daten sind weg!!
    #DELETE FROM sandro.cats WHERE id = 2;       -- Filter wo id = 2

/* show Table */
    SELECT * FROM sandro.cats;