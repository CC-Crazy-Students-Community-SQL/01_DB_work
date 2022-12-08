/* QUERIES Sortierung */

/*
    Felder abfragen
    Felder sortieren
*/

/* show Table */
    # SELECT * FROM sandro.stocks LIMIT 5;

    -- Begrenzung: LIMIT
    -- Abfrage eines Feldes oder einer Feld-Kombi m. Umbenennung (Alias)
    -- Kombinationen aus mehreren Feldern in neues Feld 
    -- hier mit Verknüpfung CONCAT() // String-Fkt.

    SELECT
        ticker AS "SYM",
        c_name AS "Unternehmen",
        price AS "Kurs in $",
        no_yrs AS "Jahre ++",
        CONCAT(sector, " | ", industry) AS "Operations"
    FROM sandro.stocks
    -- Sortierung
    # ORDER BY ticker ASC                  -- SYM, alphabetisch, aufsteigend
    # ORDER BY ticker DESC                 -- SYM, alphabetisch, absteigend

    # ORDER BY price ASC                   -- Kurs, numerisch, beginnend mit der günstigsten Aktie
    ORDER BY price DESC                    -- Kurs, numerisch, beginnend mit der teuerste Aktie
    # ORDER BY no_yrs DESC                 -- numerisch, Aktien mit der längsten Div.-Historie

    # ORDER BY sector DESC,industry ASC    -- Kombination ASC / DESC alphabet.
    # ORDER BY no_yrs DESC, sector ASC     -- Kombination ASC / DESC  alphabet. / numerisch

    -- Begrenzung
    LIMIT 10
    ;

    /*
        ORDER by:

        Er wird wie folgt bezeichnet: ASC , DESC
            ASC                 -- aufsteigend
            DESC                -- absteigend
            Die Sortierung bezieht sich auf den Datentyp des Feldes:
                Strings (VARCHARS) werden alphabetisch auf oder absteigend sortiert (a-z | z-a)
                Numbers (INT, DAECIMAL ...) werden numerisch auf oder absteigend sortiert  (0-9 | 9-1)
    */