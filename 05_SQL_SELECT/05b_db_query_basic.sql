/* QUERIES Basic */

/*
    Felder abfragen
    Felder kombinieren
    Ausgabe beschränken
*/

/* show Table */
    # SELECT * FROM sandro.stocks LIMIT 5;

    -- Begrenzung: LIMIT
    -- Abfrage eines Feldes oder einer Feld-Kombi m. Umbenennung (Alias)
    -- Kombinationen aus mehreren Feldern in neues Feld 
    -- hier mit Verknüpfung CONCAT() // String-Fkt.

    SELECT
        ticker AS "SYM",
        price AS "Kurs in $",
        c_name AS "Unternehmen",
        # industry AS "Branche"
        CONCAT(sector, " | ", industry) AS "Operations"
    FROM sandro.stocks
    # LIMIT 10 -- X Zeilen ab 0
    LIMIT 200, 10 
    ;

    /*
        LIMIT:

        Er wird wie folgt bezeichnet: LIMIT [[o,]c]]
            c steht für Count, wieviele Datensätze werden angezeigt
            o steht für Offset, ab welchem Datensatz wird begonnen, wenn nicht gesetzt, dann default

        Der Standardwert von o ist 1

        Beispiel: 
            LIMIT 5 
                5 = Es werden 5 Datensätze ab dem Ersten angezeigt
                also Datensatz 1 bis 5

            LIMIT 10,8 
                10 = Ab dem 10. Datensatz wird begonnen
                8 = 8 Datensätze werden ab dem 10. angezeigt
                aber Datensatz 10 bis 18
    */